module full_adder(a, b, cin, sum, carry);
	// PORTAS
	input wire a; 
	input wire b; 
	input wire cin; 
	output sum; 
	output carry;

	// VARIAVEIS
	wire s1;
	
	//PROCESSO
	half_adder	HA1(a, b, s1, c1);
	half_adder HA2(s1, cin, sum, c2);

	assign carry = c1 | c2;

endmodule
