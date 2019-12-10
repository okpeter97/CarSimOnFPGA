#include "top_level.hpp"
#include "Wheel.hpp"

int top_level(float in, float* out)
{
	Wheel wheel;
	float force_x;
	float force_z;
	wheel.update(1, 1, 5, 0, 1, 0, &force_x, &force_z);

	if (force_x != 0)
	{
		*out = 1;
	}

	return 0;
}
