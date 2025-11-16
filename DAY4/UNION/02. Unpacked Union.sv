//Unpacked Union
module union_unpacked;
  bit[31:0] x;
  typedef union {
    int a;
    logic[15:0] b; // all members are in different size
    bit [3:0] c;
  } data;
  data d1;
  
  initial begin
    d1.a = 32'hffff_ffff;//write to a
    x = d1.b;//read to b
    $display("x=%h",x);
    
    d1.b = 16'h0001;//write to b
    x = d1.c;//read to c//Expected Output: 00000001 (ffffffff is totally cleared)
    $display("x=%h",x);
  end
endmodule
