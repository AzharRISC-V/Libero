----------------------------------------------------------------------
-- Created by SmartDesign Mon Mar 23 15:12:44 2020
-- Version: v12.3 12.800.0.16
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library polarfire;
use polarfire.all;
library COREAPB3_LIB;
use COREAPB3_LIB.all;
use COREAPB3_LIB.components.all;
----------------------------------------------------------------------
-- APB3 entity declaration
----------------------------------------------------------------------
entity APB3 is
    -- Port list
    port(
        -- Inputs
        PADDR      : in  std_logic_vector(31 downto 0);
        PENABLE    : in  std_logic;
        PRDATAS0   : in  std_logic_vector(31 downto 0);
        PRDATAS1   : in  std_logic_vector(31 downto 0);
        PRDATAS10  : in  std_logic_vector(31 downto 0);
        PRDATAS11  : in  std_logic_vector(31 downto 0);
        PRDATAS12  : in  std_logic_vector(31 downto 0);
        PRDATAS13  : in  std_logic_vector(31 downto 0);
        PRDATAS2   : in  std_logic_vector(31 downto 0);
        PRDATAS3   : in  std_logic_vector(31 downto 0);
        PRDATAS4   : in  std_logic_vector(31 downto 0);
        PRDATAS5   : in  std_logic_vector(31 downto 0);
        PRDATAS6   : in  std_logic_vector(31 downto 0);
        PRDATAS7   : in  std_logic_vector(31 downto 0);
        PRDATAS8   : in  std_logic_vector(31 downto 0);
        PRDATAS9   : in  std_logic_vector(31 downto 0);
        PREADYS0   : in  std_logic;
        PREADYS1   : in  std_logic;
        PREADYS10  : in  std_logic;
        PREADYS11  : in  std_logic;
        PREADYS12  : in  std_logic;
        PREADYS13  : in  std_logic;
        PREADYS2   : in  std_logic;
        PREADYS3   : in  std_logic;
        PREADYS4   : in  std_logic;
        PREADYS5   : in  std_logic;
        PREADYS6   : in  std_logic;
        PREADYS7   : in  std_logic;
        PREADYS8   : in  std_logic;
        PREADYS9   : in  std_logic;
        PSEL       : in  std_logic;
        PSLVERRS0  : in  std_logic;
        PSLVERRS1  : in  std_logic;
        PSLVERRS10 : in  std_logic;
        PSLVERRS11 : in  std_logic;
        PSLVERRS12 : in  std_logic;
        PSLVERRS13 : in  std_logic;
        PSLVERRS2  : in  std_logic;
        PSLVERRS3  : in  std_logic;
        PSLVERRS4  : in  std_logic;
        PSLVERRS5  : in  std_logic;
        PSLVERRS6  : in  std_logic;
        PSLVERRS7  : in  std_logic;
        PSLVERRS8  : in  std_logic;
        PSLVERRS9  : in  std_logic;
        PWDATA     : in  std_logic_vector(31 downto 0);
        PWRITE     : in  std_logic;
        -- Outputs
        PADDRS     : out std_logic_vector(31 downto 0);
        PENABLES   : out std_logic;
        PRDATA     : out std_logic_vector(31 downto 0);
        PREADY     : out std_logic;
        PSELS0     : out std_logic;
        PSELS1     : out std_logic;
        PSELS10    : out std_logic;
        PSELS11    : out std_logic;
        PSELS12    : out std_logic;
        PSELS13    : out std_logic;
        PSELS2     : out std_logic;
        PSELS3     : out std_logic;
        PSELS4     : out std_logic;
        PSELS5     : out std_logic;
        PSELS6     : out std_logic;
        PSELS7     : out std_logic;
        PSELS8     : out std_logic;
        PSELS9     : out std_logic;
        PSLVERR    : out std_logic;
        PWDATAS    : out std_logic_vector(31 downto 0);
        PWRITES    : out std_logic
        );
