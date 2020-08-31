#include "top_level.h"
#include "Car.h"
#include "WheelWithMass.h"

//wheelsim
void top_level_wheel(float deltaTime,
		float torque,
		float velocity_x,
		float velocity_y,
		float load,
		float steeringAngle,
		float* slipRatio,
		float* slipAngle,
		float* force_x,
		float* force_y,
		float* angularVel)
{
		static Wheel wheel;
		wheel.update(deltaTime, torque, velocity_x, velocity_y, load, steeringAngle);
		*slipRatio = wheel.slipRatio;
		*slipAngle = wheel.slipAngle;
		*force_x = wheel.fx;
		*force_y = wheel.fz;
		*angularVel = wheel.angularVelocity;
}

void top_level_wheelSimWithMass(float deltaTime,
		float initVel,
		float torque,
		float steeringAngle,
		float * slipRatio,
		float * slipAngle,
		float * force_x,
		float * force_y,
		float * vel_x,
		float * angularVel)
{
	static WheelWithMass wheel(initVel);
	wheel.update(deltaTime, torque, steeringAngle);
			*slipRatio = wheel.slipRatio;
			*slipAngle = wheel.slipAngle;
			*force_x = wheel.fx;
			*force_y = wheel.fz;
			*vel_x = wheel.vel_x;
			*angularVel = wheel.angularVelocity;
}


//carsim
void top_level_car(float deltaTime,
		float torque,
		float steeringAngle,
		float* pos_x,
		float* pos_y,
		float* vel_x,
		float* vel_y,
		float* orientation)
{
		static Car car;
		car.update(deltaTime, torque, steeringAngle);
		*pos_x = car.chassis.pos_x;
		*pos_y = car.chassis.pos_z;
		*vel_x = car.chassis.vel_x;
		*vel_y = car.chassis.vel_z;
		*orientation = car.chassis.orientation;
}
