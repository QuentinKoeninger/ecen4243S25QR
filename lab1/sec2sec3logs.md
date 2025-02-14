   68  git clone --recurse-submodules https://github.com/<QuentinKoeninger>/cvw
   69  git clone --recurse-submodules https://github.com/QuentinKoeninger/cvw
   70  cd cvw
   71  source ./setup.sh
   72  echo $Wally$
   73  a
   74  cd examples/C/hello
   75  make
   76  wsim --sim questa rv64gc --elf hello
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
  120  more history
  121  history --more
  122  history more
  123  more --history
  124  history --help
  125  history ./sec2sec3logs
  126  history -anrw ./sec2sec3logs
  127  history -w ./sec2sec3logs
  128  history > sec2sec3logs
