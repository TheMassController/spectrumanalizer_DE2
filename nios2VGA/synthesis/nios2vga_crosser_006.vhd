-- nios2vga_crosser_006.vhd

-- Generated using ACDS version 13.0sp1 232 at 2014.01.08.17:25:47

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity nios2vga_crosser_006 is
	generic (
		DATA_WIDTH          : integer := 82;
		BITS_PER_SYMBOL     : integer := 82;
		USE_PACKETS         : integer := 1;
		USE_CHANNEL         : integer := 1;
		CHANNEL_WIDTH       : integer := 20;
		USE_ERROR           : integer := 0;
		ERROR_WIDTH         : integer := 1;
		VALID_SYNC_DEPTH    : integer := 2;
		READY_SYNC_DEPTH    : integer := 2;
		USE_OUTPUT_PIPELINE : integer := 0
	);
	port (
		in_clk            : in  std_logic                     := '0';             --        in_clk.clk
		in_reset          : in  std_logic                     := '0';             --  in_clk_reset.reset
		out_clk           : in  std_logic                     := '0';             --       out_clk.clk
		out_reset         : in  std_logic                     := '0';             -- out_clk_reset.reset
		in_ready          : out std_logic;                                        --            in.ready
		in_valid          : in  std_logic                     := '0';             --              .valid
		in_startofpacket  : in  std_logic                     := '0';             --              .startofpacket
		in_endofpacket    : in  std_logic                     := '0';             --              .endofpacket
		in_channel        : in  std_logic_vector(19 downto 0) := (others => '0'); --              .channel
		in_data           : in  std_logic_vector(81 downto 0) := (others => '0'); --              .data
		out_ready         : in  std_logic                     := '0';             --           out.ready
		out_valid         : out std_logic;                                        --              .valid
		out_startofpacket : out std_logic;                                        --              .startofpacket
		out_endofpacket   : out std_logic;                                        --              .endofpacket
		out_channel       : out std_logic_vector(19 downto 0);                    --              .channel
		out_data          : out std_logic_vector(81 downto 0);                    --              .data
		in_empty          : in  std_logic                     := '0';
		in_error          : in  std_logic                     := '0';
		out_empty         : out std_logic;
		out_error         : out std_logic
	);
end entity nios2vga_crosser_006;

architecture rtl of nios2vga_crosser_006 is
	component altera_avalon_st_handshake_clock_crosser is
		generic (
			DATA_WIDTH          : integer := 8;
			BITS_PER_SYMBOL     : integer := 8;
			USE_PACKETS         : integer := 0;
			USE_CHANNEL         : integer := 0;
			CHANNEL_WIDTH       : integer := 1;
			USE_ERROR           : integer := 0;
			ERROR_WIDTH         : integer := 1;
			VALID_SYNC_DEPTH    : integer := 2;
			READY_SYNC_DEPTH    : integer := 2;
			USE_OUTPUT_PIPELINE : integer := 1
		);
		port (
			in_clk            : in  std_logic                     := 'X';             -- clk
			in_reset          : in  std_logic                     := 'X';             -- reset
			out_clk           : in  std_logic                     := 'X';             -- clk
			out_reset         : in  std_logic                     := 'X';             -- reset
			in_ready          : out std_logic;                                        -- ready
			in_valid          : in  std_logic                     := 'X';             -- valid
			in_startofpacket  : in  std_logic                     := 'X';             -- startofpacket
			in_endofpacket    : in  std_logic                     := 'X';             -- endofpacket
			in_channel        : in  std_logic_vector(19 downto 0) := (others => 'X'); -- channel
			in_data           : in  std_logic_vector(81 downto 0) := (others => 'X'); -- data
			out_ready         : in  std_logic                     := 'X';             -- ready
			out_valid         : out std_logic;                                        -- valid
			out_startofpacket : out std_logic;                                        -- startofpacket
			out_endofpacket   : out std_logic;                                        -- endofpacket
			out_channel       : out std_logic_vector(19 downto 0);                    -- channel
			out_data          : out std_logic_vector(81 downto 0);                    -- data
			in_empty          : in  std_logic                     := 'X';             -- empty
			in_error          : in  std_logic                     := 'X';             -- error
			out_empty         : out std_logic;                                        -- empty
			out_error         : out std_logic                                         -- error
		);
	end component altera_avalon_st_handshake_clock_crosser;

begin

	crosser_006 : component altera_avalon_st_handshake_clock_crosser
		generic map (
			DATA_WIDTH          => DATA_WIDTH,
			BITS_PER_SYMBOL     => BITS_PER_SYMBOL,
			USE_PACKETS         => USE_PACKETS,
			USE_CHANNEL         => USE_CHANNEL,
			CHANNEL_WIDTH       => CHANNEL_WIDTH,
			USE_ERROR           => USE_ERROR,
			ERROR_WIDTH         => ERROR_WIDTH,
			VALID_SYNC_DEPTH    => VALID_SYNC_DEPTH,
			READY_SYNC_DEPTH    => READY_SYNC_DEPTH,
			USE_OUTPUT_PIPELINE => USE_OUTPUT_PIPELINE
		)
		port map (
			in_clk            => in_clk,            --        in_clk.clk
			in_reset          => in_reset,          --  in_clk_reset.reset
			out_clk           => out_clk,           --       out_clk.clk
			out_reset         => out_reset,         -- out_clk_reset.reset
			in_ready          => in_ready,          --            in.ready
			in_valid          => in_valid,          --              .valid
			in_startofpacket  => in_startofpacket,  --              .startofpacket
			in_endofpacket    => in_endofpacket,    --              .endofpacket
			in_channel        => in_channel,        --              .channel
			in_data           => in_data,           --              .data
			out_ready         => out_ready,         --           out.ready
			out_valid         => out_valid,         --              .valid
			out_startofpacket => out_startofpacket, --              .startofpacket
			out_endofpacket   => out_endofpacket,   --              .endofpacket
			out_channel       => out_channel,       --              .channel
			out_data          => out_data,          --              .data
			in_empty          => '0',               --   (terminated)
			in_error          => '0',               --   (terminated)
			out_empty         => open,              --   (terminated)
			out_error         => open               --   (terminated)
		);

end architecture rtl; -- of nios2vga_crosser_006