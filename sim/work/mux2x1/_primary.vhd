library verilog;
use verilog.vl_types.all;
entity mux2x1 is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        sel             : in     vl_logic;
        op              : out    vl_logic_vector(3 downto 0)
    );
end mux2x1;