end APB3;
----------------------------------------------------------------------
-- APB3 architecture body
----------------------------------------------------------------------
architecture RTL of APB3 is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.1.100
-- using entity instantiation for component CoreAPB3
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal APB3mmaster_PRDATA         : std_logic_vector(31 downto 0);
signal APB3mmaster_PREADY         : std_logic;
signal APB3mmaster_PSLVERR        : std_logic;
signal APBmslave0_4_PADDR         : std_logic_vector(31 downto 0);
signal APBmslave0_4_PENABLE       : std_logic;
signal APBmslave0_4_PSELx         : std_logic;
signal APBmslave0_4_PWDATA        : std_logic_vector(31 downto 0);
signal APBmslave0_4_PWRITE        : std_logic;
signal APBmslave1_4_PSELx         : std_logic;
signal APBmslave2_4_PSELx         : std_logic;
signal APBmslave3_3_PSELx         : std_logic;
signal APBmslave4_1_PSELx         : std_logic;
signal APBmslave5_0_PSELx         : std_logic;
signal APBmslave6_0_PSELx         : std_logic;
signal APBmslave7_0_PSELx         : std_logic;
signal APBmslave8_0_PSELx         : std_logic;
signal APBmslave9_0_PSELx         : std_logic;
signal APBmslave10_0_PSELx        : std_logic;
signal APBmslave11_0_PSELx        : std_logic;
signal APBmslave12_0_PSELx        : std_logic;
signal APBmslave13_0_PSELx        : std_logic;
signal APB3mmaster_PRDATA_net_0   : std_logic_vector(31 downto 0);
signal APB3mmaster_PREADY_net_0   : std_logic;
signal APB3mmaster_PSLVERR_net_0  : std_logic;
signal APBmslave0_4_PADDR_net_0   : std_logic_vector(31 downto 0);
signal APBmslave0_4_PSELx_net_0   : std_logic;
signal APBmslave0_4_PENABLE_net_0 : std_logic;
signal APBmslave0_4_PWRITE_net_0  : std_logic;
signal APBmslave0_4_PWDATA_net_0  : std_logic_vector(31 downto 0);
signal APBmslave1_4_PSELx_net_0   : std_logic;
signal APBmslave2_4_PSELx_net_0   : std_logic;
signal APBmslave3_3_PSELx_net_0   : std_logic;
signal APBmslave4_1_PSELx_net_0   : std_logic;
signal APBmslave5_0_PSELx_net_0   : std_logic;
signal APBmslave6_0_PSELx_net_0   : std_logic;
signal APBmslave7_0_PSELx_net_0   : std_logic;
signal APBmslave8_0_PSELx_net_0   : std_logic;
signal APBmslave9_0_PSELx_net_0   : std_logic;
signal APBmslave10_0_PSELx_net_0  : std_logic;
signal APBmslave11_0_PSELx_net_0  : std_logic;
signal APBmslave12_0_PSELx_net_0  : std_logic;
signal APBmslave13_0_PSELx_net_0  : std_logic;
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal GND_net                    : std_logic;
signal VCC_net                    : std_logic;
signal IADDR_const_net_0          : std_logic_vector(31 downto 0);
signal PRDATAS14_const_net_0      : std_logic_vector(31 downto 0);
signal PRDATAS15_const_net_0      : std_logic_vector(31 downto 0);
signal PRDATAS16_const_net_0      : std_logic_vector(31 downto 0);

begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 GND_net               <= '0';
 VCC_net               <= '1';
 IADDR_const_net_0     <= B"00000000000000000000000000000000";
 PRDATAS14_const_net_0 <= B"00000000000000000000000000000000";
 PRDATAS15_const_net_0 <= B"00000000000000000000000000000000";
 PRDATAS16_const_net_0 <= B"00000000000000000000000000000000";
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 APB3mmaster_PRDATA_net_0   <= APB3mmaster_PRDATA;
 PRDATA(31 downto 0)        <= APB3mmaster_PRDATA_net_0;
 APB3mmaster_PREADY_net_0   <= APB3mmaster_PREADY;
 PREADY                     <= APB3mmaster_PREADY_net_0;
 APB3mmaster_PSLVERR_net_0  <= APB3mmaster_PSLVERR;
 PSLVERR                    <= APB3mmaster_PSLVERR_net_0;
 APBmslave0_4_PADDR_net_0   <= APBmslave0_4_PADDR;
 PADDRS(31 downto 0)        <= APBmslave0_4_PADDR_net_0;
 APBmslave0_4_PSELx_net_0   <= APBmslave0_4_PSELx;
 PSELS0                     <= APBmslave0_4_PSELx_net_0;
 APBmslave0_4_PENABLE_net_0 <= APBmslave0_4_PENABLE;
 PENABLES                   <= APBmslave0_4_PENABLE_net_0;
 APBmslave0_4_PWRITE_net_0  <= APBmslave0_4_PWRITE;
 PWRITES                    <= APBmslave0_4_PWRITE_net_0;
 APBmslave0_4_PWDATA_net_0  <= APBmslave0_4_PWDATA;
 PWDATAS(31 downto 0)       <= APBmslave0_4_PWDATA_net_0;
 APBmslave1_4_PSELx_net_0   <= APBmslave1_4_PSELx;
 PSELS1                     <= APBmslave1_4_PSELx_net_0;
 APBmslave2_4_PSELx_net_0   <= APBmslave2_4_PSELx;
 PSELS2                     <= APBmslave2_4_PSELx_net_0;
 APBmslave3_3_PSELx_net_0   <= APBmslave3_3_PSELx;
 PSELS3                     <= APBmslave3_3_PSELx_net_0;
 APBmslave4_1_PSELx_net_0   <= APBmslave4_1_PSELx;
 PSELS4                     <= APBmslave4_1_PSELx_net_0;
 APBmslave5_0_PSELx_net_0   <= APBmslave5_0_PSELx;
 PSELS5                     <= APBmslave5_0_PSELx_net_0;
 APBmslave6_0_PSELx_net_0   <= APBmslave6_0_PSELx;
 PSELS6                     <= APBmslave6_0_PSELx_net_0;
 APBmslave7_0_PSELx_net_0   <= APBmslave7_0_PSELx;
 PSELS7                     <= APBmslave7_0_PSELx_net_0;
 APBmslave8_0_PSELx_net_0   <= APBmslave8_0_PSELx;
 PSELS8                     <= APBmslave8_0_PSELx_net_0;
 APBmslave9_0_PSELx_net_0   <= APBmslave9_0_PSELx;
 PSELS9                     <= APBmslave9_0_PSELx_net_0;
 APBmslave10_0_PSELx_net_0  <= APBmslave10_0_PSELx;
 PSELS10                    <= APBmslave10_0_PSELx_net_0;
 APBmslave11_0_PSELx_net_0  <= APBmslave11_0_PSELx;
 PSELS11                    <= APBmslave11_0_PSELx_net_0;
 APBmslave12_0_PSELx_net_0  <= APBmslave12_0_PSELx;
 PSELS12                    <= APBmslave12_0_PSELx_net_0;
 APBmslave13_0_PSELx_net_0  <= APBmslave13_0_PSELx;
 PSELS13                    <= APBmslave13_0_PSELx_net_0;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- APB3_0   -   Actel:DirectCore:CoreAPB3:4.1.100
