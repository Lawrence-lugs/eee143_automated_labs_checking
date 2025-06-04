`timescale 1ns/1ns

module tb_main();

reg CLK, D;
logic Input_1, Input_2, Input_3;
logic Output_1, Output_2, Output_3;
assign Input_1 = D; // For SR latch
assign Input_2 = D; // For JK latch
assign Input_3 = D; // For T latch

reg [4:0] logisimClockTree;
assign logisimClockTree = {5{CLK}}; // Assuming a single clock tree for simplicity

main u_golden(
    .Input_1(Input_1),
    .Input_2(Input_2),
    .Input_3(Input_3),
    .Output_1(Output_1),
    .Output_2(Output_2),
    .Output_3(Output_3),
    .logisimClockTree0(logisimClockTree)
);

always #5 CLK = ~CLK; // 100 MHz clock

// Waveform generation
initial begin
    $dumpfile("tb_main.vcd");
    $dumpvars(0, tb_main);
end

reg d_test [0:15];
int jk_score, sr_score, t_score;

initial begin

    $display("Starting simulation...");
    CLK = 0;
    
    d_test = {0,1,1,0,0,1,1,0,0,1,1,0,0,1,0,1};
    for (int i = 0; i < 16; i++) begin
        D = d_test[i];
        #10;
        if (Output_1 == d_test[i]) begin
            $display("SR Test %0d Passed, Q_SR: %b", i-8, Output_1);
            sr_score++;
        end else begin
            $display("SR Test %0d Failed, Q_SR: %b", i-8, Output_1);
        end
        if (Output_2 == d_test[i]) begin
            $display("JK Test %0d Passed, Q_JK: %b", i, Output_2);
            jk_score++;
        end else begin
            $display("JK Test %0d Failed, Q_JK: %b", i, Output_2);
        end
        if (Output_3 == d_test[i]) begin
            $display("T Test %0d Passed, Q_T: %b", i-12, Output_3);
            t_score++;
        end else begin
            $display("T Test %0d Failed, Q_T: %b", i-12, Output_3);
        end
    end

    #100;

    // Display final scores
    $display("Final Scores:");
    $display("JK Latch : %0d", jk_score);
    $display("SR Latch : %0d", sr_score);
    $display("T Latch : %0d", t_score);
    $display("Total Score: %0d / 100", (jk_score + sr_score + t_score)*2  + 4);

    $finish();
end

    
endmodule