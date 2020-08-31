#include "top_level.h"

void wheelsim()
{
	float deltaTime = 0.02;
	float torque = 100;
	float velocity_x = 5;
	float velocity_y = 5;
	float load = 500;
	float steeringAngle = 0;
	float slipRatio;
	float slipAngle;
	float force_x;
	float force_y;
	float angularVel = 0;
	while (angularVel < 10)
	{
		top_level_wheel(deltaTime, torque, velocity_x, velocity_y, load, steeringAngle, &slipRatio, &slipAngle, &force_x, &force_y, &angularVel);
	}
}

/*void carsim()
{
	float pos_x;
	float pos_z;
	float vel_x = 0;
	while (vel_x < 10)
	{
		top_level(0.02, 100, 0, &pos_x, &pos_z, &vel_x);
	}
}*/

void wheelWithMass()
{
	float deltaTime = 0.02;
	float initVel = 0;
	float torque = 100;
	float steeringAngle = 0;
	float slipRatio;
	float slipAngle;
	float force_x;
	float force_y;
	float vel_x = 0;
	float angularVel;
	while (vel_x < 10)
	{
		top_level_wheelSimWithMass(deltaTime, initVel, torque, steeringAngle, &slipRatio, &slipAngle, &force_x, &force_y, &vel_x, &angularVel);
	}
}

int main()
{
	wheelsim();
	return 0;
}
