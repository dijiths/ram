// Code your design here
module rom (input rd_en, clk,  cs, input [1:0] addr, output reg [3:0] data);
  reg [3:0] mem [0:3];
  
  always @(posedge clk)
    begin
    if (rd_en && cs)
      begin
      case (addr)
        
          0: data = 3'd0;
          1: data = 3'd1;
          2: data = 3'd2;
          3: data = 3'd7;
          endcase
        end
        end
        
          
endmodule