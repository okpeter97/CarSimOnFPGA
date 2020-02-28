class Wheel
{
private:
	float radius;
	float inertia;
	float angularVelocity;

public:
	Wheel();

	void update(float deltaTime,
			float torque,
			float velocity_x,
			float velocity_z,
			float load,
			float steeringAngle,
			float * force_x,
			float * force_z);
};
