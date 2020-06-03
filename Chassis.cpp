/*#include "Chassis.h"
#include "hls_math.h"

Chassis::Chassis()
{
	L = 2.559;
	b = 1.09;
	h = 0.532;
	c = 1.469;
	d = 1.467;
	e = 1.461;

	mass = 1441.2;
	inertia = 2620;

	angularAccel = 0;
	angularVel = 0;
	orientation = 0;

	accel_x = 0;
	accel_z = 0;

	vel_x = 0;
	vel_z = 0;

	pos_x = 0;
	pos_z = 0;

	wFL = 0;
	wFR = 0;
	wRL = 0;
	wRR = 0;
}

void Chassis::update(float deltaTime, float force_x, float force_z, float torque, )
{
	float wF = (c / L) * mass * 10 - (h / L) * mass * accel_x;
	float wR = (b / L) * mass * 10 + (h / L) * mass * accel_x;

	wFL = wF + accel_z * mass * h / 2;
	wFR = wF - accel_z * mass * h / 2;
	wRL = wR + accel_z * mass * h / 2;
	wRR = wR - accel_z * mass * h / 2;

	accel_x = force_x / mass;
	accel_z = force_z / mass;*
	vel_x = vel_x + accel_x * deltaTime;
	vel_z = vel_z + accel_z * deltaTime;

	float vel_x_temp = cos(orientation) * vel_x - sin(orientation) * vel_z;
	float vel_z_temp = sin(orientation) * vel_x + cos(orientation) * vel_z;
	pos_x = pos_x + vel_x_temp * deltaTime;
	pos_z = pos_z + vel_z_temp * deltaTime;

	angularAccel = torque / inertia;
	angularVel = angularVel + torque * deltaTime;
	orientation = orientation + angularVel * deltaTime;
}*/
