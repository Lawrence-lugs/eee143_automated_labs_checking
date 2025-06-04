# Usage

To check student works:

1. Turn student logisim into verilog
2. Make sure to be in this directory
3. `source run_simulation.sh <folder path here>`

# Example

`source run_simulation.sh /mnt/c/Users/Lawrence/logisim_evolution_workspace/QUIZON_201513859/`

output:
```log
make: Entering directory '/mnt/c/Users/Lawrence/logisim_evolution_workspace/eee143_automated_labs_checking/lab5_checking/obj_dir'
g++ -Os  -I.  -MMD -I/usr/local/share/verilator/include -I/usr/local/share/verilator/include/vltstd -DVM_COVERAGE=0 -DVM_SC=0 -DVM_TIMING=1 -DVM_TRACE=0 -DVM_TRACE_FST=0 -DVM_TRACE_VCD=0 -faligned-new -fcf-protection=none -Wno-bool-operation -Wno-shadow -Wno-sign-compare -Wno-subobject-linkage -Wno-tautological-compare -Wno-uninitialized -Wno-unused-but-set-parameter -Wno-unused-but-set-variable -Wno-unused-parameter -Wno-unused-variable    -DVL_TIME_CONTEXT   -fcoroutines -c -o verilated.o /usr/local/share/verilator/include/verilated.cpp
g++ -Os  -I.  -MMD -I/usr/local/share/verilator/include -I/usr/local/share/verilator/include/vltstd -DVM_COVERAGE=0 -DVM_SC=0 -DVM_TIMING=1 -DVM_TRACE=0 -DVM_TRACE_FST=0 -DVM_TRACE_VCD=0 -faligned-new -fcf-protection=none -Wno-bool-operation -Wno-shadow -Wno-sign-compare -Wno-subobject-linkage -Wno-tautological-compare -Wno-uninitialized -Wno-unused-but-set-parameter -Wno-unused-but-set-variable -Wno-unused-parameter -Wno-unused-variable    -DVL_TIME_CONTEXT   -fcoroutines -c -o verilated_timing.o /usr/local/share/verilator/include/verilated_timing.cpp
g++ -Os  -I.  -MMD -I/usr/local/share/verilator/include -I/usr/local/share/verilator/include/vltstd -DVM_COVERAGE=0 -DVM_SC=0 -DVM_TIMING=1 -DVM_TRACE=0 -DVM_TRACE_FST=0 -DVM_TRACE_VCD=0 -faligned-new -fcf-protection=none -Wno-bool-operation -Wno-shadow -Wno-sign-compare -Wno-subobject-linkage -Wno-tautological-compare -Wno-uninitialized -Wno-unused-but-set-parameter -Wno-unused-but-set-variable -Wno-unused-parameter -Wno-unused-variable    -DVL_TIME_CONTEXT   -fcoroutines -c -o verilated_threads.o /usr/local/share/verilator/include/verilated_threads.cpp
python3 /usr/local/share/verilator/bin/verilator_includer -DVL_INCLUDE_OPT=include Vtb_main.cpp Vtb_main___024root__DepSet_hb591c31a__0.cpp Vtb_main___024root__DepSet_h77c6ef3c__0.cpp Vtb_main__main.cpp Vtb_main___024root__Slow.cpp Vtb_main___024root__DepSet_hb591c31a__0__Slow.cpp Vtb_main___024root__DepSet_h77c6ef3c__0__Slow.cpp Vtb_main__Syms.cpp > Vtb_main__ALL.cpp
g++ -Os  -I.  -MMD -I/usr/local/share/verilator/include -I/usr/local/share/verilator/include/vltstd -DVM_COVERAGE=0 -DVM_SC=0 -DVM_TIMING=1 -DVM_TRACE=0 -DVM_TRACE_FST=0 -DVM_TRACE_VCD=0 -faligned-new -fcf-protection=none -Wno-bool-operation -Wno-shadow -Wno-sign-compare -Wno-subobject-linkage -Wno-tautological-compare -Wno-uninitialized -Wno-unused-but-set-parameter -Wno-unused-but-set-variable -Wno-unused-parameter -Wno-unused-variable    -DVL_TIME_CONTEXT   -fcoroutines -c -o Vtb_main__ALL.o Vtb_main__ALL.cpp
echo "" > Vtb_main__ALL.verilator_deplist.tmp
g++    verilated.o verilated_timing.o verilated_threads.o Vtb_main__ALL.a    -pthread -lpthread -latomic   -o Vtb_main
rm Vtb_main__ALL.verilator_deplist.tmp
make: Leaving directory '/mnt/c/Users/Lawrence/logisim_evolution_workspace/eee143_automated_labs_checking/lab5_checking/obj_dir'
- V e r i l a t i o n   R e p o r t: Verilator 5.033 devel rev v5.032-59-ge2a6e19ca
- Verilator: Built from 0.304 MB sources in 11 modules, into 0.134 MB in 8 C++ files needing 0.000 MB
- Verilator: Walltime 7.526 s (elab=0.002, cvt=0.029, bld=7.254); cpu 0.070 s on 1 threads; alloced 10.449 MB
Compilation successful, running simulation...
-Info: tb/tb_main.sv:30: $dumpvar ignored, as Verilated without --trace
Starting simulation...
Full score test
Reversed XY test
X test
Y test
Time: 70, RST: 0, PixelX: 0, PixelY: 7
Time: 130, RST: 0, PixelX: 0, PixelY: 6
Time: 190, RST: 0, PixelX: 0, PixelY: 5
Time: 250, RST: 0, PixelX: 0, PixelY: 4
Time: 310, RST: 0, PixelX: 0, PixelY: 3
Time: 370, RST: 0, PixelX: 0, PixelY: 2
Time: 430, RST: 0, PixelX: 0, PixelY: 1
Time: 490, RST: 0, PixelX: 0, PixelY: 0
Time: 550, RST: 0, PixelX: 0, PixelY: 7
Time: 610, RST: 0, PixelX: 0, PixelY: 6
Time: 670, RST: 0, PixelX: 0, PixelY: 6
Time: 730, RST: 0, PixelX: 0, PixelY: 6
Time: 790, RST: 0, PixelX: 0, PixelY: 7
Time: 850, RST: 0, PixelX: 0, PixelY: 0
Time: 910, RST: 0, PixelX: 0, PixelY: 1
Time: 970, RST: 0, PixelX: 0, PixelY: 2
Time: 1030, RST: 0, PixelX: 0, PixelY: 3
Time: 1090, RST: 0, PixelX: 0, PixelY: 4
Time: 1150, RST: 0, PixelX: 0, PixelY: 5
Time: 1210, RST: 0, PixelX: 0, PixelY: 6
Test Failed, pixelX: 000, pixelY: 110
- tb/tb_main.sv:93: Verilog $finish
- S i m u l a t i o n   R e p o r t: Verilator 5.033 devel
- Verilator: $finish at 1us; walltime 0.001 s; speed 1.110 ms/s
- Verilator: cpu 0.001 s on 1 threads; alloced 57 MB
```
