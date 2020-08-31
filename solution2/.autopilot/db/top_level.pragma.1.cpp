# 1 "CarSimOnFPGA/top_level.cpp"
# 1 "CarSimOnFPGA/top_level.cpp" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 152 "<built-in>" 3
# 1 "<command line>" 1







# 1 "C:/Xilinx/Vivado/2019.1/common/technology/autopilot\\etc/autopilot_ssdm_op.h" 1
# 157 "C:/Xilinx/Vivado/2019.1/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
extern "C" {






    void _ssdm_op_IfRead(...) __attribute__ ((nothrow));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow));


    void _ssdm_StreamRead(...) __attribute__ ((nothrow));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite(...) __attribute__ ((nothrow));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow));




    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow));

    void _ssdm_op_Wait(...) __attribute__ ((nothrow));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow));

    void _ssdm_op_Return(...) __attribute__ ((nothrow));


    void _ssdm_op_SpecSynModule(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPort(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow));




    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow));

    void _ssdm_RegionBegin(...) __attribute__ ((nothrow));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow));

    void _ssdm_Unroll(...) __attribute__ ((nothrow));
    void _ssdm_UnrollRegion(...) __attribute__ ((nothrow));

    void _ssdm_InlineAll(...) __attribute__ ((nothrow));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow));
    void _ssdm_Inline(...) __attribute__ ((nothrow));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow));

    void _ssdm_SpecStream(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecStable(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecStableContent(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecPipoDepth(...) __attribute__ ((nothrow));

    void _ssdm_SpecExpr(...) __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow));

    void _ssdm_SpecDependence(...) __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow));

    void _ssdm_DataPack(...) __attribute__ ((nothrow));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow));

    void __xilinx_ip_top(...) __attribute__ ((nothrow));


}
# 9 "<command line>" 2
# 1 "<built-in>" 2
# 1 "CarSimOnFPGA/top_level.cpp" 2
# 1 "CarSimOnFPGA/top_level.h" 1

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


void top_level_car(float deltaTime,
  float torque,
  float steeringAngle,
  float * pos_x,
  float * pos_z,
  float * vel_x,
  float * vel_y,
  float * orientation);
# 2 "CarSimOnFPGA/top_level.cpp" 2
# 1 "CarSimOnFPGA/Car.h" 1
# 1 "CarSimOnFPGA/Wheel.h" 1
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
 float fx;
 float fz;

 Wheel();

 void update(float deltaTime,
   float torque,
   float velocity_x,
   float velocity_z,
   float load,
   float steeringAngle);
};
# 2 "CarSimOnFPGA/Car.h" 2
# 1 "CarSimOnFPGA/Chassis.h" 1
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
# 3 "CarSimOnFPGA/Car.h" 2

class Car
{
public:
 Chassis chassis;

 Wheel frontLeft;
 Wheel frontRight;
 Wheel rearLeft;
 Wheel rearRight;

 Car();

 void update(float deltaTime, float engine_torque, float steeringAngle);

private:
 float force_x;
 float force_z;
 float torque;
};
# 3 "CarSimOnFPGA/top_level.cpp" 2
# 1 "CarSimOnFPGA/WheelWithMass.h" 1
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
# 4 "CarSimOnFPGA/top_level.cpp" 2


void top_level_wheel(float deltaTime,
  float torque,
  float velocity_x,
  float velocity_y,
  float load,
  float steeringAngle,
  float* slipRatio,
  float* slipAngle,
  float* force_x,
  float* force_y,
  float* angularVel)
{
  static Wheel wheel;
  wheel.update(deltaTime, torque, velocity_x, velocity_y, load, steeringAngle);
  *slipRatio = wheel.slipRatio;
  *slipAngle = wheel.slipAngle;
  *force_x = wheel.fx;
  *force_y = wheel.fz;
  *angularVel = wheel.angularVelocity;
}

void top_level_wheelSimWithMass(float deltaTime,
  float initVel,
  float torque,
  float steeringAngle,
  float * slipRatio,
  float * slipAngle,
  float * force_x,
  float * force_y,
  float * vel_x,
  float * angularVel)
{
 static WheelWithMass wheel(initVel);
 wheel.update(deltaTime, torque, steeringAngle);
   *slipRatio = wheel.slipRatio;
   *slipAngle = wheel.slipAngle;
   *force_x = wheel.fx;
   *force_y = wheel.fz;
   *vel_x = wheel.vel_x;
   *angularVel = wheel.angularVelocity;
}



void top_level_car(float deltaTime,
  float torque,
  float steeringAngle,
  float* pos_x,
  float* pos_y,
  float* vel_x,
  float* vel_y,
  float* orientation)
{
  static Car car;
  car.update(deltaTime, torque, steeringAngle);
  *vel_x = car.chassis.vel_x;
}
