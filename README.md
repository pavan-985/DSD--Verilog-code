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

------------------------------------------------------------------------------------------------------------------------------

Half Adder

<h5>Code:</h5>
<pre>
  `timescale 1ns / 1ps
 module half_adder(input a,b,
output sum,carry);
assign sum=a^b;
assign carry=a&b;
endmodule

</pre>

<h5>Testbench Code:</h5>
<pre>
  module half_adder_tb(
    
    );
    
reg t_a,t_b;
wire Sum,Carry;

half_adder dut (t_a, t_b, Sum, Carry);


initial begin
t_a=0;t_b=0;
#10
t_a=0;t_b=1;
#10
t_a=1;t_b=0;
#10
t_a=1;t_b=1;
#10

$stop;
end   
endmodule

</pre>

Simultion:
<img width="706" height="570" alt="image" src="https://github.com/user-attachments/assets/e766a40d-ebe1-4763-975d-0a9126d37b4c" />


Schmetic: 
<img width="646" height="456" alt="image" src="https://github.com/user-attachments/assets/3dcd9f87-955a-4a70-a125-ffcb209c1066" />

------------------------------------------------------------------------------------------------------------------------------

Half Subtractor

<h5>Code:</h5>
<pre>
  `timescale 1ns / 1ps
module Half_subtactor(
    input a,b, 
    output d,borrow
    );
    assign d=a^b;
    assign borrow=(~a) & b;
endmodule

</pre>

<h5>Testbench Code:</h5>
<pre>
  module Half_subtactor_tb(

    );
    
     reg a, b;
    wire d, borrow;
// Instantiate the design (DUT)
    Half_subtactor dut (a, b, d, borrow);

    initial begin
        
        
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $stop;  
    end
endmodule


</pre>

Simultion:
<img width="696" height="570" alt="image" src="https://github.com/user-attachments/assets/cc221129-7085-46d5-9136-9efee9684cf1" />


Schmetic: 
<img width="625" height="570" alt="image" src="https://github.com/user-attachments/assets/755aac47-5181-4537-8fdc-34e65147ee20" />

------------------------------------------------------------------------------------------------------------------------------

Full Adder:

<h5>Code:</h5>
<pre>
  `timescale 1ns / 1ps
module full_adder(
    input a, b, cin,
    output sum, carry
    );
    
    assign sum   = a ^ b ^ cin;
    assign carry = (a & b) | (b & cin) | (a & cin);

endmodule
</pre>

<h5>Testbench Code:</h5>
<pre>
  module full_adder_tb(

    );
     reg a, b, cin;
    wire sum, carry;

    
    full_adder dut (a,b,cin,sum,carry);

    initial begin
       
        
        a=0; b=0; cin=0; #10;
        a=0; b=0; cin=1; #10;
        a=0; b=1; cin=0; #10;
        a=0; b=1; cin=1; #10;
        a=1; b=0; cin=0; #10;
        a=1; b=0; cin=1; #10;
        a=1; b=1; cin=0; #10;
        a=1; b=1; cin=1; #10;

        $stop;
    end
endmodule
endmodule


</pre>

Simultion:
<img width="687" height="489" alt="image" src="https://github.com/user-attachments/assets/34b2822b-65c7-4929-aebd-7f8ab96d6b30" />



Schmetic: 
<img width="643" height="341" alt="image" src="https://github.com/user-attachments/assets/6b9ebb06-2d31-4bd7-8530-df35593b3b1f" />

------------------------------------------------------------------------------------------------------------------------------

Full Subtractor:

<h5>Code:</h5>
<pre>
  `timescale 1ns / 1ps
module full_subtactor(
    input a, b, bin,
    output diff, borrow
    );
    assign diff   = a ^ b ^ bin;
    assign borrow = (~a & b) | ((~a ^ b) & bin);

endmodule

</pre>

<h5>Testbench Code:</h5>
<pre>
  module full_subtactor_tb(

    );
    reg a, b, bin;
    wire diff, borrow;

    // Instantiate DUT (Device Under Test)
    full_subtactor dut (a, b, bin, diff, borrow);


    initial begin
       
        // Apply all input combinations (0-7)
        a=0; b=0; bin=0; #10;
        a=0; b=0; bin=1; #10;
        a=0; b=1; bin=0; #10;
        a=0; b=1; bin=1; #10;
        a=1; b=0; bin=0; #10;
        a=1; b=0; bin=1; #10;
        a=1; b=1; bin=0; #10;
        a=1; b=1; bin=1; #10;

        $stop;
    end

endmodule



</pre>

Simultion:
<img width="704" height="486" alt="image" src="https://github.com/user-attachments/assets/e4ca7de5-41ac-482b-8d83-799d252fa9e6" />



Schmetic: 
<img width="648" height="356" alt="image" src="https://github.com/user-attachments/assets/d593792e-a5f9-4e49-aa69-c837a4e4d200" />







