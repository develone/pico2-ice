-- Timing params:
--   Fixed?: False
--   Pipeline Slices: []
--   Input regs?: False
--   Output regs?: False
library std;
use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.float_pkg.all;
use work.c_structs_pkg.all;
use work.global_wires_pkg.all;
-- Submodules: 2
entity no_skid_rmii_eth_mac_rx_fifo_wr_stream_in_0CLK_a5a1cd4e is
port(
 CLOCK_ENABLE : in unsigned(0 downto 0);
 global_to_module : in no_skid_rmii_eth_mac_rx_fifo_wr_stream_in_global_to_module_t;
 module_to_global : out no_skid_rmii_eth_mac_rx_fifo_wr_stream_in_module_to_global_t);
end no_skid_rmii_eth_mac_rx_fifo_wr_stream_in_0CLK_a5a1cd4e;
architecture arch of no_skid_rmii_eth_mac_rx_fifo_wr_stream_in_0CLK_a5a1cd4e is
-- Types and such
-- Declarations
attribute mark_debug : string;
constant ADDED_PIPELINE_LATENCY : integer := 0;
-- All of the wires/regs in function
-- Resolved maybe from input reg clock enable
signal clk_en_internal : std_logic;
-- Each function instance gets signals
function CONST_REF_RD_axis8_t_1_axis8_t_1_4e8d( ref_toks_0 : axis8_t) return axis8_t_1 is
 
  variable base : axis8_t_1; 
  variable return_output : axis8_t_1;
begin
      base(0) := ref_toks_0;

      return_output := base;
      return return_output; 
end function;


begin

-- SUBMODULE INSTANCES 


-- Resolve what clock enable to use for user logic
clk_en_internal <= CLOCK_ENABLE(0);
-- Combinatorial process for pipeline stages
process (
CLOCK_ENABLE,
clk_en_internal,
 -- Clock cross input
 global_to_module)
is 
 -- All of the wires in function
 variable VAR_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_no_skid_rmii_eth_mac_rx_fifo_in : axis8_t_stream_t;
 variable VAR_no_skid_rmii_eth_mac_rx_fifo_in_ready : unsigned(0 downto 0);
 variable VAR_din : axis8_t_1;
 variable VAR_CONST_REF_RD_axis8_t_axis8_t_stream_t_data_d41d_rmii_eth_mac_c_l8_c71_32d4_return_output : axis8_t;
 variable VAR_wr : no_skid_rmii_eth_mac_rx_fifo_FIFO_write_t;
 variable VAR_no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_rmii_eth_mac_c_l8_c158_eb35_write_data : axis8_t_1;
 variable VAR_no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_rmii_eth_mac_c_l8_c158_eb35_write_enable : unsigned(0 downto 0);
 variable VAR_CONST_REF_RD_axis8_t_1_axis8_t_1_4e8d_rmii_eth_mac_c_l8_c200_337c_return_output : axis8_t_1;
 variable VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_rmii_eth_mac_c_l8_c205_174d_return_output : unsigned(0 downto 0);
 variable VAR_no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_rmii_eth_mac_c_l8_c158_eb35_CLOCK_ENABLE : unsigned(0 downto 0);
 variable VAR_no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_rmii_eth_mac_c_l8_c158_eb35_return_output : no_skid_rmii_eth_mac_rx_fifo_FIFO_write_t;
 variable VAR_CONST_REF_RD_uint1_t_no_skid_rmii_eth_mac_rx_fifo_FIFO_write_t_ready_d41d_rmii_eth_mac_c_l8_c285_8ed2_return_output : unsigned(0 downto 0);
