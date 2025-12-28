module std_random_module;
  bit [3:0]a;
  bit [3:0]b;
  bit [3:0]c;
  bit [3:0]d;
  bit [3:0]e;
  
  initial begin
    
    repeat(4)
      begin
        void'(std::randomize(a));
        $display("value of a %0d",a);
        void'(std::randomize(b) with {b>6; a<12;});
        $display("value of b:%0d",b);
        void'(std::randomize(c,d) with {c<4; d<3;});
        $display("value of c:%0d and d:%0d",c,d);
        void'(std::randomize(e) with {e inside {[1:4]};});
        $display("value of e:%0d",e);
      end
  end
endmodule
