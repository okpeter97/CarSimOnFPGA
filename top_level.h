//wheelsim
void top_level_wheel(float deltaTime,
		float torque,
		float velocity_x,
		float velocity_z,
		float load,
		float steeringAngle,
		float * slipRatio,
		float * slipAngle,
		float * force_x,
		float * force_z,
		float * angularVel);

void top_level_wheelSimWithMass(float deltaTime,
		float initVel,
		float torque,
		float steeringAngle,
		float * slipRatio,
		float * slipAngle,
		float * force_x,
		float * force_z,
		float * vel_x,
		float * angularVel);

//carsim
void top_level_car(float deltaTime,
		float torque,
		float steeringAngle,
		float * pos_x,
		float * pos_z,
		float * vel_x,
		float * vel_y,
		float * orientation);
