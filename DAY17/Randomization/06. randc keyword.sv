class randc_variable;
  randc bit [2:0]a;
endclass

module randc_var;
  randc_variable randc_handle=new();
  
  initial begin
    for(int i=0;i<=12;i++)
      begin
        void'(randc_handle.randomize());
        $display("Iteration=%0d    Random value=%0d",i,randc_handle.a);
      end
    $display("randc-The value of 'a' will repeat after completing one cycle");
  end
endmodule
