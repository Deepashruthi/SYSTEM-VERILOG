// Pass by Value
module function_passbyvalue;
  int a, b;
  int out;
  
  function int multiply(int a, b);
    a = a*b; //value of a is updated, it won't update global variables a and b
    return a;
  endfunction
  
  initial begin
    a = 10;
    b = 5;
    out = multiply(a,b);
    $display("out = %0d | a = %0d | b = %0d", out, a, b);
  end
endmodule
