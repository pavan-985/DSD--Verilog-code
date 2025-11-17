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


------------------------------------------------------------------------------------------------------------------------------

Mux 4*1:

<h5>Code:</h5>
<pre>
  `timescale 1ns / 1ps
module mux_41(
        input S1, S0, I0, I1, I2, I3,
    output y
    );
    assign y = (~S1 & ~S0 & I0) |(~S1 &  S0 & I1) |( S1 & ~S0 & I2) |( S1 &  S0 & I3);
endmodule


</pre>

<h5>Testbench Code:</h5>
<pre>
  module mux_41_tb(

    );
    
    reg S1, S0, I0, I1, I2, I3;
    wire y;

    mux_41 dut (S1, S0, I0, I1, I2, I3, y);

  initial begin
    S1=0; S0=0; I0=0; I1=0; I2=0; I3=0; #10;
    S1=0; S0=0; I0=0; I1=0; I2=0; I3=1; #10;
    S1=0; S0=0; I0=0; I1=0; I2=1; I3=0; #10;
    S1=0; S0=0; I0=0; I1=0; I2=1; I3=1; #10;
    S1=0; S0=0; I0=0; I1=1; I2=0; I3=0; #10;
    S1=0; S0=0; I0=0; I1=1; I2=0; I3=1; #10;
    S1=0; S0=0; I0=0; I1=1; I2=1; I3=0; #10;
    S1=0; S0=0; I0=0; I1=1; I2=1; I3=1; #10;
    S1=0; S0=0; I0=1; I1=0; I2=0; I3=0; #10;
    S1=0; S0=0; I0=1; I1=0; I2=0; I3=1; #10;
    S1=0; S0=0; I0=1; I1=0; I2=1; I3=0; #10;
    S1=0; S0=0; I0=1; I1=0; I2=1; I3=1; #10;
    S1=0; S0=0; I0=1; I1=1; I2=0; I3=0; #10;
    S1=0; S0=0; I0=1; I1=1; I2=0; I3=1; #10;
    S1=0; S0=0; I0=1; I1=1; I2=1; I3=0; #10;
    S1=0; S0=0; I0=1; I1=1; I2=1; I3=1; #10;
    S1=0; S0=1; I0=0; I1=0; I2=0; I3=0; #10;
    S1=0; S0=1; I0=0; I1=0; I2=0; I3=1; #10;
    S1=0; S0=1; I0=0; I1=0; I2=1; I3=0; #10;
    S1=0; S0=1; I0=0; I1=0; I2=1; I3=1; #10;
    S1=0; S0=1; I0=0; I1=1; I2=0; I3=0; #10;
    S1=0; S0=1; I0=0; I1=1; I2=0; I3=1; #10;
    S1=0; S0=1; I0=0; I1=1; I2=1; I3=0; #10;
    S1=0; S0=1; I0=0; I1=1; I2=1; I3=1; #10;
    S1=0; S0=1; I0=1; I1=0; I2=0; I3=0; #10;
    S1=0; S0=1; I0=1; I1=0; I2=0; I3=1; #10;
    S1=0; S0=1; I0=1; I1=0; I2=1; I3=0; #10;
    S1=0; S0=1; I0=1; I1=0; I2=1; I3=1; #10;
    S1=0; S0=1; I0=1; I1=1; I2=0; I3=0; #10;
    S1=0; S0=1; I0=1; I1=1; I2=0; I3=1; #10;
    S1=0; S0=1; I0=1; I1=1; I2=1; I3=0; #10;
    S1=0; S0=1; I0=1; I1=1; I2=1; I3=1; #10;
    S1=1; S0=0; I0=0; I1=0; I2=0; I3=0; #10;
    S1=1; S0=0; I0=0; I1=0; I2=0; I3=1; #10;
    S1=1; S0=0; I0=0; I1=0; I2=1; I3=0; #10;
    S1=1; S0=0; I0=0; I1=0; I2=1; I3=1; #10;
    S1=1; S0=0; I0=0; I1=1; I2=0; I3=0; #10;
    S1=1; S0=0; I0=0; I1=1; I2=0; I3=1; #10;
    S1=1; S0=0; I0=0; I1=1; I2=1; I3=0; #10;
    S1=1; S0=0; I0=0; I1=1; I2=1; I3=1; #10;
    S1=1; S0=0; I0=1; I1=0; I2=0; I3=0; #10;
    S1=1; S0=0; I0=1; I1=0; I2=0; I3=1; #10;
    S1=1; S0=0; I0=1; I1=0; I2=1; I3=0; #10;
    S1=1; S0=0; I0=1; I1=0; I2=1; I3=1; #10;
    S1=1; S0=0; I0=1; I1=1; I2=0; I3=0; #10;
    S1=1; S0=0; I0=1; I1=1; I2=0; I3=1; #10;
    S1=1; S0=0; I0=1; I1=1; I2=1; I3=0; #10;
    S1=1; S0=0; I0=1; I1=1; I2=1; I3=1; #10;
    S1=1; S0=1; I0=0; I1=0; I2=0; I3=0; #10;
    S1=1; S0=1; I0=0; I1=0; I2=0; I3=1; #10;
    S1=1; S0=1; I0=0; I1=0; I2=1; I3=0; #10;
    S1=1; S0=1; I0=0; I1=0; I2=1; I3=1; #10;
    S1=1; S0=1; I0=0; I1=1; I2=0; I3=0; #10;
    S1=1; S0=1; I0=0; I1=1; I2=0; I3=1; #10;
    S1=1; S0=1; I0=0; I1=1; I2=1; I3=0; #10;
    S1=1; S0=1; I0=0; I1=1; I2=1; I3=1; #10;
    S1=1; S0=1; I0=1; I1=0; I2=0; I3=0; #10;
    S1=1; S0=1; I0=1; I1=0; I2=0; I3=1; #10;
    S1=1; S0=1; I0=1; I1=0; I2=1; I3=0; #10;
    S1=1; S0=1; I0=1; I1=0; I2=1; I3=1; #10;
    S1=1; S0=1; I0=1; I1=1; I2=0; I3=0; #10;
    S1=1; S0=1; I0=1; I1=1; I2=0; I3=1; #10;
    S1=1; S0=1; I0=1; I1=1; I2=1; I3=0; #10;
    S1=1; S0=1; I0=1; I1=1; I2=1; I3=1; #10;
    $finish;
  end
endmodule

</pre>

Simultion:
<img width="752" height="498" alt="image" src="https://github.com/user-attachments/assets/d6e434c8-eca4-4369-aff5-bc1ee191edaf" />



Schmetic: 
<img width="647" height="341" alt="image" src="https://github.com/user-attachments/assets/a31d1920-2f29-405a-8ae5-1822a0e41e30" />



------------------------------------------------------------------------------------------------------------------------------
Mux 8*1:

<h5>Code:</h5>
<pre>
  `timescale 1ns / 1ps
