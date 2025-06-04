/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : graphicsController                                           **
 **                                                                          **
 *****************************************************************************/

module graphicsController( CLK,
                           Display,
                           KEY,
                           RST,
                           WriteMode );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       CLK;
   input [6:0] KEY;
   input       RST;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [63:0] Display;
   output        WriteMode;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [2:0]  s_logisimBus10;
   wire [2:0]  s_logisimBus15;
   wire [63:0] s_logisimBus16;
   wire [2:0]  s_logisimBus2;
   wire [2:0]  s_logisimBus20;
   wire [2:0]  s_logisimBus26;
   wire [2:0]  s_logisimBus30;
   wire [2:0]  s_logisimBus34;
   wire [2:0]  s_logisimBus36;
   wire [63:0] s_logisimBus37;
   wire [2:0]  s_logisimBus4;
   wire [2:0]  s_logisimBus41;
   wire [63:0] s_logisimBus42;
   wire [6:0]  s_logisimBus43;
   wire [2:0]  s_logisimBus44;
   wire [63:0] s_logisimBus45;
   wire [2:0]  s_logisimBus47;
   wire [2:0]  s_logisimBus49;
   wire [2:0]  s_logisimBus5;
   wire [63:0] s_logisimBus52;
   wire [63:0] s_logisimBus53;
   wire [2:0]  s_logisimBus64;
   wire [63:0] s_logisimBus65;
   wire [1:0]  s_logisimBus66;
   wire [2:0]  s_logisimBus67;
   wire [6:0]  s_logisimBus68;
   wire [6:0]  s_logisimBus69;
   wire [6:0]  s_logisimBus70;
   wire [6:0]  s_logisimBus71;
   wire [6:0]  s_logisimBus72;
   wire [6:0]  s_logisimBus73;
   wire [2:0]  s_logisimBus74;
   wire [2:0]  s_logisimBus75;
   wire [2:0]  s_logisimBus76;
   wire [2:0]  s_logisimBus77;
   wire [2:0]  s_logisimBus78;
   wire [2:0]  s_logisimBus79;
   wire [2:0]  s_logisimBus80;
   wire [2:0]  s_logisimBus81;
   wire [2:0]  s_logisimBus82;
   wire [2:0]  s_logisimBus83;
   wire        s_logisimNet0;
   wire        s_logisimNet1;
   wire        s_logisimNet11;
   wire        s_logisimNet12;
   wire        s_logisimNet13;
   wire        s_logisimNet14;
   wire        s_logisimNet17;
   wire        s_logisimNet18;
   wire        s_logisimNet19;
   wire        s_logisimNet21;
   wire        s_logisimNet22;
   wire        s_logisimNet23;
   wire        s_logisimNet24;
   wire        s_logisimNet25;
   wire        s_logisimNet27;
   wire        s_logisimNet28;
   wire        s_logisimNet29;
   wire        s_logisimNet3;
   wire        s_logisimNet31;
   wire        s_logisimNet32;
   wire        s_logisimNet33;
   wire        s_logisimNet35;
   wire        s_logisimNet38;
   wire        s_logisimNet39;
   wire        s_logisimNet40;
   wire        s_logisimNet46;
   wire        s_logisimNet48;
   wire        s_logisimNet50;
   wire        s_logisimNet51;
   wire        s_logisimNet54;
   wire        s_logisimNet55;
   wire        s_logisimNet56;
   wire        s_logisimNet57;
   wire        s_logisimNet58;
   wire        s_logisimNet59;
   wire        s_logisimNet6;
   wire        s_logisimNet60;
   wire        s_logisimNet61;
   wire        s_logisimNet62;
   wire        s_logisimNet63;
   wire        s_logisimNet7;
   wire        s_logisimNet8;
   wire        s_logisimNet84;
   wire        s_logisimNet85;
   wire        s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus43[6:0] = KEY;
   assign s_logisimNet0       = RST;
   assign s_logisimNet85      = CLK;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Display   = s_logisimBus45[63:0];
   assign WriteMode = s_logisimNet55;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus68[6:0]  =  {3'b110, 4'h5};


   // Constant
   assign  s_logisimBus69[6:0]  =  {3'b010, 4'h0};


   // Constant
   assign  s_logisimBus70[6:0]  =  {3'b111, 4'h7};


   // Constant
   assign  s_logisimBus71[6:0]  =  {3'b110, 4'h1};


   // Constant
   assign  s_logisimBus72[6:0]  =  {3'b111, 4'h3};


   // Constant
   assign  s_logisimBus73[6:0]  =  {3'b110, 4'h4};


   // Constant
   assign  s_logisimBus10[2:0]  =  3'b001;


   // Constant
   assign  s_logisimBus34[2:0]  =  3'b001;


   // Constant
   assign  s_logisimBus44[2:0]  =  3'b001;


   // Constant
   assign  s_logisimBus49[2:0]  =  3'b001;


   // Constant
   assign  s_logisimBus36[2:0]  =  3'b000;


   // Constant
   assign  s_logisimBus26[2:0]  =  3'b111;


   // Constant
   assign  s_logisimBus76[2:0]  =  3'b000;


   // Constant
   assign  s_logisimBus77[2:0]  =  3'b111;


   // Constant
   assign  s_logisimBus78[2:0]  =  3'b111;


   // Constant
   assign  s_logisimBus79[2:0]  =  3'b000;


   // Constant
   assign  s_logisimBus2[2:0]  =  3'b000;


   // Constant
   assign  s_logisimBus41[2:0]  =  3'b111;


   // Constant
   assign  s_logisimBus80[2:0]  =  3'b111;


   // Constant
   assign  s_logisimBus81[2:0]  =  3'b000;


   // Constant
   assign  s_logisimBus82[2:0]  =  3'b000;


   // Constant
   assign  s_logisimBus83[2:0]  =  3'b111;


   // NOT Gate
   assign s_logisimBus52 = ~s_logisimBus53;

   // NOT Gate
   assign s_logisimNet54 = ~s_logisimNet55;

   // NOT Gate
   assign s_logisimNet56 = ~s_logisimNet23;

   // NOT Gate
   assign s_logisimNet58 = ~s_logisimNet8;

   // NOT Gate
   assign s_logisimNet60 = ~s_logisimNet33;

   // NOT Gate
   assign s_logisimNet61 = ~s_logisimNet24;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   OR_GATE_BUS #(.BubblesMask(2'b00),
                 .NrOfBits(64))
      GATES_1 (.input1(s_logisimBus65[63:0]),
               .input2(s_logisimBus53[63:0]),
               .result(s_logisimBus45[63:0]));

   AND_GATE_BUS #(.BubblesMask(2'b00),
                  .NrOfBits(64))
      GATES_2 (.input1(s_logisimBus65[63:0]),
               .input2(s_logisimBus52[63:0]),
               .result(s_logisimBus16[63:0]));

   OR_GATE_BUS #(.BubblesMask(2'b00),
                 .NrOfBits(64))
      GATES_3 (.input1(s_logisimBus65[63:0]),
               .input2(s_logisimBus53[63:0]),
               .result(s_logisimBus37[63:0]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet46),
               .input2(s_logisimNet54),
               .result(s_logisimBus66[1]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet46),
               .input2(s_logisimNet55),
               .result(s_logisimBus66[0]));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet59),
               .input2(s_logisimNet56),
               .result(s_logisimNet48));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet57),
               .input2(s_logisimNet17),
               .result(s_logisimNet19));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet57),
               .input2(s_logisimNet58),
               .result(s_logisimNet27));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_9 (.input1(s_logisimNet59),
               .input2(s_logisimNet40),
               .result(s_logisimNet28));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_10 (.input1(s_logisimNet63),
                .input2(s_logisimNet60),
                .result(s_logisimNet12));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_11 (.input1(s_logisimNet62),
                .input2(s_logisimNet61),
                .result(s_logisimNet38));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_12 (.input1(s_logisimNet62),
                .input2(s_logisimNet51),
                .result(s_logisimNet39));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_13 (.input1(s_logisimNet63),
                .input2(s_logisimNet29),
                .result(s_logisimNet14));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_14 (.input1(s_logisimNet25),
                .input2(s_logisimNet7),
                .result(s_logisimBus67[1]));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_15 (.input1(s_logisimNet9),
                .input2(s_logisimNet7),
                .result(s_logisimBus67[0]));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_16 (.input1(s_logisimNet13),
                .input2(s_logisimNet22),
                .result(s_logisimBus64[1]));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_17 (.input1(s_logisimNet18),
                .input2(s_logisimNet22),
                .result(s_logisimBus64[0]));

   Multiplexer_bus_8 #(.nrOfBits(3))
      PLEXERS_18 (.enable(1'b1),
                  .muxIn_0(s_logisimBus74[2:0]),
                  .muxIn_1(s_logisimBus36[2:0]),
                  .muxIn_2(s_logisimBus4[2:0]),
                  .muxIn_3(s_logisimBus20[2:0]),
                  .muxIn_4(s_logisimBus26[2:0]),
                  .muxIn_5(3'd0),
                  .muxIn_6(3'd0),
                  .muxIn_7(3'd0),
                  .muxOut(s_logisimBus30[2:0]),
                  .sel(s_logisimBus64[2:0]));

   Multiplexer_bus_4 #(.nrOfBits(64))
      PLEXERS_19 (.enable(1'b1),
                  .muxIn_0(s_logisimBus65[63:0]),
                  .muxIn_1(s_logisimBus37[63:0]),
                  .muxIn_2(s_logisimBus16[63:0]),
                  .muxIn_3(64'd0),
                  .muxOut(s_logisimBus42[63:0]),
                  .sel(s_logisimBus66[1:0]));

   Multiplexer_bus_8 #(.nrOfBits(3))
      PLEXERS_20 (.enable(1'b1),
                  .muxIn_0(s_logisimBus75[2:0]),
                  .muxIn_1(s_logisimBus2[2:0]),
                  .muxIn_2(s_logisimBus47[2:0]),
                  .muxIn_3(s_logisimBus15[2:0]),
                  .muxIn_4(s_logisimBus41[2:0]),
                  .muxIn_5(3'd0),
                  .muxIn_6(3'd0),
                  .muxIn_7(3'd0),
                  .muxOut(s_logisimBus5[2:0]),
                  .sel(s_logisimBus67[2:0]));

   Comparator #(.nrOfBits(7),
                .twosComplement(1))
      ARITH_21 (.aEqualsB(s_logisimNet50),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus43[6:0]),
                .dataB(s_logisimBus68[6:0]));

   Comparator #(.nrOfBits(7),
                .twosComplement(1))
      ARITH_22 (.aEqualsB(s_logisimNet46),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus43[6:0]),
                .dataB(s_logisimBus69[6:0]));

   Comparator #(.nrOfBits(7),
                .twosComplement(1))
      ARITH_23 (.aEqualsB(s_logisimNet63),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus43[6:0]),
                .dataB(s_logisimBus70[6:0]));

   Comparator #(.nrOfBits(7),
                .twosComplement(1))
      ARITH_24 (.aEqualsB(s_logisimNet59),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus43[6:0]),
                .dataB(s_logisimBus71[6:0]));

   Comparator #(.nrOfBits(7),
                .twosComplement(1))
      ARITH_25 (.aEqualsB(s_logisimNet62),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus43[6:0]),
                .dataB(s_logisimBus72[6:0]));

   Comparator #(.nrOfBits(7),
                .twosComplement(1))
      ARITH_26 (.aEqualsB(s_logisimNet57),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus43[6:0]),
                .dataB(s_logisimBus73[6:0]));

   Adder #(.extendedBits(4),
           .nrOfBits(3))
      ARITH_27 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus74[2:0]),
                .dataB(s_logisimBus10[2:0]),
                .result(s_logisimBus4[2:0]));

   Subtractor #(.extendedBits(4),
                .nrOfBits(3))
      ARITH_28 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus74[2:0]),
                .dataB(s_logisimBus34[2:0]),
                .result(s_logisimBus20[2:0]));

   Adder #(.extendedBits(4),
           .nrOfBits(3))
      ARITH_29 (.carryIn(1'b0),
                .carryOut(),
                .dataA(s_logisimBus75[2:0]),
                .dataB(s_logisimBus44[2:0]),
                .result(s_logisimBus47[2:0]));

   Subtractor #(.extendedBits(4),
                .nrOfBits(3))
      ARITH_30 (.borrowIn(1'b0),
                .borrowOut(),
                .dataA(s_logisimBus75[2:0]),
                .dataB(s_logisimBus49[2:0]),
                .result(s_logisimBus15[2:0]));

   Comparator #(.nrOfBits(3),
                .twosComplement(1))
      ARITH_31 (.aEqualsB(s_logisimNet23),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus75[2:0]),
                .dataB(s_logisimBus76[2:0]));

   Comparator #(.nrOfBits(3),
                .twosComplement(1))
      ARITH_32 (.aEqualsB(s_logisimNet17),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus75[2:0]),
                .dataB(s_logisimBus77[2:0]));

   Comparator #(.nrOfBits(3),
                .twosComplement(1))
      ARITH_33 (.aEqualsB(s_logisimNet8),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus75[2:0]),
                .dataB(s_logisimBus78[2:0]));

   Comparator #(.nrOfBits(3),
                .twosComplement(1))
      ARITH_34 (.aEqualsB(s_logisimNet40),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus75[2:0]),
                .dataB(s_logisimBus79[2:0]));

   Comparator #(.nrOfBits(3),
                .twosComplement(1))
      ARITH_35 (.aEqualsB(s_logisimNet33),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus74[2:0]),
                .dataB(s_logisimBus80[2:0]));

   Comparator #(.nrOfBits(3),
                .twosComplement(1))
      ARITH_36 (.aEqualsB(s_logisimNet24),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus74[2:0]),
                .dataB(s_logisimBus81[2:0]));

   Comparator #(.nrOfBits(3),
                .twosComplement(1))
      ARITH_37 (.aEqualsB(s_logisimNet51),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus74[2:0]),
                .dataB(s_logisimBus82[2:0]));

   Comparator #(.nrOfBits(3),
                .twosComplement(1))
      ARITH_38 (.aEqualsB(s_logisimNet29),
                .aGreaterThanB(),
                .aLessThanB(),
                .dataA(s_logisimBus74[2:0]),
                .dataB(s_logisimBus83[2:0]));

   T_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_39 (.clock(s_logisimNet85),
                 .preset(1'b0),
                 .q(),
                 .qBar(s_logisimNet55),
                 .reset(s_logisimNet0),
                 .t(s_logisimNet84),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_40 (.clock(s_logisimNet85),
                 .d(s_logisimNet50),
                 .preset(1'b0),
                 .q(s_logisimNet84),
                 .qBar(),
                 .reset(1'b0),
                 .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(64))
      R1 (.clock(s_logisimNet85),
          .clockEnable(1'b1),
          .d(s_logisimBus42[63:0]),
          .q(s_logisimBus65[63:0]),
          .reset(s_logisimNet0),
          .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(3))
      RX (.clock(s_logisimNet85),
          .clockEnable(1'b1),
          .d(s_logisimBus5[2:0]),
          .q(s_logisimBus75[2:0]),
          .reset(s_logisimNet0),
          .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(3))
      RY (.clock(s_logisimNet85),
          .clockEnable(1'b1),
          .d(s_logisimBus30[2:0]),
          .q(s_logisimBus74[2:0]),
          .reset(s_logisimNet0),
          .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_44 (.clock(s_logisimNet85),
                 .d(s_logisimNet19),
                 .preset(1'b0),
                 .q(s_logisimNet9),
                 .qBar(),
                 .reset(1'b0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_45 (.clock(s_logisimNet85),
                 .d(s_logisimNet27),
                 .preset(1'b0),
                 .q(s_logisimNet25),
                 .qBar(),
                 .reset(1'b0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_46 (.clock(s_logisimNet85),
                 .d(s_logisimNet48),
                 .preset(1'b0),
                 .q(s_logisimNet7),
                 .qBar(),
                 .reset(1'b0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_47 (.clock(s_logisimNet85),
                 .d(s_logisimNet28),
                 .preset(1'b0),
                 .q(s_logisimBus67[2]),
                 .qBar(),
                 .reset(1'b0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_48 (.clock(s_logisimNet85),
                 .d(s_logisimNet38),
                 .preset(1'b0),
                 .q(s_logisimNet22),
                 .qBar(),
                 .reset(1'b0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_49 (.clock(s_logisimNet85),
                 .d(s_logisimNet39),
                 .preset(1'b0),
                 .q(s_logisimBus64[2]),
                 .qBar(),
                 .reset(1'b0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_50 (.clock(s_logisimNet85),
                 .d(s_logisimNet14),
                 .preset(1'b0),
                 .q(s_logisimNet18),
                 .qBar(),
                 .reset(1'b0),
                 .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_51 (.clock(s_logisimNet85),
                 .d(s_logisimNet12),
                 .preset(1'b0),
                 .q(s_logisimNet13),
                 .qBar(),
                 .reset(1'b0),
                 .tick(1'b1));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   cursorDecoder   cursorDecoder_1 (.X(s_logisimBus75[2:0]),
                                    .Y(s_logisimBus74[2:0]),
                                    .cursorDisplay(s_logisimBus53[63:0]));

endmodule
