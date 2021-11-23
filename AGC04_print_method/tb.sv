/********************************************
 * Date:       	2021-10-29
 * Author:     	Félix Armenta Aguiñaga
 * Project: 	AGC04_print_method
 * File:       	tb.sv
 * Brief:      	Testbench
 ********************************************/

class example;
  bit [7:0] in_data = 8'b1010_0011;
  function void run();
    $display("Value of data member: %d", in_data);
  endfunction
endclass

module tb;
  example e; // create class handler
  
  initial begin
    e = new();
    e.run();
  end
endmodule