APB3_0 : entity COREAPB3_LIB.CoreAPB3
    generic map( 
        APB_DWIDTH      => ( 32 ),
        APBSLOT0ENABLE  => ( 1 ),
        APBSLOT1ENABLE  => ( 1 ),
        APBSLOT2ENABLE  => ( 1 ),
        APBSLOT3ENABLE  => ( 1 ),
        APBSLOT4ENABLE  => ( 1 ),
        APBSLOT5ENABLE  => ( 1 ),
        APBSLOT6ENABLE  => ( 1 ),
        APBSLOT7ENABLE  => ( 1 ),
        APBSLOT8ENABLE  => ( 1 ),
        APBSLOT9ENABLE  => ( 1 ),
        APBSLOT10ENABLE => ( 1 ),
        APBSLOT11ENABLE => ( 1 ),
        APBSLOT12ENABLE => ( 1 ),
        APBSLOT13ENABLE => ( 1 ),
        APBSLOT14ENABLE => ( 0 ),
        APBSLOT15ENABLE => ( 0 ),
        FAMILY          => ( 19 ),
        IADDR_OPTION    => ( 0 ),
        MADDR_BITS      => ( 16 ),
        SC_0            => ( 0 ),
        SC_1            => ( 0 ),
        SC_2            => ( 0 ),
        SC_3            => ( 0 ),
        SC_4            => ( 0 ),
        SC_5            => ( 0 ),
        SC_6            => ( 0 ),
        SC_7            => ( 0 ),
        SC_8            => ( 0 ),
        SC_9            => ( 0 ),
        SC_10           => ( 0 ),
        SC_11           => ( 0 ),
        SC_12           => ( 0 ),
        SC_13           => ( 0 ),
        SC_14           => ( 0 ),
        SC_15           => ( 0 ),
        UPR_NIBBLE_POSN => ( 6 )
        )
    port map( 
        -- Inputs
        PRESETN    => GND_net, -- tied to '0' from definition
        PCLK       => GND_net, -- tied to '0' from definition
        PWRITE     => PWRITE,
        PENABLE    => PENABLE,
        PSEL       => PSEL,
        PREADYS0   => PREADYS0,
        PSLVERRS0  => PSLVERRS0,
        PREADYS1   => PREADYS1,
        PSLVERRS1  => PSLVERRS1,
        PREADYS2   => PREADYS2,
        PSLVERRS2  => PSLVERRS2,
        PREADYS3   => PREADYS3,
        PSLVERRS3  => PSLVERRS3,
        PREADYS4   => PREADYS4,
        PSLVERRS4  => PSLVERRS4,
        PREADYS5   => PREADYS5,
        PSLVERRS5  => PSLVERRS5,
        PREADYS6   => PREADYS6,
        PSLVERRS6  => PSLVERRS6,
        PREADYS7   => PREADYS7,
        PSLVERRS7  => PSLVERRS7,
        PREADYS8   => PREADYS8,
        PSLVERRS8  => PSLVERRS8,
        PREADYS9   => PREADYS9,
        PSLVERRS9  => PSLVERRS9,
        PREADYS10  => PREADYS10,
        PSLVERRS10 => PSLVERRS10,
        PREADYS11  => PREADYS11,
        PSLVERRS11 => PSLVERRS11,
        PREADYS12  => PREADYS12,
        PSLVERRS12 => PSLVERRS12,
        PREADYS13  => PREADYS13,
        PSLVERRS13 => PSLVERRS13,
        PREADYS14  => VCC_net, -- tied to '1' from definition
        PSLVERRS14 => GND_net, -- tied to '0' from definition
        PREADYS15  => VCC_net, -- tied to '1' from definition
        PSLVERRS15 => GND_net, -- tied to '0' from definition
        PREADYS16  => VCC_net, -- tied to '1' from definition
        PSLVERRS16 => GND_net, -- tied to '0' from definition
        PADDR      => PADDR,
        PWDATA     => PWDATA,
        PRDATAS0   => PRDATAS0,
        PRDATAS1   => PRDATAS1,
        PRDATAS2   => PRDATAS2,
        PRDATAS3   => PRDATAS3,
        PRDATAS4   => PRDATAS4,
        PRDATAS5   => PRDATAS5,
        PRDATAS6   => PRDATAS6,
        PRDATAS7   => PRDATAS7,
        PRDATAS8   => PRDATAS8,
        PRDATAS9   => PRDATAS9,
        PRDATAS10  => PRDATAS10,
        PRDATAS11  => PRDATAS11,
        PRDATAS12  => PRDATAS12,
        PRDATAS13  => PRDATAS13,
        PRDATAS14  => PRDATAS14_const_net_0, -- tied to X"0" from definition
        PRDATAS15  => PRDATAS15_const_net_0, -- tied to X"0" from definition
        PRDATAS16  => PRDATAS16_const_net_0, -- tied to X"0" from definition
        IADDR      => IADDR_const_net_0, -- tied to X"0" from definition
        -- Outputs
        PREADY     => APB3mmaster_PREADY,
        PSLVERR    => APB3mmaster_PSLVERR,
        PWRITES    => APBmslave0_4_PWRITE,
        PENABLES   => APBmslave0_4_PENABLE,
        PSELS0     => APBmslave0_4_PSELx,
        PSELS1     => APBmslave1_4_PSELx,
        PSELS2     => APBmslave2_4_PSELx,
        PSELS3     => APBmslave3_3_PSELx,
        PSELS4     => APBmslave4_1_PSELx,
        PSELS5     => APBmslave5_0_PSELx,
        PSELS6     => APBmslave6_0_PSELx,
        PSELS7     => APBmslave7_0_PSELx,
        PSELS8     => APBmslave8_0_PSELx,
        PSELS9     => APBmslave9_0_PSELx,
        PSELS10    => APBmslave10_0_PSELx,
        PSELS11    => APBmslave11_0_PSELx,
        PSELS12    => APBmslave12_0_PSELx,
        PSELS13    => APBmslave13_0_PSELx,
        PSELS14    => OPEN,
        PSELS15    => OPEN,
        PSELS16    => OPEN,
        PRDATA     => APB3mmaster_PRDATA,
        PADDRS     => APBmslave0_4_PADDR,
        PWDATAS    => APBmslave0_4_PWDATA 
        );

end RTL;
