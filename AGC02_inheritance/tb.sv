/********************************************
 * Date:       	2021-10-28
 * Author:     	Félix Armenta Aguiñaga
 * Project: 	AGC02_inheritance
 * File:       	tb.sv
 * Brief:      	Testbench
 ********************************************/

class father;
  int in_x = 12; //local int in_x = 12; // as commented, it doesn't work
endclass

class child extends father;
  int in_y = 15;
endclass

module tb();
  child c1;
  
  initial begin
    c1 = new();
    #10;
    $display("The value of in_x and in_y inside child class is %0d: and %0d", c1.in_x, c1.in_y);
  end
endmodule