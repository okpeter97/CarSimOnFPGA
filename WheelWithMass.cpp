#include "hls_math.h"
#include "WheelWithMass.h"


WheelWithMass::WheelWithMass(float initVel)
{
	mass = 500;
	radius = 0.3;
	inertia = 5;

	slipRatio = 0;
	slipAngle = 0;

	fx = 0;
	fz = 0;

	force_x = 0;
	force_z = 0;

	accel_x = 0;
	pos_x = 0;

	this->initVel = initVel;
	vel_x = initVel;
	vel_z = 0;
	angularVelocity = initVel * radius;
}

void WheelWithMass::update(float deltaTime,
			float torque,
			float steeringAngle)
{
	float cos_steer = cos(steeringAngle);
	float sin_steer = sin(steeringAngle);

	float vel_x_local = cos_steer * vel_x - sin_steer * vel_z;
	float vel_z_local = sin_steer * vel_x + cos_steer * vel_z;

	slipRatio = angularVelocity * 0.0001;
	slipAngle = 0;

	if (vel_x_local != 0)
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

	fx = 0, fz = 0;
	if (s)
	{
		fx = 5000 * (r / s) * longForce;
		fz = 5000 * (a / s) * latForce;
	}

	angularVelocity = angularVelocity + ((torque - fx * radius) / inertia) * deltaTime;

	force_x = cos_steer * fx + sin_steer * fz;
	force_z = -sin_steer * fx + cos_steer * fz;

	accel_x = fx / mass;
	vel_x = vel_x + accel_x * deltaTime;
	pos_x = pos_x + vel_x * deltaTime;
}
