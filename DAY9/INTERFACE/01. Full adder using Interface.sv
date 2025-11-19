//Interface
interface fa_if;
  logic a,b,c;
  logic s_out, c_out;
endinterface

//top module
  module tb_top;
    fa_if inf();
    full_adder fa(inf);
    initial begin
      $monitor("a=%b b=%b c=%b sum=%b carry=%b",inf.a,inf.b,inf.c,inf.s_out,inf.c_out);
      inf.a = 1;
      inf.b = 0;
      inf.c = 0;
      #10;
      inf.a = 1;
      inf.b = 1;
      inf.c = 0;
      #10;
      inf.a = 1;
      inf.b = 1;
      inf.c = 1;
      #10;
    end
  endmodule
