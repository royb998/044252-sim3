vlog *.sv
vsim rv_sim

add wave sim:/rv_sim/clk sim:/rv_sim/rst
add wave sim:/rv_sim/dut/dp/pc sim:/rv_sim/dut/dp/ir
add wave sim:/rv_sim/dut/ctl/current
add wave sim:/rv_sim/dut/dp/dmem_dataout sim:/rv_sim/dut/dp/neg_en

run 1200
