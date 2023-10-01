// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
// Code your design here
`timescale 1ns / 1ns
module test();
	reg CLOCK_50,read;
	wire [3:0]data_out;
	reg [4:0]addr;
	parameter CLOCK_PERIOD=2;
	
	rom m(CLOCK_50,read,data_out,addr);

	initial begin
			CLOCK_50 <= 1'b1;
		end // initial
		always @ (*)
		begin : Clock_Generator
			#((CLOCK_PERIOD) / 2) 
			CLOCK_50 <= ~CLOCK_50;
		end
	
	
	initial
	begin
	addr=0;
	read=1;
	
	end
	
	

	
	
	
	initial
	begin
	#2;addr=5'd1;
	#2;addr=5'd2;
	#2;addr=5'd3;
	#2;addr=5'd4;
	#2;addr=5'd5;
	#2;addr=5'd6;
	#2;addr=5'd7;
	#2;addr=5'd8;
	#2;addr=5'd9;
	#2;addr=5'd10;
	#2;addr=5'd11;
	#2;addr=5'd12;
	

		
	
	
	
	
	
	
	
	
	
	end
	
	
	
	initial
	begin
	#1000 $stop;
	end
	initial
  begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
	
	

endmodule