module mux_81(
    input I0, I1, I2, I3, I4, I5, I6, I7,
    input S0, S1, S2,
    output Y
    );
    assign Y =(~S2 & ~S1 & ~S0 & I0) |(~S2 & ~S1 &  S0 & I1) |(~S2 &  S1 & ~S0 & I2) |
              (~S2 &  S1 &  S0 & I3) |( S2 & ~S1 & ~S0 & I4) |( S2 & ~S1 &  S0 & I5) |
              ( S2 &  S1 & ~S0 & I6) |( S2 &  S1 &  S0 & I7);

endmodule

</pre>

<h5>Testbench Code:</h5>
<pre>
  module mux_81_tb(

    );    
reg I0, I1, I2, I3, I4, I5, I6, I7;
reg S0, S1, S2;
wire Y;
mux_81 dut (I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2, Y);
initial begin
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1;S2 = 0; S1 = 0; S0 = 0;   
    #10;
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1; S2 = 0; S1 = 0; S0 = 1;   
    #10;
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1; S2 = 0; S1 = 1; S0 = 0;   
    #10;
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1;S2 = 0; S1 = 1; S0 = 1;   
    #10;
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1;S2 = 1; S1 = 0; S0 = 0;   
    #10;
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1;S2 = 1; S1 = 0; S0 = 1;   
    #10;
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1;S2 = 1; S1 = 1; S0 = 0;  
    #10;
I0 = 1;I1 = 0;I2 = 1;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1;S2 = 1; S1 = 1; S0 = 1;   
    #10;
$finish;
end

endmodule


</pre>

Simultion:
<img width="704" height="492" alt="image" src="https://github.com/user-attachments/assets/edd20649-0aa8-40a9-9f4f-dc9cdbedd821" />



Schmetic: 
<img width="822" height="381" alt="image" src="https://github.com/user-attachments/assets/7971b6df-f39f-4c3e-b4d8-fdcd2d181b86" />



------------------------------------------------------------------------------------------------------------------------------

Decoder:

