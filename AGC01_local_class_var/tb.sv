/********************************************
 * Date:       	2021-10-28
 * Author:     	Félix Armenta Aguiñaga
 * Project: 	AGC01_local_class_var
 * File:       	tb.sv
 * Brief:      	Testbench
 ********************************************/

class example;
  local int in_x;
endclass

module tb();
  example f1; // Name of instance
  
  initial begin
    f1 = new();
    f1.in_x = 32	// Debe dar error, a menos que le quitemos local en la linea 4
    #10;
    $display("The value written is %0d", f1.in_x);
  end 
endmodule
