/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : threeBitAcc                                                  **
 **                                                                          **
 *****************************************************************************/

module threeBitAcc( CLK,
                    RST,
                    count,
                    value );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input CLK;
   input RST;
   input count;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [2:0] value;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [2:0] s_logisimBus11;
   wire       s_logisimNet0;
   wire       s_logisimNet1;
   wire       s_logisimNet10;
   wire       s_logisimNet2;
   wire       s_logisimNet3;
   wire       s_logisimNet4;
   wire       s_logisimNet5;
   wire       s_logisimNet6;
   wire       s_logisimNet7;
   wire       s_logisimNet8;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet1 = RST;
   assign s_logisimNet3 = count;
   assign s_logisimNet4 = CLK;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign value = s_logisimBus11[2:0];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet3),
               .input2(s_logisimBus11[0]),
               .result(s_logisimNet6));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_2 (.input1(s_logisimNet3),
               .input2(s_logisimBus11[0]),
               .input3(s_logisimBus11[1]),
               .result(s_logisimNet7));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimBus11[0]),
               .input2(s_logisimNet3),
               .result(s_logisimNet8));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimBus11[1]),
               .input2(s_logisimNet6),
               .result(s_logisimNet9));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimBus11[2]),
               .input2(s_logisimNet7),
               .result(s_logisimNet10));

   D_FLIPFLOP #(.invertClockEnable(0))
      Q0 (.clock(s_logisimNet4),
          .d(s_logisimNet8),
          .preset(1'b0),
          .q(s_logisimBus11[0]),
          .qBar(),
          .reset(s_logisimNet1),
          .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      Q1 (.clock(s_logisimNet4),
          .d(s_logisimNet9),
          .preset(1'b0),
          .q(s_logisimBus11[1]),
          .qBar(),
          .reset(s_logisimNet1),
          .tick(1'b1));

   D_FLIPFLOP #(.invertClockEnable(0))
      Q2 (.clock(s_logisimNet4),
          .d(s_logisimNet10),
          .preset(1'b0),
          .q(s_logisimBus11[2]),
          .qBar(),
          .reset(s_logisimNet1),
          .tick(1'b1));


endmodule
