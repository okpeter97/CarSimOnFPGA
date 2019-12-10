#include "Car.hpp"

Car::Car()
{
	wFL = 0;
	wFR = 0;
	wRL = 0;
	wRR = 0;

	force_x = 0;
	force_z = 0;
	torque = 0;

	force_x_FL = 0;
	force_z_FL = 0;
	force_x_FR = 0;
	force_z_FR = 0;
	force_x_RL = 0;
	force_z_RL = 0;
	force_x_RR = 0;
	force_z_RR = 0;
}

void Car::update(float deltaTime, float engine_torque, float steeringAngle)
{
	chassis.update(deltaTime, force_x, force_z, torque, &wFL, &wFR, &wRL, &wRR);

	frontLeft.update(deltaTime, torque, velocity_x, velocity_z, wFL, steeringAngle, &force_x_FL, &force_z_FL);
	frontRight.update(deltaTime, torque, velocity_x, velocity_z, wFR, -steeringAngle, &force_x_FR, &force_z_FR);
	rearLeft.update(deltaTime, torque, velocity_x, velocity_z, wRL, 0, &force_x_RL, &force_z_RL);
	rearRight.update(deltaTime, torque, velocity_x, velocity_z, wRR, 0, &force_x_RR, &force_z_RR);
}
