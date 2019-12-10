class Chassis
{
public:
	float vel_x;
	float vel_z;
	float pos_x;
	float pos_z;

	float angularVel;
	float orientation;

	Chassis();

	void update(float deltaTime, float force_x, float force_z, float torque, float* wFL, float* wFR, float* wRL, float* wRR);

private:

	float L;
	float b;
	float h;
	float c;
	float mass;
	float inertia;

	float angularAccel;

	float accel_x;
	float accel_z;
};
