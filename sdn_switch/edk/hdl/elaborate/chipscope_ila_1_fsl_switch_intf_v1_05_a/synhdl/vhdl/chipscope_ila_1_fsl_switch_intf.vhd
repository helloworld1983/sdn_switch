-- ChipScope ILA Wrapper HDL file generated by chipscope_ila's TCL Generator


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
library Unisim;
use Unisim.all;

entity chipscope_ila is
  generic (
    C_FAMILY           : string   := "virtex4";
    C_DEVICE           : string   := "4vfx60";
    C_PACKAGE          : string   := "ff1152";
    C_SPEEDGRADE       : string   := "-11";
    C_NUM_DATA_SAMPLES : integer  := 4096;
    C_DATA_SAME_AS_TRIGGER : integer := 0;
    C_DATA_IN_WIDTH : integer := 243;
    C_ENABLE_TRIGGER_OUT : integer := 1;
    C_DISABLE_RPM : integer := 0;

    C_TRIG0_UNITS : integer := 1;
    C_TRIG0_TRIGGER_IN_WIDTH : integer := 4;
    C_TRIG0_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG0_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG1_UNITS : integer := 0;
    C_TRIG1_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG1_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG1_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG2_UNITS : integer := 0;
    C_TRIG2_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG2_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG2_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG3_UNITS : integer := 0;
    C_TRIG3_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG3_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG3_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG4_UNITS : integer := 0;
    C_TRIG4_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG4_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG4_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG5_UNITS : integer := 0;
    C_TRIG5_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG5_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG5_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG6_UNITS : integer := 0;
    C_TRIG6_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG6_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG6_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG7_UNITS : integer := 0;
    C_TRIG7_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG7_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG7_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG8_UNITS : integer := 0;
    C_TRIG8_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG8_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG8_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG9_UNITS : integer := 0;
    C_TRIG9_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG9_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG9_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG10_UNITS : integer := 0;
    C_TRIG10_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG10_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG10_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG11_UNITS : integer := 0;
    C_TRIG11_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG11_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG11_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG12_UNITS : integer := 0;
    C_TRIG12_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG12_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG12_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG13_UNITS : integer := 0;
    C_TRIG13_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG13_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG13_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG14_UNITS : integer := 0;
    C_TRIG14_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG14_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG14_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG15_UNITS : integer := 0;
    C_TRIG15_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG15_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG15_UNIT_MATCH_TYPE : string := "basic"

    );  
  port (

    CHIPSCOPE_ILA_CONTROL : in std_logic_vector(35 downto 0);
    CLK : in std_logic;
    DATA : in std_logic_vector(C_DATA_IN_WIDTH-1 downto 0);
    TRIG0 : in std_logic_vector(C_TRIG0_TRIGGER_IN_WIDTH-1 downto 0);
    TRIG1 : in std_logic_vector(C_TRIG1_TRIGGER_IN_WIDTH-1 downto 0);
    TRIG2 : in std_logic_vector(C_TRIG2_TRIGGER_IN_WIDTH-1 downto 0);
    TRIG3 : in std_logic_vector(C_TRIG3_TRIGGER_IN_WIDTH-1 downto 0);
    TRIG4 : in std_logic_vector(C_TRIG4_TRIGGER_IN_WIDTH-1 downto 0);
    TRIG5 : in std_logic_vector(C_TRIG5_TRIGGER_IN_WIDTH-1 downto 0);
    TRIG6 : in std_logic_vector(C_TRIG6_TRIGGER_IN_WIDTH-1 downto 0);
    TRIG7 : in std_logic_vector(C_TRIG7_TRIGGER_IN_WIDTH-1 downto 0);
    TRIG8 : in std_logic_vector(C_TRIG8_TRIGGER_IN_WIDTH-1 downto 0);
    TRIG9 : in std_logic_vector(C_TRIG9_TRIGGER_IN_WIDTH-1 downto 0);
    TRIG10 : in std_logic_vector(C_TRIG10_TRIGGER_IN_WIDTH-1 downto 0);
    TRIG11 : in std_logic_vector(C_TRIG11_TRIGGER_IN_WIDTH-1 downto 0);
    TRIG12 : in std_logic_vector(C_TRIG12_TRIGGER_IN_WIDTH-1 downto 0);
    TRIG13 : in std_logic_vector(C_TRIG13_TRIGGER_IN_WIDTH-1 downto 0);
    TRIG14 : in std_logic_vector(C_TRIG14_TRIGGER_IN_WIDTH-1 downto 0);
    TRIG15 : in std_logic_vector(C_TRIG15_TRIGGER_IN_WIDTH-1 downto 0);
    TRIG_OUT : out std_logic
    );
