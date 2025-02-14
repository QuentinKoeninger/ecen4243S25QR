# Introduction

Lab Completed by Quentin Koeninger and Railey Prentice.

This lab was to teach us how to use the Wally environment to simulate a RISC-V computer.
We used different commands to compile both C and asm code, as well as he commands wsim
and spike to run the code. This document contains command histories from sections two
and three, as well as output data from section 3. It also includes instructions for 
running fir1 and fir2.

This document assumes you are in the WALLY environment if you are running or compiling code.

# Command History Section 2

   68  git clone --recurse-submodules https://github.com/<QuentinKoeninger>/cvw
   69  git clone --recurse-submodules https://github.com/QuentinKoeninger/cvw
   70  cd cvw
   71  source ./setup.sh
   72  echo $Wally$
   73  a
   74  cd examples/C/hello
   75  make
   76  wsim --sim questa rv64gc --elf hello

# Command History Section 3

   77  cd $Wally/exapmles/asm/example
   78  cd $WALLY/exapmles/asm/example
   79  cd $WALLY/examples/asm/example
   80  riscv64-unknown-elf-gcc -o example -march=rv32i -mabi=ilp32 -mcmodel=medany \
   81  riscv64-unkonown-elf-gcc -o example -march=rv32i -mabi=ilp32 -mcmodel=medany \ -nostartfiles -T../../link/link.ld example.S
   82  riscv64-unknown-elf-gcc -o example -march=rv32i -mabi=ilp32 -mcmodel=medany \ -nostartfiles -T../../link/link.ld example.S
   83  riscv64-unknown-elf-gcc -o example -march=rv32i -mabi=ilp32 -mcmodel=medany -nostartfiles -T../../link/link.ld example.S
   84  riscv64-unknown-elf-objdump -D example > example.objdump
   85  cat common/test.ld
   86  cat $WALLY/common/test.ld
   87  cd \$WALLY/../ecen4243S25/"lab 1"
   88  cd ..
   89  cd ecen4243S25/
   90  cd "lab 1"
   91  ls
   92  cd lab1
   93  cat common/test.ld
   94  cat Makefile
   95  make
   96  make clean
   97  cd $WALLY/examples/asm/sumtest
   98  make
   99  spike +signature=sumtest.signature.output sumtest
  100  diff sumtest.signature.output sumtest.reference_output
  101  ls
  102  cat sum.S
  103  cat sumtest.signature.output
  104  cat sumtest.reference_output
  105  make sim
  106  cat Makefile
  107  make sim
  108  riscv64-unknown-elf-readelf -a sumtest
  109  cd $Wally/examples/C/sum
  110  cd $WALLY/examples/C/sum
  111  make
  112  spike sum
  113  cat Makefile
  114  wsim --sim questa rv64gc --elf sum
  115  history
  116  cat history
  117  cd \$WALLY/../ecen4243S25/lab1
  118  cd $WALLY/../ecen4243S25/lab1
  119  history

# Outputs from Section 3

Results from compiling and running sum.c.

| Simulation Type | s | mcycle | minstret |
| --- | --- | --- | --- |
| spike | 10 | 31 | 38 |
| wsim | 10 | 80 | 38 |

# fir1 and fir2 Navigation and Running

fir1 and fir2 both contain raw output files, results.md and results2.md respectively, for the commands make sim and make sim2.
To run fir1 or fir2, you can type "make" into the command prompt while in the repective folder (you may have to use make clean
before you can run the command make). Alternatively, you could also use "make sim" or "make sim2". 

"make" runs the compiled fir1.c (called fir1.c in both fir1 and fir2) with spike. "make sim" and "make sim2" runs the compiled 
fir1.c with spike and questa with -O and -O2 optimization respectively.

# fir1 Results

| optimization | Simulation Type | mcycle | minstret |
| --- | --- | --- | --- |
| none | spike | 6552 | 6568 |
| none | wsim | 8886 | 6568 |
| -O | spike | 856 | 863 |
| -O | wsim | 1222 | 863 |
| -O2 | spike | 792 | 797 |
| -O2 | wsim | 943 | 797 |

# fir2 Results

| optimization | Simulation Type | mcycle | minstret |
| --- | --- | --- | --- |
| none | spike | 753 | 769 |
| none | wsim | 1037 | 769 |
| -O | spike | 709 | 716 |
| -O | wsim | 936 | 716 |
| -O2 | spike | 708 | 713 |
| -O2 | wsim | 927 | 713 |