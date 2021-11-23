/********************************************
 * Date:       	2021-10-29
 * Author:     	Félix Armenta Aguiñaga
 * Project: 	AGC03_polymorphism
 * File:       	virtual_class.sv
 * Brief:      	Testbench
 ********************************************/

class base_class;
  virtual function void display;
    $display("Inside base_class");
  endfunction
endclass

class extended_class extends base_class;
  function void display;
    $display("Inside exteded class");
  endfunction  
endclass

module virtual_class;
  initial begin
    base_class b_c;
    extended_class e_c;
    
    e_c = new();
    b_c = e_c;
    b_c.display();
  end
endmodule
