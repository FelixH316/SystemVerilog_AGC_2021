/********************************************
 * Date:       	2021-10-29
 * Author:     	Félix Armenta Aguiñaga
 * Project: 	AGC08_getter
 * File:       	tb.sv
 * Brief:      	Testbench
 ********************************************/

class example;
  local int in_x = 32;
  
  function int give();
    return in_x;
  endfunction
  
endclass

module tb;
  example e1; // create class handler
  int value;
  
  initial begin
    e1 = new();
    value = e1.give();
    #10;
    $display("The value written is %0d:", value);
  end
  
endmodule