<h5>Code:</h5>
<pre>
  `timescale 1ns / 1ps
module priority_decoder_24(
input a,b,
output d0,d1,d2,d3

    );
     assign d0 = ~a&(~b);
    assign d1 = ~a&b;
    assign d2 = a&(~b);
    assign d3 = a&b;

endmodule


</pre>

<h5>Testbench Code:</h5>
<pre>
  module priority_decoder_24_tb(

    );
     reg a,b;
    wire d0,d1,d2,d3;
    
    priority_decoder_24 dut(a,b,d0,d1,d2,d3);
    
    initial 
    begin 
    a =0; b=0;
    #10
     a =0; b=1;
    #10
     a =1; b=0;
    #10
     a =1; b=1;
    #10
    $finish;
    end

endmodule

</pre>

Simultion:
<img width="694" height="497" alt="image" src="https://github.com/user-attachments/assets/0da001a8-2935-4ec5-8cd7-5c967a39ee9a" />




Schmetic: 
<img width="656" height="469" alt="image" src="https://github.com/user-attachments/assets/fc8753c9-dd2c-4ac9-9b34-d8078a1f5ffa" />



------------------------------------------------------------------------------------------------------------------------------

Priority Encoder:

<h5>Code:</h5>
<pre>
  `timescale 1ns / 1ps
module priority_encoder_42(
input d0,d1,d2,d3,
output a,b,v

    );
    
      assign a = d2|d3;
    assign b=( d1 &(~d2))|d3;
    assign v = d3|d2|d1|d0;

endmodule

</pre>

<h5>Testbench Code:</h5>
<pre>
 module priority_encoder_42_tb(

    );
    reg d0,d1,d2,d3;
    wire a,b ,v;
    
    priority_encoder_42 dut(d0,d1,d2,d3,a,b,v);
    
    initial 
    begin
     d0=0; d1=0;d2=0;d3=0;
    #10
    d0=1; d1=0;d2=0;d3=0;
    #10
    d0=0; d1=1;d2=0;d3=0;
    #10
    d0=0; d1=0;d2=1;d3=0;
    #10
    d0=0; d1=0;d2=0;d3=1;
    #10
    d0=1; d1=1;d2=0;d3=0;
    #10
    d0=1; d1=1;d2=1;d3=0;
    #10
    d0=1; d1=1;d2=1;d3=1;
    #10
    d0=1; d1=0;d2=1;d3=0;
    #10    
    d0=1; d1=0;d2=0;d3=1;
    #10
    d0=1; d1=0;d2=1;d3=1;
    #10
    d0=0; d1=0;d2=1;d3=1;
    #10
    d0=0; d1=1;d2=1;d3=1;
    #10
    d0=1; d1=1;d2=0;d3=1;
    #10
    d0=0; d1=1;d2=1;d3=0;
    #10
    d0=0; d1=1;d2=0;d3=1;
    #10
    
  $finish;
end

endmodule



</pre>

Simultion:
<img width="813" height="423" alt="image" src="https://github.com/user-attachments/assets/31480531-2dfa-4d13-bbfa-23d833559df2" />



Schmetic: 
<img width="649" height="432" alt="image" src="https://github.com/user-attachments/assets/44c88150-bab9-4ea0-9ec7-e72ab4f8e094" />

------------------------------------------------------------------------------------------

Sr-Latch:

<h5>Code:</h5>
<pre>
  `timescale 1ns / 1ps
module SR_latch(
    input s,r,output q,qbar
    );
    assign #1 q=~(s&qbar);
    assign #1 qbar=~(r&q);
endmodule


</pre>

<h5>Testbench Code:</h5>
<pre>
module SR_latch_tb(

    );
    
    reg s, r;
    wire q, qbar;

    
    SR_latch dut (s,r, q,qbar );

    initial begin
       s = 0; r = 0; #10;
        s = 1; r = 0; #10
        s = 0; r = 1; #10;
        s = 1; r = 1; #10;

        $stop;
    end

endmodule



</pre>

Simultion:
<img width="758" height="384" alt="image" src="https://github.com/user-attachments/assets/e915d0e4-1c41-4838-bb3d-cd03bd784d51" />

Schmetic: 
<img width="724" height="392" alt="image" src="https://github.com/user-attachments/assets/22b3e79b-90b4-4ae9-99a2-d003ba2c1a9d" />
----------------------------------------------------------------------------------------
Sr-flipflop:

<h5>Code:</h5>
<pre>
  `timescale 1ns / 1ps
module SR_flipflop(
    input S, R,clk,
    output Q, Qbar
    );
   wire Sg, Rg;
assign #1 Sg = ~(S & clk);
assign #1 Rg = ~(R & clk);
assign #1 Q = ~(Sg & Qbar);
assign #1 Qbar = ~(Rg & Q);
endmodule


</pre>

<h5>Testbench Code:</h5>
<pre>
module SR_flipflop_tb(

    );
    reg S, R, clk;
    wire Q, Qbar;

    
    SR_flipflop dut (S, R, clk, Q, Qbar);

   
  initial begin
  clk=0;
  forever #5 clk=~clk;
  end

    initial begin
    S = 0;
    R = 0;
    #10;
    S = 0;
    R = 1;
    #10;
    S = 0;
    R = 0;
    #10;
    S = 1;
    R = 0;
    #10;
    S = 0;
    R = 0;
    #10;
    S = 1;
    R = 1;
    #10;

    $finish;
    end

