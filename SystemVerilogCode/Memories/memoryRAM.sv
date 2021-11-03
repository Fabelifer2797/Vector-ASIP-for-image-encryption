module memoryRAM (input logic clk, we, vf,
						 input logic [127:0] addr, wd,
						 output logic [127:0] rd);
	
	// synthesis translate_off
				
	logic [31:0] RAM1[9999:0];
	logic [31:0] RAM2[9999:0];
	logic [31:0] RAM3[9999:0];
	logic [31:0] RAM4[9999:0];
	logic [31:0] RAM5[9999:0];
	logic [31:0] RAM6[9999:0];
	logic [31:0] RAM7[9999:0];
	logic [31:0] RAM8[9999:0];
	logic [31:0] RAM9[9999:0];
	logic [31:0] RAM10[9999:0];
	logic [31:0] RAM11[9999:0];
	logic [31:0] RAM12[9999:0];
	
	
	always_ff @(negedge clk)
		begin
			if (addr >= 'd0 && addr <= 'd9999)
				begin
					if (we && !vf)
						RAM1R[addr] <= wd[31:0];
					else if (we && vf)
						begin
							RAM1R[addr] <= wd[31:0];
							RAM1R[addr + 'd1] <= wd[63:32];
							RAM1R[addr + 'd2] <= wd[95:64];
							RAM1R[addr + 'd3] <= wd[127:96];
						end
					rd <= {RAM1R[addr + 'd3], RAM1R[addr + 'd2], RAM1R[addr + 'd1], RAM1R[addr]};
				end
	
			else if (addr >= 'd10000 && addr <= 'd19999)
				begin
					if (we && !vf)
						RAM2R[addr - 'd10000] <= wd[31:0];
					else if (we && vf)
						begin
							RAM2R[addr - 'd10000] <= wd[31:0];
							RAM2R[addr + 'd1 - 'd10000] <= wd[63:32];
							RAM2R[addr + 'd2 - 'd10000] <= wd[95:64];
							RAM2R[addr + 'd3 - 'd10000] <= wd[127:96];
						end
					rd <= {RAM2R[addr + 'd3 - 'd10000], RAM2R[addr + 'd2 - 'd10000], RAM2R[addr + 'd1 - 'd10000], RAM2R[addr - 'd10000]};
				end
				
			else if (addr >= 'd20000 && addr <= 'd29999)
				begin
					if (we && !vf)
						RAM3R[addr - 'd20000] <= wd[31:0];
					else if (we && vf)
						begin
							RAM3R[addr - 'd20000] <= wd[31:0];
							RAM3R[addr + 'd1 - 'd20000] <= wd[63:32];
							RAM3R[addr + 'd2 - 'd20000] <= wd[95:64];
							RAM3R[addr + 'd3 - 'd20000] <= wd[127:96];
						end
					rd <= {RAM3R[addr + 'd3 - 'd20000], RAM3R[addr + 'd2 - 'd20000], RAM3R[addr + 'd1 - 'd20000], RAM3R[addr - 'd20000]};
				end
					
			else if (addr >= 'd30000 && addr <= 'd39999)
				begin
					if (we && !vf)
						RAM4R[addr - 'd30000] <= wd[31:0];
					else if (we && vf)
						begin
							RAM4R[addr - 'd30000] <= wd[31:0];
							RAM4R[addr + 'd1 - 'd30000] <= wd[63:32];
							RAM4R[addr + 'd2 - 'd30000] <= wd[95:64];
							RAM4R[addr + 'd3 - 'd30000] <= wd[127:96];
						end
					rd <= {RAM4R[addr + 'd3 - 'd30000], RAM4R[addr + 'd2 - 'd30000], RAM4R[addr + 'd1 - 'd30000], RAM4R[addr - 'd30000]};
				end
					
			else if (addr >= 'd40000 && addr <= 'd49999)
				begin
					if (we && !vf)
						RAM1G[addr - 'd40000] <= wd[31:0];
					else if (we && vf)
						begin
							RAM1G[addr - 'd40000] <= wd[31:0];
							RAM1G[addr + 'd1 - 'd40000] <= wd[63:32];
							RAM1G[addr + 'd2 - 'd40000] <= wd[95:64];
							RAM1G[addr + 'd3 - 'd40000] <= wd[127:96];
						end
					rd <= {RAM1G[addr + 'd3 - 'd40000], RAM1G[addr + 'd2 - 'd40000], RAM1G[addr + 'd1 - 'd40000], RAM1G[addr - 'd40000]};
				end
					
			else if (addr >= 'd50000 && addr <= 'd59999)
				begin
					if (we && !vf)
						RAM2G[addr - 'd50000] <= wd[31:0];
					else if (we && vf)
						begin
							RAM2G[addr - 'd50000] <= wd[31:0];
							RAM2G[addr + 'd1 - 'd50000] <= wd[63:32];
							RAM2G[addr + 'd2 - 'd50000] <= wd[95:64];
							RAM2G[addr + 'd3 - 'd50000] <= wd[127:96];
						end
					rd <= {RAM2G[addr + 'd3 - 'd50000], RAM2G[addr + 'd2 - 'd50000], RAM2G[addr + 'd1 - 'd50000], RAM2G[addr - 'd50000]};
				end
				
			else if (addr >= 'd60000 && addr <= 'd69999)
				begin
					if (we && !vf)
						RAM3G[addr - 'd60000] <= wd[31:0];
					else if (we && vf)
						begin
							RAM3G[addr - 'd60000] <= wd[31:0];
							RAM3G[addr + 'd1 - 'd60000] <= wd[63:32];
							RAM3G[addr + 'd2 - 'd60000] <= wd[95:64];
							RAM3G[addr + 'd3 - 'd60000] <= wd[127:96];
						end
					rd <= {RAM3G[addr + 'd3 - 'd60000], RAM3G[addr + 'd2 - 'd60000], RAM3G[addr + 'd1 - 'd60000], RAM3G[addr - 'd60000]};
				end
				
			else if (addr >= 'd70000 && addr <= 'd79999)
				begin
					if (we && !vf)
						RAM4G[addr - 'd70000] <= wd[31:0];
					else if (we && vf)
						begin
							RAM4G[addr - 'd70000] <= wd[31:0];
							RAM4G[addr + 'd1 - 'd70000] <= wd[63:32];
							RAM4G[addr + 'd2 - 'd70000] <= wd[95:64];
							RAM4G[addr + 'd3 - 'd70000] <= wd[127:96];
						end
					rd <= {RAM4G[addr + 'd3 - 'd70000], RAM4G[addr + 'd2 - 'd70000], RAM4G[addr + 'd1 - 'd70000], RAM4G[addr - 'd70000]};
				end
				
			else if (addr >= 'd80000 && addr <= 'd89999)
				begin
					if (we && !vf)
						RAM1B[addr - 'd80000] <= wd[31:0];
					else if (we && vf)
						begin
							RAM1B[addr - 'd80000] <= wd[31:0];
							RAM1B[addr + 'd1 - 'd80000] <= wd[63:32];
							RAM1B[addr + 'd2 - 'd80000] <= wd[95:64];
							RAM1B[addr + 'd3 - 'd80000] <= wd[127:96];
						end
					rd <= {RAM1B[addr + 'd3 - 'd80000], RAM1B[addr + 'd2 - 'd80000], RAM1B[addr + 'd1 - 'd80000], RAM1B[addr - 'd80000]};
				end
					
			else if (addr >= 'd90000 && addr <= 'd99999)
				begin
					if (we && !vf)
						RAM2B[addr - 'd90000] <= wd[31:0];
					else if (we && vf)
						begin
							RAM2B[addr - 'd90000] <= wd[31:0];
							RAM2B[addr + 'd1 - 'd90000] <= wd[63:32];
							RAM2B[addr + 'd2 - 'd90000] <= wd[95:64];
							RAM2B[addr + 'd3 - 'd90000] <= wd[127:96];
						end
					rd <= {RAM2B[addr + 'd3 - 'd90000], RAM2B[addr + 'd2 - 'd90000], RAM2B[addr + 'd1 - 'd90000], RAM2B[addr - 'd90000]};
				end
			
			else if (addr >= 'd100000 && addr <= 'd109999)
				begin
					if (we && !vf)
						RAM3B[addr - 'd100000] <= wd[31:0];
					else if (we && vf)
						begin
							RAM3B[addr - 'd100000] <= wd[31:0];
							RAM3B[addr + 'd1 - 'd100000] <= wd[63:32];
							RAM3B[addr + 'd2 - 'd100000] <= wd[95:64];
							RAM3B[addr + 'd3 - 'd100000] <= wd[127:96];
						end
					rd <= {RAM3B[addr + 'd3 - 'd100000], RAM3B[addr + 'd2 - 'd100000], RAM3B[addr + 'd1 - 'd100000], RAM3B[addr - 'd100000]};
				end
					
			else if (addr >= 'd110000 && addr <= 'd119999)
				begin
					if (we && !vf)
						RAM4B[addr - 'd110000] <= wd[31:0];
					else if (we && vf)
						begin
							RAM4B[addr - 'd110000] <= wd[31:0];
							RAM4B[addr + 'd1 - 'd110000] <= wd[63:32];
							RAM4B[addr + 'd2 - 'd110000] <= wd[95:64];
							RAM4B[addr + 'd3 - 'd110000] <= wd[127:96];
						end
					rd <= {RAM4B[addr + 'd3 - 'd110000], RAM4B[addr + 'd2 - 'd110000], RAM4B[addr + 'd1 - 'd110000], RAM4B[addr - 'd110000]};
				end
					
			else if (addr >= 'd120000 && addr <= 'd120999)
				begin
					if (we && !vf)
						RAMD[addr - 'd120000] <= wd[31:0];
					else if (we && vf)
						begin
							RAMD[addr - 'd120000] <= wd[31:0];
							RAMD[addr + 'd1 - 'd120000] <= wd[63:32];
							RAMD[addr + 'd2 - 'd120000] <= wd[95:64];
							RAMD[addr + 'd3 - 'd120000] <= wd[127:96];
						end
					rd <= {RAMD[addr + 'd3 - 'd120000], RAMD[addr + 'd2 - 'd120000], RAMD[addr + 'd1 - 'd120000], RAMD[addr - 'd120000]};
				end
				
			else
				rd <= 128'b0;			
		end
			
	// synthesis translate_on		
		
endmodule 