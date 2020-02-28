/*#include "Car.h"
#include "hls_math.h"

Car::Car()
{
	force_x = 0;
	force_z = 0;
	torque = 0;
}

void Car::update(float deltaTime, float engine_torque, float steeringAngle, float* pos_x, float* pos_z)
{
	force_x = frontLeft.force_x + frontRight.force_x + rearLeft.force_x + rearRight.force_x;
	force_z = frontLeft.force_z + frontRight.force_z + rearLeft.force_z + rearRight.force_z;

	torque = chassis.b * frontLeft.force_z - frontLeft.force_x * chassis.d / 2 +
			chassis.b * frontRight.force_z - frontRight.force_x * -chassis.d / 2 +
			-chassis.c * rearLeft.force_z - rearLeft.force_x * chassis.e / 2 +
			-chassis.c * rearRight.force_z - rearRight.force_x * -chassis.e / 2;

	float fz = chassis.vel_z - chassis.angularVel * chassis.b;
	float rz = chassis.vel_z + chassis.angularVel * chassis.c;

	float flx = chassis.vel_x + chassis.angularVel * chassis.d / 2;
	float rlx = chassis.vel_x + chassis.angularVel * chassis.d / 2;
	float frx = chassis.vel_x - chassis.angularVel * chassis.e / 2;
	float rrx = chassis.vel_x - chassis.angularVel * chassis.e / 2;

	chassis.update(deltaTime, force_x, force_z, torque);

	frontLeft.update(deltaTime, engine_torque, flx, fz, chassis.wFL, steeringAngle);
	frontRight.update(deltaTime, engine_torque, frx, fz, chassis.wFR, steeringAngle);
	rearLeft.update(deltaTime, engine_torque, rlx, rz, chassis.wRL, 0);
	rearRight.update(deltaTime, engine_torque, rrx, rz, chassis.wRR, 0);

	*pos_x = chassis.pos_x;
	*pos_z = chassis.pos_z;
}
*/
