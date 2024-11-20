library verilog;
use verilog.vl_types.all;
entity ula_tb is
    generic(
        NIB             : integer := 4;
        period          : integer := 50
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NIB : constant is 1;
    attribute mti_svvh_generic_type of period : constant is 1;
end ula_tb;
