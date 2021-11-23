/********************************************
 * Date:       	2021-10-29
 * Author:     	Félix Armenta Aguiñaga
 * Project: 	AGC05_return_method
 * File:       	tb.sv
 * Brief:      	Testbench
 ********************************************/

class example;
  function bit [8:0] add (input bit[7:0] in_a, input bit [7:0] in_b);
    return in_a + in_b;
  endfunction
endclass

module tb;
  example e; // create class handler
  bit [8:0] result;
  
  initial begin
    e = new();
    result = e.add(8'h14, 8'h20);
    #10;
    $display("Result: %0h", result);
  end
endmodule
