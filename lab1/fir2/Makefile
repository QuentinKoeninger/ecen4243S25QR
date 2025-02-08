TARGET = fir1

$(TARGET).objdump: $(TARGET)
	riscv64-unknown-elf-objdump -S -D $(TARGET) > $(TARGET).objdump
	wsim --sim questa rv64gc --elf $(TARGET)
	spike $(TARGET)
	
$(TARGET): $(TARGET).c Makefile
	riscv64-unknown-elf-gcc -o $(TARGET) -O -gdwarf-2 \
	  -march=rv64gc -mabi=lp64d -mcmodel=medany \
	  -nostdlib -static -lm -fno-tree-loop-distribute-patterns \
	  -Tcommon/test.ld -Icommon \
	  $(TARGET).c common/crt.S common/syscalls.c fir1.S
	  
sim2:	  
	  riscv64-unknown-elf-gcc -o $(TARGET)O2 -O2 -gdwarf-2 \
	  -march=rv64gc -mabi=lp64d -mcmodel=medany \
	  -nostdlib -static -lm -fno-tree-loop-distribute-patterns \
	  -Tcommon/test.ld -Icommon \
	  $(TARGET).c common/crt.S common/syscalls.c fir1.S
	  riscv64-unknown-elf-objdump -S -D $(TARGET)O2 > $(TARGET)O2.objdump
	  wsim --sim questa rv64gc --elf $(TARGET)O2
	  spike $(TARGET)O2
	  
sim:	  
	  riscv64-unknown-elf-gcc -o $(TARGET)O -O -gdwarf-2 \
	  -march=rv64gc -mabi=lp64d -mcmodel=medany \
	  -nostdlib -static -lm -fno-tree-loop-distribute-patterns \
	  -Tcommon/test.ld -Icommon \
	  $(TARGET).c common/crt.S common/syscalls.c fir1.S
	  riscv64-unknown-elf-objdump -S -D $(TARGET)O > $(TARGET)O.objdump
	  wsim --sim questa rv64gc --elf $(TARGET)O
	  spike $(TARGET)O


clean:
	rm -f $(TARGET) $(TARGET).objdump
