#include "top_level.h"

int main()
{
	float force_x;
	float force_z;
	float angvel;
	top_level(0.02, 100, 10, 5, 500, 0, &force_x, &force_z, &angvel);
	return 0;
}
