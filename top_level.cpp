#include "top_level.h"
#include "Car.h"

void top_level(float en, float* pos_x, float* pos_z)
{

	if (en)
	{
		Car car;
		car.update(0.02, 100, 0, pos_x, pos_z);
	}
}
