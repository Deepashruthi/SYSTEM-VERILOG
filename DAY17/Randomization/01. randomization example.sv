// Randomization Example
class packet;
  rand bit [2:0] addr1;
  randc bit [2:0] addr2;
endclass

module rand_methods;
  initial begin
    packet pkt = new();
    repeat (10) begin
      pkt.randomize();
      $display(" addr1 = %0d  addr2 = %0d", pkt.addr1, pkt.addr2);
      end
  end
endmodule
