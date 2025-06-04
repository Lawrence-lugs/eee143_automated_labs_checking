/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : logisimTopLevelShell                                         **
 **                                                                          **
 *****************************************************************************/

module logisimTopLevelShell( fpgaGlobalClock );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input fpgaGlobalClock;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire       s_Input_1;
   wire       s_Input_2;
   wire       s_Input_3;
   wire       s_Output_1;
   wire       s_Output_2;
   wire       s_Output_3;
   wire       s_fpgaTick;
   wire [4:0] s_logisimClockTree0;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** All signal adaptations are performed here                                  **
   *******************************************************************************/
   assign s_Input_1 = 1'b0;
   assign s_Input_2 = 1'b0;
   assign s_Input_3 = 1'b0;

   /*******************************************************************************
   ** The clock tree components are defined here                                 **
   *******************************************************************************/
   logisimTickGenerator #(.nrOfBits(31),
                          .reloadValue(2147483647))
      BASE_0 (.FPGAClock(fpgaGlobalClock),
              .FPGATick(s_fpgaTick));

   LogisimClockComponent #(.highTicks(1),
                           .lowTicks(1),
                           .nrOfBits(1),
                           .phase(1))
      BASE_1 (.clockBus(s_logisimClockTree0),
              .clockTick(s_fpgaTick),
              .globalClock(fpgaGlobalClock));

   /*******************************************************************************
   ** The toplevel component is connected here                                   **
   *******************************************************************************/
   main   CIRCUIT_0 (.Input_1(s_Input_1),
                     .Input_2(s_Input_2),
                     .Input_3(s_Input_3),
                     .Output_1(s_Output_1),
                     .Output_2(s_Output_2),
                     .Output_3(s_Output_3),
                     .logisimClockTree0(s_logisimClockTree0));
endmodule
