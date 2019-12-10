#include "Chassis.h"

Chassis::Chassis()
{
	L = 2.559;
	b = 1.09;
	h = 0.532;
	c = 1.469;

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
}

void Chassis::update(float deltaTime, float force_x, float force_z, float torque, float* wFL, float* wFR, float* wRL, float* wRR)
{
	float accel_x_local = cos(-orientation) * accel_x - sin(-orientation) * accel_z;
	float accel_z_local = sin(-orientation) * accel_x + cos(-orientation) * accel_z;

	float wF = (c / L) * mass * 10 - (h / L) * mass * accel_x_local;
	float wR = (b / L) * mass * 10 + (h / L) * mass * accel_x_local;

	wFL = wF + accel_z_local * mass * h / 2;
	wFR = wF - accel_z_local * mass * h / 2;
	wRL = wR + accel_z_local * mass * h / 2;
	wRR = wR - accel_z_local * mass * h / 2;

	accel_x = force_x / mass;
	accel_z = force_z / mass;
	vel_x = vel_x + accel_x * deltaTime;
	vel_z = vel_z + accel_z * deltaTime;
	pos_x = pos_x + vel_x * deltaTime;
	pos_z = pos_z + vel_z * deltaTime;

	angularAccel = torque / inertia;
	angularVel = angularVel + torque * deltaTime;
}
