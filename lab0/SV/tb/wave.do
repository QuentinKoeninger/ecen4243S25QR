onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /stimulus/clock
add wave -noupdate -radix hexadecimal /stimulus/In
add wave -noupdate -radix hexadecimal /stimulus/reset
add wave -noupdate -radix hexadecimal /stimulus/Out
add wave -noupdate -radix hexadecimal /stimulus/handle3
add wave -noupdate -radix hexadecimal /stimulus/desc3
add wave -noupdate -radix hexadecimal /stimulus/dut/clk
add wave -noupdate -radix hexadecimal /stimulus/dut/reset
add wave -noupdate -radix hexadecimal /stimulus/dut/a
add wave -noupdate -radix hexadecimal /stimulus/dut/y
add wave -noupdate -radix hexadecimal /stimulus/dut/state
add wave -noupdate -radix hexadecimal /stimulus/dut/nextstate
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {58 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {141 ns}
