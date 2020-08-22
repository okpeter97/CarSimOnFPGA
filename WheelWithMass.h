class WheelWithMass
{
private:
	float mass;
	float radius;
	float inertia;

public:
	float angularVelocity;
	float force_x;
	float force_z;
	float fx;
	float fz;
	float slipRatio;
	float slipAngle;

	float initVel;

	float accel_x;
	float pos_x;

	float vel_x;
	float vel_z;

	WheelWithMass(float initVel);

	void update(float deltaTime,
			float torque,
			float steeringAngle);
};
