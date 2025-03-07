module mux_tb;

reg [3:0] i;
reg [1:0] sel;
wire y;

mux_rtl DUT(i,sel,y);

initial
 begin
  i=4'b1010;
  sel=2'b10;
  #10;
  sel=2'b01;
 end

initial
$monitor("i=%0b | sel=%0b | y=%0b",i,sel,y);

endmodule
 
