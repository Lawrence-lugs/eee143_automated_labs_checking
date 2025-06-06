`timescale 1ns/1ns

module tb_main();

reg [6:0] KEY;
reg CLK, RST;
wire [63:0] Display;
wire WriteMode;
integer keycount;

// Lowercase letters
localparam [6:0] a = 7'h61; // 'a'
localparam [6:0] b = 7'h62; // 'b'
localparam [6:0] c = 7'h63; // 'c'
localparam [6:0] d = 7'h64; // 'd'
localparam [6:0] e = 7'h65; // 'e'
localparam [6:0] f = 7'h66; // 'f'
localparam [6:0] g = 7'h67; // 'g'
localparam [6:0] h = 7'h68; // 'h'
localparam [6:0] i = 7'h69; // 'i'
localparam [6:0] j = 7'h6A; // 'j'
localparam [6:0] k = 7'h6B; // 'k'
localparam [6:0] l = 7'h6C; // 'l'
localparam [6:0] m = 7'h6D; // 'm'
localparam [6:0] n = 7'h6E; // 'n'
localparam [6:0] o = 7'h6F; // 'o'
localparam [6:0] p = 7'h70; // 'p'
localparam [6:0] q = 7'h71; // 'q'
localparam [6:0] r = 7'h72; // 'r'
localparam [6:0] s = 7'h73; // 's'
localparam [6:0] t = 7'h74; // 't'
localparam [6:0] u = 7'h75; // 'u'
localparam [6:0] v = 7'h76; // 'v'
localparam [6:0] w = 7'h77; // 'w'
localparam [6:0] x = 7'h78; // 'x'
localparam [6:0] y = 7'h79; // 'y'
localparam [6:0] z = 7'h7A; // 'z'

// Uppercase letters
localparam [6:0] A = 7'h41; // 'A'
localparam [6:0] B = 7'h42; // 'B'
localparam [6:0] C = 7'h43; // 'C'
localparam [6:0] D = 7'h44; // 'D'
localparam [6:0] E = 7'h45; // 'E'
localparam [6:0] F = 7'h46; // 'F'
localparam [6:0] G = 7'h47; // 'G'
localparam [6:0] H = 7'h48; // 'H'
localparam [6:0] I = 7'h49; // 'I'
localparam [6:0] J = 7'h4A; // 'J'
localparam [6:0] K = 7'h4B; // 'K'
localparam [6:0] L = 7'h4C; // 'L'
localparam [6:0] M = 7'h4D; // 'M'
localparam [6:0] N = 7'h4E; // 'N'
localparam [6:0] O = 7'h4F; // 'O'
localparam [6:0] P = 7'h50; // 'P'
localparam [6:0] Q = 7'h51; // 'Q'
localparam [6:0] R = 7'h52; // 'R'
localparam [6:0] S = 7'h53; // 'S'
localparam [6:0] T = 7'h54; // 'T'
localparam [6:0] U = 7'h55; // 'U'
localparam [6:0] V = 7'h56; // 'V'
localparam [6:0] W = 7'h57; // 'W'
localparam [6:0] X = 7'h58; // 'X'
localparam [6:0] Y = 7'h59; // 'Y'
localparam [6:0] Z = 7'h5A; // 'Z'

localparam [6:0] space = 7'h20; // ' ' (space)

graphicsController u_golden(
    .CLK(CLK),
    .KEY(KEY),
    .RST(RST),
    .Display(Display),
    .WriteMode(WriteMode)
);

always #5 CLK = ~CLK; // 100 MHz clock

reg [6:0] test [0:19];
initial begin test = {w, d, d, d, w, space, w, d, d, space, w, s, e, space, a, a, s, space, s, s}; end

reg [6:0] wasd_test [0:19];
initial begin
    wasd_test = {s, s, s, s, a, a, a, a, w, w, a, a, a, a, s, s, d, d, d, d};
end

reg [6:0] wasd_write_test [0:19];
initial begin
    wasd_write_test = {s, s, space, s, a, a, space, a, w, w, a, a, a, a, space, s, d, d, d, d};
end

// Waveform generation
initial begin
    $dumpfile("tb_main.vcd");
    $dumpvars(0, tb_main);
end

task do_test();
    input reg [6:0] key_presses [0:19];
    input reg [63:0] expected_display;
    input integer points;
    integer kc;
    #5;
    RST = 1;
    #5;
    RST = 0; // Cycle reset
    for (kc = 0; kc < 20; kc++) begin
        KEY = key_presses[kc];
        #10; // Wait for the clock to process the key press
        KEY = 7'h00; // Release the key
        #50; // Wait for a few clock cycles
        $display("Time: %0t, RST: %b, Display: %h, WriteMode: %b, Key: %h",
            $time, RST, Display, WriteMode, KEY);
    end
    if (Display == expected_display) begin
        $display("Test Passed, Display: %h", Display);
        $display("Score: %d", points);
        $finish;
    end else begin
        $display("Test Failed, Display: %h", Display);
    end
endtask

initial begin

    $display("Starting simulation...");

    // $monitor("Time: %0t, RST: %b, Display: %h, WriteMode: %b, Key: %h",
            //  $time, RST, Display, WriteMode, KEY);

    CLK = 0;
    RST = 0;
        // $display("Time: %0t, RST: %b, Display: %h, WriteMode: %b, Key: %h",
            //  $time, RST, Display, WriteMode, KEY);

    // Full score test - test full functionality
    $display("Full score test");
    test = {w, d, d, d, w, space, w, d, d, space, w, s, e, space, a, a, s, space, s, s};
    do_test(test, 64'h0000000100000000, 100);

    // Full functionality with wrong reset mode
    $display("Full functionality with wrong reset mode test");
    test = {e, w, d, d, d, w, space, w, d, d, space, w, s, e, space, a, a, s, space, s};
    do_test(test, 64'h0000000200000000, 95);

    // No erase test - test writing
    $display("No erase test");
    test = {s, s, space, s, a, a, space, a, w, w, a, a, a, a, space, s, d, d, d, d};
    do_test(test, 64'h4080000000402000, 80);

    // No erase with wrong reset mode
    $display("No erase test with wrong reset mode");
    test = {e, s, s, space, s, a, a, space, a, w, w, a, a, a, a, space, s, d, d, d};
    do_test(test, 64'h4080000040002000, 80);

    // WASD test - test cursor control
    $display("WASD test");
    test = {s, s, s, s, a, a, a, a, w, w, a, a, a, a, s, s, d, d, d, d};
    do_test(test, 64'h0000000010000000, 60);

    // AD test -- test only A and D keys
    $display("AD test");
    test = {a, a, a, a, d, d, d, d, a, a, a, a, d, d, d, d, a, a, a, a};
    do_test(test, 64'h0000000001000000, 25);

    // WS test -- test only W and S keys
    $display("WS test");
    test = {s, s, s, s, w, w, w, w, s, s, s, s, w, w, w, w, s, s, s, s};
    do_test(test, 64'h1000000000000000, 25);

    #100;

    $finish();
end

    
endmodule