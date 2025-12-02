// Write a constraint to generate values in increasing order.
class cons_12;
  rand bit [4:0] data[10];
  
  constraint c12{ foreach(data[i])
    if(i<14) 
      data[i]<data[i+1] ;}
endclass

module constraint_12;
  cons_12 c1 = new();
  initial begin
    c1.randomize();
    foreach(c1.data[i]) begin
      $display("data[%0d] = %0d",i,c1.data[i]);
    end
  end
endmodule
