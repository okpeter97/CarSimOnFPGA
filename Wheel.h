class Wheel
{
private:
	float radius;
	float inertia;

public:
	float angularVelocity;
	float force_x;
	float force_z;
	float slipRatio;
	float slipAngle;

	Wheel();

	void update(float deltaTime,
			float torque,
			float velocity_x,
			float velocity_z,
			float load,
			float steeringAngle);
};
