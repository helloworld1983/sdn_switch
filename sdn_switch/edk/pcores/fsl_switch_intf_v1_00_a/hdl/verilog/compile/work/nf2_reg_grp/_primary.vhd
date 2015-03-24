library verilog;
use verilog.vl_types.all;
entity nf2_reg_grp is
    port(
        fifo_empty      : in     vl_logic;
        fifo_rd_en      : out    vl_logic;
        bus_rd_wr_L     : in     vl_logic;
        bus_addr        : in     vl_logic_vector(26 downto 0);
        bus_wr_data     : in     vl_logic_vector(31 downto 0);
        bus_rd_data     : out    vl_logic_vector(31 downto 0);
        bus_rd_vld      : out    vl_logic;
        sram_reg_req    : out    vl_logic;
        sram_reg_rd_wr_L: out    vl_logic;
        sram_reg_addr   : out    vl_logic_vector(21 downto 0);
        sram_reg_wr_data: out    vl_logic_vector(31 downto 0);
        sram_reg_ack    : in     vl_logic;
        sram_reg_rd_data: in     vl_logic_vector(31 downto 0);
        udp_reg_req     : out    vl_logic;
        udp_reg_rd_wr_L : out    vl_logic;
        udp_reg_addr    : out    vl_logic_vector(22 downto 0);
        udp_reg_wr_data : out    vl_logic_vector(31 downto 0);
        udp_reg_ack     : in     vl_logic;
        udp_reg_rd_data : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
end nf2_reg_grp;
