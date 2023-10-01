module rom(clk,read,data_out,addr);
		input clk,read;
		input [4:0]addr;
		output reg [3:0]  data_out;
		
		reg [3:0]rom[31:0];
		
		
		initial //for testing
	begin
		$readmemh("C:\\Users\\HP\\Desktop\\lol\\code1.txt",rom);
	end
	
		always@(posedge clk)
		
			if (read)
				data_out<=rom[addr];
				
		
		
endmodule