begin
 -- Reads from global variables
     VAR_no_skid_rmii_eth_mac_rx_fifo_in := global_to_module.no_skid_rmii_eth_mac_rx_fifo_in;
     -- Submodule level 0
     -- CONST_REF_RD_axis8_t_axis8_t_stream_t_data_d41d[rmii_eth_mac_c_l8_c71_32d4] LATENCY=0
     VAR_CONST_REF_RD_axis8_t_axis8_t_stream_t_data_d41d_rmii_eth_mac_c_l8_c71_32d4_return_output := VAR_no_skid_rmii_eth_mac_rx_fifo_in.data;

     -- CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d[rmii_eth_mac_c_l8_c205_174d] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_rmii_eth_mac_c_l8_c205_174d_return_output := VAR_no_skid_rmii_eth_mac_rx_fifo_in.valid;

     -- Submodule level 1
     VAR_no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_rmii_eth_mac_c_l8_c158_eb35_write_enable := VAR_CONST_REF_RD_uint1_t_axis8_t_stream_t_valid_d41d_rmii_eth_mac_c_l8_c205_174d_return_output;
     -- CONST_REF_RD_axis8_t_1_axis8_t_1_4e8d[rmii_eth_mac_c_l8_c200_337c] LATENCY=0
     VAR_CONST_REF_RD_axis8_t_1_axis8_t_1_4e8d_rmii_eth_mac_c_l8_c200_337c_return_output := CONST_REF_RD_axis8_t_1_axis8_t_1_4e8d(
     VAR_CONST_REF_RD_axis8_t_axis8_t_stream_t_data_d41d_rmii_eth_mac_c_l8_c71_32d4_return_output);

     -- Submodule level 2
     VAR_no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_rmii_eth_mac_c_l8_c158_eb35_write_data := VAR_CONST_REF_RD_axis8_t_1_axis8_t_1_4e8d_rmii_eth_mac_c_l8_c200_337c_return_output;

 -- Loop to construct simultaneous register transfers for each of the pipeline stages
 -- LATENCY=0 is combinational Logic
 for STAGE in 0 to ADDED_PIPELINE_LATENCY loop
   if STAGE = 0 then
     -- Mux in clock enable
     VAR_CLOCK_ENABLE(0) := clk_en_internal;

     -- Submodule level 0
     VAR_no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_rmii_eth_mac_c_l8_c158_eb35_CLOCK_ENABLE := VAR_CLOCK_ENABLE;
     -- no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1[rmii_eth_mac_c_l8_c158_eb35] LATENCY=0
     -- Clock enable
     module_to_global.no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_CLOCK_ENABLE <= VAR_no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_rmii_eth_mac_c_l8_c158_eb35_CLOCK_ENABLE;
     -- Inputs
     module_to_global.no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_write_data <= VAR_no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_rmii_eth_mac_c_l8_c158_eb35_write_data;
     module_to_global.no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_write_enable <= VAR_no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_rmii_eth_mac_c_l8_c158_eb35_write_enable;
     -- Outputs
     VAR_no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_rmii_eth_mac_c_l8_c158_eb35_return_output := global_to_module.no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_return_output;

     -- Submodule level 1
     -- CONST_REF_RD_uint1_t_no_skid_rmii_eth_mac_rx_fifo_FIFO_write_t_ready_d41d[rmii_eth_mac_c_l8_c285_8ed2] LATENCY=0
     VAR_CONST_REF_RD_uint1_t_no_skid_rmii_eth_mac_rx_fifo_FIFO_write_t_ready_d41d_rmii_eth_mac_c_l8_c285_8ed2_return_output := VAR_no_skid_rmii_eth_mac_rx_fifo_FIFO_WRITE_1_rmii_eth_mac_c_l8_c158_eb35_return_output.ready;

     -- Submodule level 2
     VAR_no_skid_rmii_eth_mac_rx_fifo_in_ready := VAR_CONST_REF_RD_uint1_t_no_skid_rmii_eth_mac_rx_fifo_FIFO_write_t_ready_d41d_rmii_eth_mac_c_l8_c285_8ed2_return_output;
   end if;
 end loop;

-- Global wires driven various places in pipeline
if clk_en_internal='1' then
  module_to_global.no_skid_rmii_eth_mac_rx_fifo_in_ready <= VAR_no_skid_rmii_eth_mac_rx_fifo_in_ready;
else
  module_to_global.no_skid_rmii_eth_mac_rx_fifo_in_ready <= to_unsigned(0, 1);
end if;
end process;

end arch;
