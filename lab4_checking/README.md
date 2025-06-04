# Usage

To check student works:

1. Turn student logisim into verilog
2. Make sure to be in this directory
3. `source run_simulation.sh <folder path here>`

# Example

`source run_simulation.sh /mnt/c/Users/Lawrence/logisim_evolution_workspace/QUIZON_201513859/`

output:
```log
g++ -Os  -I.  -MMD -I/usr/local/share/verilator/include -I/usr/local/share/verilator/include/vltstd -DVM_COVERAGE=0 -DVM_SC=0 -DVM_TIMING=1 -DVM_TRACE=1 -DVM_TRACE_FST=0 -DVM_TRACE_VCD=1 -faligned-new -fcf-protection=none -Wno-bool-operation -Wno-shadow -Wno-sign-compare -Wno-subobject-linkage -Wno-tautological-compare -Wno-uninitialized -Wno-unused-but-set-parameter -Wno-unused-but-set-variable -Wno-unused-parameter -Wno-unused-variable    -DVL_TIME_CONTEXT   -fcoroutines -c -o verilated.o /usr/local/share/verilator/include/verilated.cpp
g++ -Os  -I.  -MMD -I/usr/local/share/verilator/include -I/usr/local/share/verilator/include/vltstd -DVM_COVERAGE=0 -DVM_SC=0 -DVM_TIMING=1 -DVM_TRACE=1 -DVM_TRACE_FST=0 -DVM_TRACE_VCD=1 -faligned-new -fcf-protection=none -Wno-bool-operation -Wno-shadow -Wno-sign-compare -Wno-subobject-linkage -Wno-tautological-compare -Wno-uninitialized -Wno-unused-but-set-parameter -Wno-unused-but-set-variable -Wno-unused-parameter -Wno-unused-variable    -DVL_TIME_CONTEXT   -fcoroutines -c -o verilated_vcd_c.o /usr/local/share/verilator/include/verilated_vcd_c.cpp
g++ -Os  -I.  -MMD -I/usr/local/share/verilator/include -I/usr/local/share/verilator/include/vltstd -DVM_COVERAGE=0 -DVM_SC=0 -DVM_TIMING=1 -DVM_TRACE=1 -DVM_TRACE_FST=0 -DVM_TRACE_VCD=1 -faligned-new -fcf-protection=none -Wno-bool-operation -Wno-shadow -Wno-sign-compare -Wno-subobject-linkage -Wno-tautological-compare -Wno-uninitialized -Wno-unused-but-set-parameter -Wno-unused-but-set-variable -Wno-unused-parameter -Wno-unused-variable    -DVL_TIME_CONTEXT   -fcoroutines -c -o verilated_timing.o /usr/local/share/verilator/include/verilated_timing.cpp
g++ -Os  -I.  -MMD -I/usr/local/share/verilator/include -I/usr/local/share/verilator/include/vltstd -DVM_COVERAGE=0 -DVM_SC=0 -DVM_TIMING=1 -DVM_TRACE=1 -DVM_TRACE_FST=0 -DVM_TRACE_VCD=1 -faligned-new -fcf-protection=none -Wno-bool-operation -Wno-shadow -Wno-sign-compare -Wno-subobject-linkage -Wno-tautological-compare -Wno-uninitialized -Wno-unused-but-set-parameter -Wno-unused-but-set-variable -Wno-unused-parameter -Wno-unused-variable    -DVL_TIME_CONTEXT   -fcoroutines -c -o verilated_threads.o /usr/local/share/verilator/include/verilated_threads.cpp
python3 /usr/local/share/verilator/bin/verilator_includer -DVL_INCLUDE_OPT=include Vtb_main.cpp Vtb_main___024root__DepSet_hb591c31a__0.cpp Vtb_main___024root__DepSet_h77c6ef3c__0.cpp Vtb_main__main.cpp Vtb_main__Trace__0.cpp Vtb_main___024root__Slow.cpp Vtb_main___024root__DepSet_hb591c31a__0__Slow.cpp Vtb_main___024root__DepSet_h77c6ef3c__0__Slow.cpp Vtb_main__Syms.cpp Vtb_main__Trace__0__Slow.cpp Vtb_main__TraceDecls__0__Slow.cpp > Vtb_main__ALL.cpp
g++ -Os  -I.  -MMD -I/usr/local/share/verilator/include -I/usr/local/share/verilator/include/vltstd -DVM_COVERAGE=0 -DVM_SC=0 -DVM_TIMING=1 -DVM_TRACE=1 -DVM_TRACE_FST=0 -DVM_TRACE_VCD=1 -faligned-new -fcf-protection=none -Wno-bool-operation -Wno-shadow -Wno-sign-compare -Wno-subobject-linkage -Wno-tautological-compare -Wno-uninitialized -Wno-unused-but-set-parameter -Wno-unused-but-set-variable -Wno-unused-parameter -Wno-unused-variable    -DVL_TIME_CONTEXT   -fcoroutines -c -o Vtb_main__ALL.o Vtb_main__ALL.cpp
echo "" > Vtb_main__ALL.verilator_deplist.tmp
g++    verilated.o verilated_vcd_c.o verilated_timing.o verilated_threads.o Vtb_main__ALL.a    -pthread -lpthread -latomic   -o Vtb_main
rm Vtb_main__ALL.verilator_deplist.tmp
make: Leaving directory '/mnt/c/Users/Lawrence/logisim_evolution_workspace/eee143_automated_labs_checking/lab4_checking/obj_dir'
- V e r i l a t i o n   R e p o r t: Verilator 5.033 devel rev v5.032-59-ge2a6e19ca
- Verilator: Built from 0.441 MB sources in 15 modules, into 0.156 MB in 11 C++ files needing 0.000 MB
- Verilator: Walltime 10.217 s (elab=0.001, cvt=0.031, bld=9.865); cpu 0.107 s on 1 threads; alloced 10.145 MB
Compilation successful, running simulation...
Starting simulation...
SR Test -8 Passed, Q_SR: 0
JK Test 0 Passed, Q_JK: 0
T Test -12 Passed, Q_T: 0
SR Test -7 Passed, Q_SR: 1
JK Test 1 Passed, Q_JK: 1
T Test -11 Passed, Q_T: 1
SR Test -6 Passed, Q_SR: 1
JK Test 2 Passed, Q_JK: 1
T Test -10 Passed, Q_T: 1
SR Test -5 Passed, Q_SR: 0
JK Test 3 Passed, Q_JK: 0
T Test -9 Passed, Q_T: 0
SR Test -4 Passed, Q_SR: 0
JK Test 4 Passed, Q_JK: 0
T Test -8 Passed, Q_T: 0
SR Test -3 Passed, Q_SR: 1
JK Test 5 Passed, Q_JK: 1
T Test -7 Passed, Q_T: 1
SR Test -2 Passed, Q_SR: 1
JK Test 6 Passed, Q_JK: 1
T Test -6 Passed, Q_T: 1
SR Test -1 Passed, Q_SR: 0
JK Test 7 Passed, Q_JK: 0
T Test -5 Passed, Q_T: 0
SR Test 0 Passed, Q_SR: 0
JK Test 8 Passed, Q_JK: 0
T Test -4 Passed, Q_T: 0
SR Test 1 Passed, Q_SR: 1
JK Test 9 Passed, Q_JK: 1
T Test -3 Passed, Q_T: 1
SR Test 2 Passed, Q_SR: 1
JK Test 10 Passed, Q_JK: 1
T Test -2 Passed, Q_T: 1
SR Test 3 Passed, Q_SR: 0
JK Test 11 Passed, Q_JK: 0
T Test -1 Passed, Q_T: 0
SR Test 4 Passed, Q_SR: 0
JK Test 12 Passed, Q_JK: 0
T Test 0 Passed, Q_T: 0
SR Test 5 Passed, Q_SR: 1
JK Test 13 Passed, Q_JK: 1
T Test 1 Passed, Q_T: 1
SR Test 6 Passed, Q_SR: 0
JK Test 14 Passed, Q_JK: 0
T Test 2 Passed, Q_T: 0
SR Test 7 Passed, Q_SR: 1
JK Test 15 Passed, Q_JK: 1
T Test 3 Passed, Q_T: 1
Final Scores:
JK Latch : 16
SR Latch : 16
T Latch : 16
Total Score: 100 / 100
- tb/tb_main.sv:74: Verilog $finish
- S i m u l a t i o n   R e p o r t: Verilator 5.033 devel
- Verilator: $finish at 265ns; walltime 0.003 s; speed 147.665 us/s
- Verilator: cpu 0.002 s on 1 threads; alloced 57 MB
```
