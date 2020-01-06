#include "hls_math.h"
#include "Wheel.h"


Wheel::Wheel()
{
	radius = 0.3;
	inertia = 5;
	angularVelocity = 0;
	force_x = 0;
	force_z = 0;
}

void Wheel::update(float deltaTime,
			float torque,
			float velocity_x,
			float velocity_z,
			float load,
			float steeringAngle)
{
	float cos_msteer = cos(-steeringAngle);
	float sin_msteer = sin(-steeringAngle);
	float cos_steer = cos(steeringAngle);
	float sin_steer = sin(steeringAngle);

	float vel_x_temp = cos_steer * velocity_x - sin_steer * velocity_z;
	float vel_z_temp = sin_steer * velocity_x + cos_steer * velocity_z;

	float slipRatio;
	float slipAngle;

	if (velocity_x != 0)
	{
		slipRatio = (angularVelocity * radius - vel_x_temp) / abs(vel_x_temp);
		slipAngle = atan2(vel_z_temp, vel_x_temp);
	}
	else
	{
		slipRatio = 0;
		if (vel_z_temp >= 0)
		{
			slipAngle = 90;
		}
		else
		{
			slipAngle = -90;
		}
	}

	float r = slipRatio / 1.9;
	float a = slipAngle / 2.7;
	float s = sqrt(r * r + a * a);

	float long_input = 10 * s * 1.9;
	float lat_input = 0.714 * s * 2.7;
	float longForce = sin(1.9 * atan(long_input - 0.97 * (long_input - atan(long_input))));
	float latForce = -sin(1.4 * atan((1 - -0.2) * lat_input + -0.2 * atan(lat_input)));

	float x = load * (r / s) * longForce;
	float z = load * (a / s) * latForce;
	force_x = cos_steer * x - sin_steer * z;
	force_z = sin_steer * x + cos_steer * z;

	angularVelocity = angularVelocity + ((torque - force_x * radius) / inertia) * deltaTime;
}
