/********************************************
 * Date:       	2021-10-29
 * Author:     	Félix Armenta Aguiñaga
 * Project: 	AGC06_new_with_params
 * File:       	tb.sv
 * Brief:      	Testbench
 ********************************************/

class example;
  int a;
  function new (int a);
    this.a = a;
  endfunction : new
endclass : example

module tb;
  example e1; // create class handler
  
  initial begin
    e1 = new(34);
    $display("value of a = %0h", e1.a);
  end
endmodule
