/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : udlrTranslation                                              **
 **                                                                          **
 *****************************************************************************/

module udlrTranslation( A,
                        B,
                        C,
                        D,
                        Down,
                        Left,
                        Right,
                        Up );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input A;
   input B;
   input C;
   input D;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output Down;
   output Left;
   output Right;
   output Up;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_logisimNet0;
   wire s_logisimNet1;
   wire s_logisimNet2;
   wire s_logisimNet3;
   wire s_logisimNet4;
   wire s_logisimNet5;
   wire s_logisimNet6;
   wire s_logisimNet7;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet0 = D;
   assign s_logisimNet2 = C;
   assign s_logisimNet4 = B;
   assign s_logisimNet6 = A;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Down  = s_logisimNet1;
   assign Left  = s_logisimNet3;
   assign Right = s_logisimNet5;
   assign Up    = s_logisimNet7;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b01))
      GATES_1 (.input1(s_logisimNet6),
               .input2(s_logisimNet4),
               .result(s_logisimNet3));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet6),
               .input2(s_logisimNet4),
               .result(s_logisimNet5));

   AND_GATE #(.BubblesMask(2'b01))
      GATES_3 (.input1(s_logisimNet2),
               .input2(s_logisimNet0),
               .result(s_logisimNet7));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet2),
               .input2(s_logisimNet0),
               .result(s_logisimNet1));


endmodule
