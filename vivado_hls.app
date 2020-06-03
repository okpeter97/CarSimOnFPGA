<project xmlns="com.autoesl.autopilot.project" name="CarSimOnFPGA" top="top_level">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" clean="true" csimMode="2" lastCsimMode="2"/>
    </Simulation>
    <files xmlns="">
        <file name="../main.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="CarSimOnFPGA/Car.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="CarSimOnFPGA/Chassis.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="CarSimOnFPGA/Wheel.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="CarSimOnFPGA/top_level.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

