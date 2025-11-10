//Packed Union
module union_packed;
  bit[31:0] x;
  typedef union packed{
    int a;
    logic[31:0] b;
    bit [31:0] c;
  } data;
  data d1;
  
  initial begin
    d1.a = 32'hffff_ffff;//write to a
    x = d1.b;//read to b
    $display("x=%h",x);
    
    d1.b = 32'h0000_ffff;//write to a
    x = d1.c;//read to b
    $display("x=%h",x);
  end
endmodule
