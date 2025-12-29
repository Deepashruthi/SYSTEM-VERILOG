// 2D static array randomization
class static_array_2D;  
  rand bit [3:0] a[2][4];  
endclass  

module mod;  
  static_array_2D pack;  
  initial begin  
    pack = new;  
    for (int i = 0; i <= 5; i++) begin  
      pack.randomize();  
      $display("The value of elements of array after randomization = %0p", pack.a); 
  end 
  end
endmodule

//OUTPUT
The value of elements of array after randomization = '{'{'h6, 'hf, 'h3, 'h0}, '{'h5, 'h7, 'h7, 'h6}}
The value of elements of array after randomization = '{'{'he, 'hd, 'h7, 'h1}, '{'h9, 'h9, 'h6, 'h6}}
The value of elements of array after randomization = '{'{'h4, 'hf, 'h1, 'h2}, '{'h3, 'hf, 'hb, 'h0}}
The value of elements of array after randomization = '{'{'h3, 'h2, 'hc, 'h7}, '{'hb, 'h5, 'hd, 'hd}}
The value of elements of array after randomization = '{'{'h3, 'hc, 'hc, 'h5}, '{'h7, 'h2, 'h0, 'h9}}
The value of elements of array after randomization = '{'{'h1, 'h9, 'ha, 'h8}, '{'h4, 'h1, 'h0, 'hb}}
