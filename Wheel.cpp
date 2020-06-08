#include "hls_math.h"
#include "Wheel.h"


Wheel::Wheel()
{
	radius = 0.3;
	inertia = 5;
	angularVelocity = 0;
}

void Wheel::update(float deltaTime,
			float torque,
			float velocity_x,
			float velocity_z,
			float load,
			float steeringAngle,
			float* force_x,
			float* force_z,
			float* angularVel)
{
	float cos_steer = cos(steeringAngle);
	float sin_steer = sin(steeringAngle);

	float vel_x_local = cos_steer * velocity_x - sin_steer * velocity_z;
	float vel_z_local = sin_steer * velocity_x + cos_steer * velocity_z;

	float slipRatio = 0;
	float slipAngle = 0;

	if (velocity_x != 0)
	{
		slipRatio = (angularVelocity * radius - vel_x_local) / abs(vel_x_local);
		slipAngle = atan(vel_z_local / vel_x_local);
	}
	else
	{
		if (vel_z_local > 0)
		{
			slipAngle = 90;
		}
		if (vel_z_local < 0)
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

	float x = 0, z = 0;
	if (s)
	{
		x = load * (r / s) * longForce;
		z = load * (a / s) * latForce;
	}

	angularVelocity = angularVelocity + ((torque - x * radius) / inertia) * deltaTime;

	*force_x = cos_steer * x + sin_steer * z;
	*force_z = -sin_steer * x + cos_steer * z;
	*angularVel = angularVelocity;
}
