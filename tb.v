// Code your testbench here
// or browse Examples
module tb;
  reg rd_en,cs,clk;
  reg [1:0] addr;
  wire [3:0]data;
 // integer i;
  rom DUT(.rd_en(rd_en), .clk(clk), .cs(cs), .addr(addr), .data(data));
  
  
  always #5 clk =~clk;
  
  initial 
    begin
       clk =0;
      
      addr =2'd2;
      #3 rd_en =1; cs =1;
      for (integer i=0;i<4;++i)
        begin
          #10 addr=i;
        end
      
      #50 $finish;
    end
  
  initial 
    begin
      $dumpvars(0, tb);
    $dumpfile("file.vcd");
      $monitor($time, " addr= %b, data =%b", addr, data);
      
    end
endmodule
  
  
  