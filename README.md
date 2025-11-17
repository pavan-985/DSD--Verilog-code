# DSD--Verilog-code
All Gates:

<h5>Code:</h5>
<pre>
  `timescale 1ns / 1ps
  module All_gates(
 input a, b,
    output and_y, or_y, not_a, nand_y, nor_y, xor_y,xnor_y
    );
    
 assign and_y  = a & b;
assign or_y   = a | b;
assign not_a  = ~a;
assign nand_y = ~(a & b);
assign nor_y  = ~(a | b);
assign xor_y  = a ^ b;
assign xnor_y  = ~(a ^ b);    
endmodule
</pre>

<h5>Testbench Code:</h5>
<pre>
  `timescale 1ns / 1ps
  module All_gates_tb(

    );
    reg a, b;
wire and_y, or_y, not_a, nand_y, nor_y, xor_y;


All_gates dut(a, b, and_y, or_y, not_a, nand_y, nor_y, xor_y,xnor_y);

initial begin
    a = 0; b = 0;
    #10;

    a = 0; b = 1;
    #10;

    a = 1; b = 0;
    #10;

    a = 1; b = 1;
    #10;

    $stop;     
end
endmodule

</pre>

Simultion:<img width="629" height="482" alt="image" src="https://github.com/user-attachments/assets/419e6bea-d592-4935-96cf-cb34a7a83ec6" />

Schmetic: <img width="560" height="534" alt="image" src="https://github.com/user-attachments/assets/3fe6896b-cca4-4339-8801-418b02c72d60" />

