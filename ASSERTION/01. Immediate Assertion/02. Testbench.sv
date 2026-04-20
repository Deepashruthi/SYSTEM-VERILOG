module tb;
  reg a, b, clk; 
  wire y;
  
  and_log uut ( .a(a), .b(b), .y(y) );
  
  always #5 clk = ~clk;
  
  initial begin
    clk = 0;
    a = 0;
    b = 0;
    
    #10;
    a = 0;
    b = 1;
    
    #10;
    a = 1;
    b = 0;
    
    #10;
    a = 1;
    b = 1;
    
    #10;
    a = 1;
    b = 1'bx;
    
    #20;
    $finish;
  end
  
  
  always @(posedge clk) begin 
    assert (a==0 && b==0) $info("%0t, A=0 and B=0, assertion failed",$time);
    else assert (a==0 && b==1) $info("%0t, A=0 and B=1, assertion failed",$time);
    else assert (a==1 && b==0) $info("%0t, A=1 and B=0, assertion failed",$time);
    else assert (a==1 && b==1) $display("%0t, A=1 and B=1,assertion Success",$time);
    else $error("%0t fail",$time);
  end
  
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars();
  end
  
endmodule 
    
