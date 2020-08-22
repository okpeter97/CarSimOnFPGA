#include "Wheel.h"
#include "Chassis.h"

class Car
{
public:
	Chassis chassis;

	Wheel frontLeft;
	Wheel frontRight;
	Wheel rearLeft;
	Wheel rearRight;

	Car();

	void update(float deltaTime, float engine_torque, float steeringAngle);

private:
	float force_x;
	float force_z;
	float torque;
};
