#include "Wheel.hpp"
#include "Chassis.h"

class Car
{
public:
	Car();

	void update();

private:
	Chassis chassis;

	Wheel frontLeft;
	Wheel frontRight;
	Wheel rearLeft;
	Wheel rearRight;

	float wFL;
	float wFR;
	float wRL;
	float wRR;

	float force_x;
	float force_z;
	float torque;

	float force_x_FL;
	float force_z_FL;

	float force_x_FR;
	float force_z_FR;

	float force_x_RL;
	float force_z_RL;

	float force_x_RR;
	float force_z_RR;
};
