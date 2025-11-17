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

------------------------------------------------------------------------------------------------------------------------------

Boolean Expression:

<h5>Code:</h5>
<pre>
  `timescale 1ns / 1ps
 \module bollean_exp(
        input A, B, C,
    output exp_1,exp_2,exp_3
    );
    assign exp_1 =(~A & B) |(B & ~C) |(A & C);
    assign exp_2=(~A & ~B &  C) |(~A &  B &  C) |( A & ~B &  C);
    assign exp_3 =((A | B | C) & (A | ~B | C) &(~A | ~B | C));
    
        

endmodule

</pre>

<h5>Testbench Code:</h5>
<pre>
  `timescale 1ns / 1ps
  module bollean_exp_tb(

    );
    reg A, B, C;
     wire exp_1, exp_2, exp_3;
     bollean_exp dut(A,B,C,exp_1,exp_2,exp_3);
initial begin
 
    A=0; B=0; C=0; #10;
    A=0; B=0; C=1; #10;
    A=0; B=1; C=0; #10;
    A=0; B=1; C=1; #10;
    A=1; B=0; C=0; #10;
    A=1; B=0; C=1; #10;
    A=1; B=1; C=0; #10;
    A=1; B=1; C=1; #10;

        $finish;
    end
endmodule

</pre>

Simultion:
<img width="673" height="567" alt="image" src="https://github.com/user-attachments/assets/1910fa9d-b00b-49d1-ac22-15bfc23c8cd3" />

Schmetic: 
<img width="829" height="475" alt="image" src="https://github.com/user-attachments/assets/8b120cc2-195f-47ba-9c14-ae3b0bb00588" />

