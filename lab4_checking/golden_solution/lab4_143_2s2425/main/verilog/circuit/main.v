/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : main                                                         **
 **                                                                          **
 *****************************************************************************/

module main( Input_1,
             Input_2,
             Input_3,
             Output_1,
             Output_2,
             Output_3,
             logisimClockTree0 );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       Input_1;
   input       Input_2;
   input       Input_3;
   input [4:0] logisimClockTree0;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output Output_1;
   output Output_2;
   output Output_3;

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

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** All clock generator connections are defined here                           **
   *******************************************************************************/
   assign s_logisimNet2 = logisimClockTree0[0];

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet0 = Input_1;
   assign s_logisimNet1 = Input_3;
   assign s_logisimNet6 = Input_2;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Output_1 = s_logisimNet3;
   assign Output_2 = s_logisimNet5;
   assign Output_3 = s_logisimNet4;

   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   dffButSR   dffButSR_1 (.CLK(s_logisimNet2),
                          .D(s_logisimNet0),
                          .Q(s_logisimNet3),
                          .logisimClockTree0(logisimClockTree0));

   dffButJK   dffButJK_1 (.CLK(s_logisimNet2),
                          .D(s_logisimNet6),
                          .Q(s_logisimNet5),
                          .logisimClockTree0(logisimClockTree0));

   dffbutT   dffbutT_1 (.CLK(s_logisimNet2),
                        .D(s_logisimNet1),
                        .Q(s_logisimNet4),
                        .logisimClockTree0(logisimClockTree0));

endmodule