endmodule



</pre>

Simultion:
<img width="675" height="558" alt="image" src="https://github.com/user-attachments/assets/8da8fb98-cce1-4835-8d01-116b25ab4b16" />

Schmetic: 
<img width="661" height="343" alt="image" src="https://github.com/user-attachments/assets/56cfd1b9-7a1f-48c6-808a-1e08a49827fa" />

----------------------------------------------------------------------------------------
D-flipflop:

<h5>Code:</h5>
<pre>
  `timescale 1ns / 1ps
module D_flipflop(
    input D,clk,
    output Q,Qbar
    
    );
 
   wire Dbar, S, R;

    assign Dbar = ~D;

    assign #1 S = ~(D    & clk);   
    assign #1 R = ~(Dbar & clk);   

    assign #1 Q    = ~(S & Qbar);
    assign #1 Qbar = ~(R & Q);
endmodule


</pre>

<h5>Testbench Code:</h5>
<pre>
module D_flipflop_tb(

    );
    reg D, clk;
    wire Q, Qbar;
    
    D_flipflop dut (D,clk,Q,Qbar);

  
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  
    end

    
    initial begin
        

       
        D = 0;
        #10;

        
        D = 1;  #10;  
        D = 0;  #10;  
        D = 1;  #10;  
        D = 0;  #10;  

       
        D = 1;  #20;  

        $finish;
    end

endmodule

</pre>

Simultion:
<img width="674" height="506" alt="image" src="https://github.com/user-attachments/assets/f64c8f8e-46c6-412f-9491-13ae9adef4c2" />

Schmetic: 
<img width="648" height="354" alt="image" src="https://github.com/user-attachments/assets/10446c19-2520-4e53-8451-98f7f61e5db7" />

----------------------------------------------------------------------------------------
JK-flipflop:

<h5>Code:</h5>
<pre>
  `timescale 1ns / 1ps
module JK_flipflop(
    input J,K,clk,output reg Q,output Qbar
    );
    initial Q=0;
   assign Qbar = ~Q;
always @(posedge clk) begin
    case ({J, K})
        2'b00: Q <= Q;       
        2'b01: Q <= 1'b0;    
        2'b10: Q <= 1'b1;    
        2'b11: Q <= ~Q;      
    endcase
end


endmodule


</pre>

<h5>Testbench Code:</h5>
<pre>
module JK_flipflop_tb(

    );
    reg J, K, clk;
    wire Q, Qbar;

  
    JK_flipflop dut (J,K,clk,Q,Qbar);

    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;   
    end

    
    initial begin
        J = 0; K = 0; #10;   
        J = 1; K = 0; #10;   
        J = 0; K = 1; #10;   
        J = 1; K = 1; #10;   
        J = 1; K = 1; #10;   
        J = 0; K = 0; #10;  
        $finish;
    end
endmodule
</pre>

Simultion:
<img width="691" height="565" alt="image" src="https://github.com/user-attachments/assets/87f3b81f-af19-4cd6-b13b-94a01af26053" />


Schmetic: 
<img width="600" height="455" alt="image" src="https://github.com/user-attachments/assets/adb63ace-4e10-43e4-833a-583a4b69f2d4" />


----------------------------------------------------------------------------------------
T-flipflop:

<h5>Code:</h5>
<pre>
  `timescale 1ns / 1ps
module T_ff(
    input T,clk,output reg Q,output Qbar
    );
    
    assign Qbar=~Q;
    initial Q = 0;
    always @(posedge clk) begin
        case(T)
            1'b0: Q <= Q;       
            1'b1: Q <= ~Q;    
        endcase
    end
endmodule



</pre>

<h5>Testbench Code:</h5>
<pre>
module T_ff_tb(

    );
    reg T, clk;
    wire Q, Qbar;
    T_ff dut(T,clk,Q,Qbar);
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
       
        T = 0;
        #10;

        T = 1; #10;   
        T = 1; #10;   
        T = 0; #10;   
        T = 1; #10;   
        T = 0; #10;   
        T = 1; #20;   

        $finish;
    end
endmodule
</pre>

Simultion:
<img width="697" height="525" alt="image" src="https://github.com/user-attachments/assets/7045d315-8682-42fe-a863-77581c04d0e6" />



Schmetic: 
<img width="650" height="378" alt="image" src="https://github.com/user-attachments/assets/7cb8ca55-9091-40ce-a01e-0073cc5563a9" />


















