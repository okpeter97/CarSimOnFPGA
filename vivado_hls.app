<project xmlns="com.autoesl.autopilot.project" name="CarSimOnFPGA" top="top_level_wheelSimWithMass">
    <files>
        <file name="../main.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
        <file name="CarSimOnFPGA/Car.cpp" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="CarSimOnFPGA/Chassis.cpp" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="CarSimOnFPGA/Wheel.cpp" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="CarSimOnFPGA/WheelWithMass.cpp" sc="0" tb="false" cflags="" blackbox="false"/>
        <file name="CarSimOnFPGA/top_level.cpp" sc="0" tb="false" cflags="" blackbox="false"/>
    </files>
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" clean="true" csimMode="2" lastCsimMode="2"/>
    </Simulation>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
        <solution name="solution2" status="inactive"/>
    </solutions>
</project>

