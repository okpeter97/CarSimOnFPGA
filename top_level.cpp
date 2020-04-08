#include "top_level.h"
#include "Wheel.h"

void top_level(float deltaTime,
		float torque,
		float velocity_x,
		float velocity_z,
		float load,
		float steeringAngle,
		float* force_x,
		float* force_z,
		float* angularVel)
{
		Wheel wheel;
		wheel.update(deltaTime, torque, velocity_x, velocity_z, load, steeringAngle, force_x, force_z, angularVel);
}
