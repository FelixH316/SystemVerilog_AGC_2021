/********************************************
 * Date:       	2021-10-28
 * Author:     	Félix Armenta Aguiñaga
 * Project: 	AGC00_print_class_var
 * File:       	tb.sv
 * Brief:      	Testbench
 ********************************************/

class first;
  bit x = 1'b1;
endclass

module tb();
  first f1; // Name of instance
  
  initial begin
    f1 = new();
    $display("--------------------------");
    $display("The value of the x is %0b", f1.x);
    $display("--------------------------");
  end 
endmodule
