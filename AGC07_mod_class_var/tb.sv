/********************************************
 * Date:       	2021-10-29
 * Author:     	Félix Armenta Aguiñaga
 * Project: 	AGC07_mod_class_var
 * File:       	tb.sv
 * Brief:      	Testbench
 ********************************************/

class example;
  bit [7:0] in_data;
  
  function void read(input bit [7:0] in_data);
    this.in_data = in_data;
  endfunction
  
endclass

module tb;
  example e; // create class handler
  
  initial begin
    e = new();
    e.read(9'b1010_0011);
    #10;
    $display("Value of in_data member: %0b", e.in_data);
  end
  
endmodule
