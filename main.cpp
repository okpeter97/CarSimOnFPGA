#include "top_level.h"

/*void wheelsim()
{
	float force_x;
	float force_z;
	float angvel;
	top_level_wheel(0.02, 100, 10, 5, 500, 0, &force_x, &force_z, &angvel);
}*/

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
	wheelWithMass();
	return 0;
}