end entity chipscope_ila;

-----------------------------------------------------------------------------
-- Architecture section
-----------------------------------------------------------------------------

architecture imp of chipscope_ila is
    
-----------------------------------------------------------------------------
-- Component declarations
-----------------------------------------------------------------------------
  -------------------------------------------------------------------
  --
  --  ILA core component declaration
  -------------------------------------------------------------------
  component chipscope_ila_1_fsl_switch_intf is

    generic ( 
    C_FAMILY           : string   := "virtex4";
    C_NUM_DATA_SAMPLES : integer  := 4096;
    C_DATA_SAME_AS_TRIGGER : integer := 0;
    C_DATA_IN_WIDTH : integer := 243;
    C_ENABLE_TRIGGER_OUT : integer := 1;
    C_DISABLE_RPM : integer := 0;

    C_TRIG0_UNITS : integer := 1;
    C_TRIG0_TRIGGER_IN_WIDTH : integer := 4;
    C_TRIG0_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG0_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG1_UNITS : integer := 0;
    C_TRIG1_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG1_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG1_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG2_UNITS : integer := 0;
    C_TRIG2_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG2_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG2_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG3_UNITS : integer := 0;
    C_TRIG3_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG3_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG3_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG4_UNITS : integer := 0;
    C_TRIG4_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG4_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG4_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG5_UNITS : integer := 0;
    C_TRIG5_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG5_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG5_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG6_UNITS : integer := 0;
    C_TRIG6_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG6_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG6_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG7_UNITS : integer := 0;
    C_TRIG7_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG7_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG7_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG8_UNITS : integer := 0;
    C_TRIG8_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG8_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG8_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG9_UNITS : integer := 0;
    C_TRIG9_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG9_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG9_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG10_UNITS : integer := 0;
    C_TRIG10_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG10_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG10_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG11_UNITS : integer := 0;
    C_TRIG11_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG11_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG11_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG12_UNITS : integer := 0;
    C_TRIG12_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG12_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG12_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG13_UNITS : integer := 0;
    C_TRIG13_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG13_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG13_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG14_UNITS : integer := 0;
    C_TRIG14_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG14_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG14_UNIT_MATCH_TYPE : string := "basic";

    C_TRIG15_UNITS : integer := 0;
    C_TRIG15_TRIGGER_IN_WIDTH : integer := 8;
    C_TRIG15_UNIT_COUNTER_WIDTH : integer := 0;
    C_TRIG15_UNIT_MATCH_TYPE : string := "basic"
    ) ;
    port (

      trig_out      : out   std_logic;
      trig0       : in    std_logic_vector(C_TRIG0_TRIGGER_IN_WIDTH-1 downto 0);
      data           : in    std_logic_vector(C_DATA_IN_WIDTH-1 downto 0);

      clk           : in    std_logic;
      control       : in    std_logic_vector(35 downto 0)
    );
  end component chipscope_ila_1_fsl_switch_intf;
   

-----------------------------------------------------------------------------
-- Begin architecture
-----------------------------------------------------------------------------

