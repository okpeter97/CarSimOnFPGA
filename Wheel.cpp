#include "hls_math.h"
#include "Wheel.hpp"

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
			float * force_x,
			float * force_z)
{
#pragma HLS INLINE
	float vel_x_temp = cos(steeringAngle) * velocity_x - sin(steeringAngle) * velocity_z;
	float vel_z_temp = sin(steeringAngle) * velocity_x + cos(steeringAngle) * velocity_z;

	float slipRatio;
	float slipAngle;

	if (vel_x_temp != 0)
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

	float longForce = 1 * sin(1.9 * atan(10 * s * 1.9 - 0.97 * (10 * s * 1.9 - atan(10 * s * 1.9))));
	float latForce = -1 * sin(1.4 * atan(0.714 * (1 - -0.2) * s * 2.7 + -0.2 * atan(0.714 * s * 2.7)));

	*force_x = load * (r / s) * longForce;
	*force_z = load * (a / s) * latForce;

	angularVelocity = angularVelocity + ((torque - *force_x * radius) / inertia) * deltaTime;
}
