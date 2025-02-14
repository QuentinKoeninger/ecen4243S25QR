# Run with -O optimization
(cvw) 11-comp-arch-f@CEAT-ENDV350-11L:~/Desktop/cvw/examples/C/fir2$ make sim
riscv64-unknown-elf-gcc -o fir1O -O -gdwarf-2 \
  -march=rv64gc -mabi=lp64d -mcmodel=medany \
  -nostdlib -static -lm -fno-tree-loop-distribute-patterns \
  -Tcommon/test.ld -Icommon \
  fir1.c common/crt.S common/syscalls.c fir1.S
riscv64-unknown-elf-objdump -S -D fir1O > fir1O.objdump
wsim --sim questa rv64gc --elf fir1O
Config=rv64gc tests=None sim=questa gui=False args='' params='' define=''
Running Questa with command: cd $WALLY/sim/questa; MTI_VCO_MODE=64  vsim -c -do "do wally.do rv64gc None testbench --args \" +ElfFile=/home/11-comp-arch-f/Desktop/cvw/examples/C/fir2/fir1O\" --params \" \" --define \" \" "
Support of the MGLS_LICENSE_FILE and LM_LICENSE_FILE licensing environment variables will be discontinued starting with the 2025.1 release. Please update to using the SALT_LICENSE_SERVER variable.
Please contact Siemens EDA Customer Support (https://support.sw.siemens.com/) for assistance.
Reading pref.tcl
...
Start time: 18:21:18 on Feb 07,2025
//  Questa Sim-64
//  Version 2024.3_2 linux_x86_64 Nov 25 2024
//
// Unpublished work. Copyright 2024 Siemens
//
// This material contains trade secrets or otherwise confidential information
// owned by Siemens Industry Software Inc. or its affiliates (collectively,
// "SISW"), or its licensors. Access to and use of this information is strictly
// limited as set forth in the Customer's applicable agreements with SISW.
//
// This material may not be copied, distributed, or otherwise disclosed outside
// of the Customer's facilities without the express written permission of SISW,
// and may not be used in any way not expressly authorized by SISW.
//
Loading sv_std.std
Loading work.cvw(fast)
Loading work.testbench_sv_unit(fast)
Loading work.testbench(fast)
Loading work.instrTrackerTB(fast)
Loading work.instrNameDecTB(fast)
Loading work.watchdog(fast)
Loading work.tlbcamline(fast)
Loading work.pmpadrdec(fast)
Loading work.cacheway(fast)
Loading work.cacheway(fast__1)
Processing /home/11-comp-arch-f/Desktop/cvw/examples/C/fir2/fir1O with --bit-width 64
y[0] = 4fad3f2f
y[1] = 627c6236
y[2] = 4fad3f32
y[3] = 1e6f0e17
y[4] = e190f1eb
y[5] = b052c0ce
y[6] = 9d839dc6
y[7] = b052c0cb
y[8] = e190f1e6
y[9] = 1e6f0e12
y[10] = 4fad3f2f
y[11] = 627c6236
y[12] = 4fad3f32
y[13] = 1e6f0e17
y[14] = e190f1eb
y[15] = b052c0ce
y[16] = 9d839dc6
mcycle = 936
minstret = 716
Single Elf file tests are not signatured verified.
** Note: $stop    : /home/11-comp-arch-f/Desktop/cvw/testbench/testbench.sv(439)
   Time: 1005650 ns  Iteration: 1  Instance: /testbench
Break at /home/11-comp-arch-f/Desktop/cvw/testbench/testbench.sv line 439
Stopped at /home/11-comp-arch-f/Desktop/cvw/testbench/testbench.sv line 439
End time: 18:21:21 on Feb 07,2025, Elapsed time: 0:00:03
Errors: 0, Warnings: 0
spike fir1O
y[0] = 4fad3f2f
y[1] = 627c6236
y[2] = 4fad3f32
y[3] = 1e6f0e17
y[4] = e190f1eb
y[5] = b052c0ce
y[6] = 9d839dc6
y[7] = b052c0cb
y[8] = e190f1e6
y[9] = 1e6f0e12
y[10] = 4fad3f2f
y[11] = 627c6236
y[12] = 4fad3f32
y[13] = 1e6f0e17
y[14] = e190f1eb
y[15] = b052c0ce
y[16] = 9d839dc6
mcycle = 709
minstret = 716

# Run with -O2 optimization
(cvw) 11-comp-arch-f@CEAT-ENDV350-11L:~/Desktop/cvw/examples/C/fir2$ make sim2
riscv64-unknown-elf-gcc -o fir1O2 -O2 -gdwarf-2 \
  -march=rv64gc -mabi=lp64d -mcmodel=medany \
  -nostdlib -static -lm -fno-tree-loop-distribute-patterns \
  -Tcommon/test.ld -Icommon \
  fir1.c common/crt.S common/syscalls.c fir1.S
riscv64-unknown-elf-objdump -S -D fir1O2 > fir1O2.objdump
wsim --sim questa rv64gc --elf fir1O2
Config=rv64gc tests=None sim=questa gui=False args='' params='' define=''
Running Questa with command: cd $WALLY/sim/questa; MTI_VCO_MODE=64  vsim -c -do "do wally.do rv64gc None testbench --args \" +ElfFile=/home/11-comp-arch-f/Desktop/cvw/examples/C/fir2/fir1O2\" --params \" \" --define \" \" "
Support of the MGLS_LICENSE_FILE and LM_LICENSE_FILE licensing environment variables will be discontinued starting with the 2025.1 release. Please update to using the SALT_LICENSE_SERVER variable.
Please contact Siemens EDA Customer Support (https://support.sw.siemens.com/) for assistance.
Reading pref.tcl
...
//  Questa Sim-64
//  Version 2024.3_2 linux_x86_64 Nov 25 2024
//
// Unpublished work. Copyright 2024 Siemens
//
// This material contains trade secrets or otherwise confidential information
// owned by Siemens Industry Software Inc. or its affiliates (collectively,
// "SISW"), or its licensors. Access to and use of this information is strictly
// limited as set forth in the Customer's applicable agreements with SISW.
//
// This material may not be copied, distributed, or otherwise disclosed outside
// of the Customer's facilities without the express written permission of SISW,
// and may not be used in any way not expressly authorized by SISW.
//
Loading sv_std.std
Loading work.cvw(fast)
Loading work.testbench_sv_unit(fast)
Loading work.testbench(fast)
Loading work.instrTrackerTB(fast)
Loading work.instrNameDecTB(fast)
Loading work.watchdog(fast)
Loading work.tlbcamline(fast)
Loading work.pmpadrdec(fast)
Loading work.cacheway(fast)
Loading work.cacheway(fast__1)
Processing /home/11-comp-arch-f/Desktop/cvw/examples/C/fir2/fir1O2 with --bit-width 64
y[0] = 4fad3f2f
y[1] = 627c6236
y[2] = 4fad3f32
y[3] = 1e6f0e17
y[4] = e190f1eb
y[5] = b052c0ce
y[6] = 9d839dc6
y[7] = b052c0cb
y[8] = e190f1e6
y[9] = 1e6f0e12
y[10] = 4fad3f2f
y[11] = 627c6236
y[12] = 4fad3f32
y[13] = 1e6f0e17
y[14] = e190f1eb
y[15] = b052c0ce
y[16] = 9d839dc6
mcycle = 927
minstret = 713
Single Elf file tests are not signatured verified.
** Note: $stop    : /home/11-comp-arch-f/Desktop/cvw/testbench/testbench.sv(439)
   Time: 1005010 ns  Iteration: 1  Instance: /testbench
Break at /home/11-comp-arch-f/Desktop/cvw/testbench/testbench.sv line 439
Stopped at /home/11-comp-arch-f/Desktop/cvw/testbench/testbench.sv line 439
End time: 18:21:59 on Feb 07,2025, Elapsed time: 0:00:03
Errors: 0, Warnings: 0
spike fir1O2
y[0] = 4fad3f2f
y[1] = 627c6236
y[2] = 4fad3f32
y[3] = 1e6f0e17
y[4] = e190f1eb
y[5] = b052c0ce
y[6] = 9d839dc6
y[7] = b052c0cb
y[8] = e190f1e6
y[9] = 1e6f0e12
y[10] = 4fad3f2f
y[11] = 627c6236
y[12] = 4fad3f32
y[13] = 1e6f0e17
y[14] = e190f1eb
y[15] = b052c0ce
y[16] = 9d839dc6
mcycle = 708
minstret = 713