begin  -- architecture imp



  -----------------------------------------------------------------------------
  -- ILA instantiation
  -----------------------------------------------------------------------------
  i_chipscope_ila_1_fsl_switch_intf : chipscope_ila_1_fsl_switch_intf
    generic map (
    C_FAMILY               => C_FAMILY,
    C_NUM_DATA_SAMPLES     => C_NUM_DATA_SAMPLES,
    C_DATA_SAME_AS_TRIGGER => C_DATA_SAME_AS_TRIGGER,
    C_DATA_IN_WIDTH        => C_DATA_IN_WIDTH,
    C_ENABLE_TRIGGER_OUT   => C_ENABLE_TRIGGER_OUT,
    C_DISABLE_RPM          => C_DISABLE_RPM,

    C_TRIG0_UNITS              => C_TRIG0_UNITS,
    C_TRIG0_TRIGGER_IN_WIDTH   => C_TRIG0_TRIGGER_IN_WIDTH,
    C_TRIG0_UNIT_COUNTER_WIDTH => C_TRIG0_UNIT_COUNTER_WIDTH,
    C_TRIG0_UNIT_MATCH_TYPE    => C_TRIG0_UNIT_MATCH_TYPE,

    C_TRIG1_UNITS              =>     C_TRIG1_UNITS,
    C_TRIG1_TRIGGER_IN_WIDTH   =>     C_TRIG1_TRIGGER_IN_WIDTH,
    C_TRIG1_UNIT_COUNTER_WIDTH =>     C_TRIG1_UNIT_COUNTER_WIDTH,
    C_TRIG1_UNIT_MATCH_TYPE    =>     C_TRIG1_UNIT_MATCH_TYPE,

    C_TRIG2_UNITS              =>     C_TRIG2_UNITS,
    C_TRIG2_TRIGGER_IN_WIDTH   =>     C_TRIG2_TRIGGER_IN_WIDTH,
    C_TRIG2_UNIT_COUNTER_WIDTH =>     C_TRIG2_UNIT_COUNTER_WIDTH,
    C_TRIG2_UNIT_MATCH_TYPE    =>     C_TRIG2_UNIT_MATCH_TYPE,

    C_TRIG3_UNITS              =>     C_TRIG3_UNITS,
    C_TRIG3_TRIGGER_IN_WIDTH   =>     C_TRIG3_TRIGGER_IN_WIDTH,
    C_TRIG3_UNIT_COUNTER_WIDTH =>     C_TRIG3_UNIT_COUNTER_WIDTH,
    C_TRIG3_UNIT_MATCH_TYPE    =>     C_TRIG3_UNIT_MATCH_TYPE,

    C_TRIG4_UNITS              =>     C_TRIG4_UNITS,
    C_TRIG4_TRIGGER_IN_WIDTH   =>     C_TRIG4_TRIGGER_IN_WIDTH,
    C_TRIG4_UNIT_COUNTER_WIDTH =>     C_TRIG4_UNIT_COUNTER_WIDTH,
    C_TRIG4_UNIT_MATCH_TYPE    =>     C_TRIG4_UNIT_MATCH_TYPE,

    C_TRIG5_UNITS              =>     C_TRIG5_UNITS,
    C_TRIG5_TRIGGER_IN_WIDTH   =>     C_TRIG5_TRIGGER_IN_WIDTH,
    C_TRIG5_UNIT_COUNTER_WIDTH =>     C_TRIG5_UNIT_COUNTER_WIDTH,
    C_TRIG5_UNIT_MATCH_TYPE    =>     C_TRIG5_UNIT_MATCH_TYPE,

    C_TRIG6_UNITS              =>     C_TRIG6_UNITS,
    C_TRIG6_TRIGGER_IN_WIDTH   =>     C_TRIG6_TRIGGER_IN_WIDTH,
    C_TRIG6_UNIT_COUNTER_WIDTH =>     C_TRIG6_UNIT_COUNTER_WIDTH,
    C_TRIG6_UNIT_MATCH_TYPE    =>     C_TRIG6_UNIT_MATCH_TYPE,

    C_TRIG7_UNITS              =>     C_TRIG7_UNITS,
    C_TRIG7_TRIGGER_IN_WIDTH   =>     C_TRIG7_TRIGGER_IN_WIDTH,
    C_TRIG7_UNIT_COUNTER_WIDTH =>     C_TRIG7_UNIT_COUNTER_WIDTH,
    C_TRIG7_UNIT_MATCH_TYPE    =>     C_TRIG7_UNIT_MATCH_TYPE,

    C_TRIG8_UNITS              =>     C_TRIG8_UNITS,
    C_TRIG8_TRIGGER_IN_WIDTH   =>     C_TRIG8_TRIGGER_IN_WIDTH,
    C_TRIG8_UNIT_COUNTER_WIDTH =>     C_TRIG8_UNIT_COUNTER_WIDTH,
    C_TRIG8_UNIT_MATCH_TYPE    =>     C_TRIG8_UNIT_MATCH_TYPE,

    C_TRIG9_UNITS              =>     C_TRIG9_UNITS,
    C_TRIG9_TRIGGER_IN_WIDTH   =>     C_TRIG9_TRIGGER_IN_WIDTH,
    C_TRIG9_UNIT_COUNTER_WIDTH =>     C_TRIG9_UNIT_COUNTER_WIDTH,
    C_TRIG9_UNIT_MATCH_TYPE    =>     C_TRIG9_UNIT_MATCH_TYPE,

    C_TRIG10_UNITS =>     C_TRIG10_UNITS,
    C_TRIG10_TRIGGER_IN_WIDTH =>     C_TRIG10_TRIGGER_IN_WIDTH,
    C_TRIG10_UNIT_COUNTER_WIDTH =>     C_TRIG10_UNIT_COUNTER_WIDTH,
    C_TRIG10_UNIT_MATCH_TYPE =>     C_TRIG10_UNIT_MATCH_TYPE,

    C_TRIG11_UNITS =>     C_TRIG11_UNITS,
    C_TRIG11_TRIGGER_IN_WIDTH =>     C_TRIG11_TRIGGER_IN_WIDTH,
    C_TRIG11_UNIT_COUNTER_WIDTH =>     C_TRIG11_UNIT_COUNTER_WIDTH,
    C_TRIG11_UNIT_MATCH_TYPE =>     C_TRIG11_UNIT_MATCH_TYPE,

    C_TRIG12_UNITS =>     C_TRIG12_UNITS,
    C_TRIG12_TRIGGER_IN_WIDTH =>     C_TRIG12_TRIGGER_IN_WIDTH,
    C_TRIG12_UNIT_COUNTER_WIDTH =>     C_TRIG12_UNIT_COUNTER_WIDTH,
    C_TRIG12_UNIT_MATCH_TYPE =>     C_TRIG12_UNIT_MATCH_TYPE,

    C_TRIG13_UNITS =>     C_TRIG13_UNITS,
    C_TRIG13_TRIGGER_IN_WIDTH =>     C_TRIG13_TRIGGER_IN_WIDTH,
    C_TRIG13_UNIT_COUNTER_WIDTH =>     C_TRIG13_UNIT_COUNTER_WIDTH,
    C_TRIG13_UNIT_MATCH_TYPE =>     C_TRIG13_UNIT_MATCH_TYPE,

    C_TRIG14_UNITS =>     C_TRIG14_UNITS,
    C_TRIG14_TRIGGER_IN_WIDTH =>     C_TRIG14_TRIGGER_IN_WIDTH,
    C_TRIG14_UNIT_COUNTER_WIDTH =>     C_TRIG14_UNIT_COUNTER_WIDTH,
    C_TRIG14_UNIT_MATCH_TYPE =>     C_TRIG14_UNIT_MATCH_TYPE,

    C_TRIG15_UNITS =>     C_TRIG15_UNITS,
    C_TRIG15_TRIGGER_IN_WIDTH =>     C_TRIG15_TRIGGER_IN_WIDTH,
    C_TRIG15_UNIT_COUNTER_WIDTH =>     C_TRIG15_UNIT_COUNTER_WIDTH,
    C_TRIG15_UNIT_MATCH_TYPE =>     C_TRIG15_UNIT_MATCH_TYPE
    )
    port map
    (

      trig_out    => trig_out,
      trig0       => trig0,
      data        => data,

      clk           => clk,
      control       => chipscope_ila_control
    );

end architecture imp;

