This is the almost completed Lab2 code for Quentin Koeninger and Railey Prentice

We were able to successfully design our riscvsingle module. Our code successfully ran test_hw.memfile and test_hw2.memfile. The completed hdl we ran is located in the hdl folder (not the hdl2 folder).

Included in this directory is riscvsingle.sv that was placed on our desktop to be Sythesized and Implemented in Vivado. Also inlcuded in this directory is our final attempt at getting our implementation to function correctly, final_capture.ila.

The primary difference between the simulation and implementation is that the simulation implements a different version of the top module than the implementation. The top modules are similar, but not exactly the same. The primary difference is that the top module for the implementation does not instantiate the dmem module inside of its self, unlike the software implementation. We did end up instantiating memcontroller.sv in our simulation to try and test if tehre was some issue with our implementation of the MemStrobe and PCReady signals.

Our implemented design seems to somewhat work. It currently seems to run instructions, but the ui does not display instructions or memory outputs correctly. We can tell it is running some sort of instructions in the background since it clearly shifts PC values in accordance of instruction type-you can tell the implementation will try to store and load data due to the PC value not changing on the clock cycle-however it still fails to display any useful data. We have been trying to resolve the issue but failed to do so by the project deadline.

One not is that memfile.dat is overwritten with the instructions from test_hw2.memfile. This was an attempt to solve the issue of the instruction count chnaging but nothing else changing.

There is also a folder called DesktopBackup that had all the resulting Vivado files from impementation.



