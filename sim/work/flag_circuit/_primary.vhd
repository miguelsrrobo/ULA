library verilog;
use verilog.vl_types.all;
entity flag_circuit is
    generic(
        NIB             : integer := 4
    );
    port(
        Sum             : in     vl_logic_vector;
        Carry_out       : in     vl_logic;
        N               : out    vl_logic;
        C               : out    vl_logic;
        V               : out    vl_logic;
        Z               : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NIB : constant is 1;
end flag_circuit;
