//ASSOCIATIVE ARRAY METHODS
module associative_methods;
  longint assoc[int];
  int idx;
  initial begin
    idx=1;
    repeat(6) begin
      assoc[idx]=idx;
      idx = idx<<1;
    end
    if(assoc.first(idx))
      $display(idx,",",assoc[idx]);
    if(assoc.next(idx))
      $display(idx,",",assoc[idx]);
    if(assoc.last(idx))
      $display(idx,",",assoc[idx]);
    if(assoc.prev(idx))
      $display(idx,",",assoc[idx]);
  end
endmodule
