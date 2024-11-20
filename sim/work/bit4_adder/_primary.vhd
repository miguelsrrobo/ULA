library verilog;
use verilog.vl_types.all;
entity bit4_adder is
    generic(
        N               : integer := 4
    );
    port(
        sum             : out    vl_logic_vector;
        a               : in     vl_logic_vector;
        b               : in     vl_logic_vector;
        carry_out       : out    vl_logic;
        carry_in        : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end bit4_adder;
