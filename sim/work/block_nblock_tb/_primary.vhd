library verilog;
use verilog.vl_types.all;
entity block_nblock_tb is
    generic(
        period          : integer := 50
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of period : constant is 1;
end block_nblock_tb;
