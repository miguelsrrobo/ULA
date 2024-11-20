library verilog;
use verilog.vl_types.all;
entity ula is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        a_inv           : in     vl_logic;
        b_inv           : in     vl_logic;
        c_in            : in     vl_logic;
        alu_op          : in     vl_logic_vector(1 downto 0);
        ALU_out         : out    vl_logic_vector(3 downto 0);
        N               : out    vl_logic;
        C               : out    vl_logic;
        V               : out    vl_logic;
        Z               : out    vl_logic
    );
end ula;
