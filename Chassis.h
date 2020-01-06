class Chassis
{
public:
	float vel_x;
	float vel_z;
	float pos_x;
	float pos_z;

	float L;
	float b;
	float h;
	float c;
	float d;
	float e;

	float wFL;
	float wFR;
	float wRL;
	float wRR;

	float angularVel;
	float orientation;

	Chassis();

	void update(float deltaTime, float force_x, float force_z, float torque);

private:
	float mass;
	float inertia;

	float angularAccel;

	float accel_x;
	float accel_z;
};
