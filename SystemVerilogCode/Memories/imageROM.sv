module imageROM (input logic clk,
					  input logic [127:0] addr,
					  output logic [127:0] rd);
	
	// synthesis translate_off
	
	logic [7:0] ROM1[9999:0];	
	logic [7:0] ROM2[9999:0];
	logic [7:0] ROM3[9999:0];
	logic [7:0] ROM4[9999:0];
	logic [7:0] ROM5[9999:0];
	logic [7:0] ROM6[9999:0];
	logic [7:0] ROM7[9999:0];

	
	initial
		begin
			$readmemh("C:/Proyectos_Quartus/Vector-ASIP-for-image-encryption/SystemVerilogCode/ImageData/image1.txt", ROM1);
            $readmemh("C:/Proyectos_Quartus/Vector-ASIP-for-image-encryption/SystemVerilogCode/ImageData/image2.txt", ROM2);
            $readmemh("C:/Proyectos_Quartus/Vector-ASIP-for-image-encryption/SystemVerilogCode/ImageData/image3.txt", ROM3);
            $readmemh("C:/Proyectos_Quartus/Vector-ASIP-for-image-encryption/SystemVerilogCode/ImageData/image4.txt", ROM4);
            $readmemh("C:/Proyectos_Quartus/Vector-ASIP-for-image-encryption/SystemVerilogCode/ImageData/image5.txt", ROM5);
            $readmemh("C:/Proyectos_Quartus/Vector-ASIP-for-image-encryption/SystemVerilogCode/ImageData/image6.txt", ROM6);
            $readmemh("C:/Proyectos_Quartus/Vector-ASIP-for-image-encryption/SystemVerilogCode/ImageData/image7.txt", ROM7);
		end
		
	always_ff @(negedge clk)
		begin
			if (addr >= 'd0 && addr <= 'd9999)
				rd <= {24'b0, ROM1[addr + 'd3], 24'b0, ROM1[addr + 'd2], 24'b0, ROM1[addr + 'd1], 24'b0, ROM1[addr]};	
			else if (addr >= 'd10000 && addr <= 'd19999)
				rd <= {24'b0, ROM2[addr + 'd3 - 'd10000], 24'b0, ROM2[addr + 'd2 - 'd10000], 24'b0, ROM2[addr + 'd1 - 'd10000], 24'b0, ROM2[addr - 'd10000]};				
			else if (addr >= 'd20000 && addr <= 'd29999)
				rd <= {24'b0, ROM3[addr + 'd3 - 'd20000], 24'b0, ROM3[addr + 'd2 - 'd20000], 24'b0, ROM3[addr + 'd1 - 'd20000], 24'b0, ROM3[addr - 'd20000]};
			else if (addr >= 'd30000 && addr <= 'd39999)
				rd <= {24'b0, ROM4[addr + 'd3 - 'd30000], 24'b0, ROM4[addr + 'd2 - 'd30000], 24'b0, ROM4[addr + 'd1 - 'd30000], 24'b0, ROM4[addr - 'd30000]};
			else if (addr >= 'd40000 && addr <= 'd49999)
				rd <= {24'b0, ROM5[addr + 'd3 - 'd40000], 24'b0, ROM5[addr + 'd2 - 'd40000], 24'b0, ROM5[addr + 'd1 - 'd40000], 24'b0, ROM5[addr - 'd40000]};
			else if (addr >= 'd50000 && addr <= 'd59999)
				rd <= {24'b0, ROM6[addr + 'd3 - 'd50000], 24'b0, ROM6[addr + 'd2 - 'd50000], 24'b0, ROM6[addr + 'd1 - 'd50000], 24'b0, ROM6[addr - 'd50000]};
			else if (addr >= 'd60000 && addr <= 'd69999)
				rd <= {24'b0, ROM7[addr + 'd3 - 'd60000], 24'b0, ROM7[addr + 'd2 - 'd60000], 24'b0, ROM7[addr + 'd1 - 'd60000], 24'b0, ROM7[addr - 'd60000]};
			else
				rd <= 128'b0;
		end
	
	// synthesis translate_on

	
endmodule 