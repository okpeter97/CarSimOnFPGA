-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity sin_or_cos_doubledEe_rom is 
    generic(
             DWIDTH     : integer := 59; 
             AWIDTH     : integer := 8; 
             MEM_SIZE    : integer := 256
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of sin_or_cos_doubledEe_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10000000000000000000000000000000000000000000000000000000000", 
    1 => "01111111111111110110001000010110001110100010101001001001001", 
    2 => "01111111111111011000100001011010011011100100101101101101010", 
    3 => "01111111111110100111001011010001001011010100011010000100101", 
    4 => "01111111111101100010000110000010000100110011010000110010110", 
    5 => "01111111111100001001010001110111110001110100111111100000101", 
    6 => "01111111111010011100101110111111111110111101110101110010010", 
    7 => "01111111111000011100011101101011011011100000011101111100100", 
    8 => "01111111110110001000011110001101111001011011010111110111010", 
    9 => "01111111110011100000110000111110001101010101110101101110111", 
    10 => "01111111110000100101010110010110001110011100011010110100101", 
    11 => "01111111101101010110001110110010110110011100111100001110110", 
    12 => "01111111101001110011011010110100000001100010000011101000000", 
    13 => "01111111100101111100111010111100101110001110010100000001010", 
    14 => "01111111100001110010101111110010111101010110110000100100000", 
    15 => "01111111011101010100111001111111110001111101000101010110101", 
    16 => "01111111011000100011011010001111010001001001010010010110000", 
    17 => "01111111010011011110010001010000100010000010111000010000110", 
    18 => "01111111001110000101011111110101101101101001100111101010110", 
    19 => "01111111001000011001000110110011111110101101110010000100101", 
    20 => "01111111000010011001000111000011100001100111111101001100100", 
    21 => "01111110111100000101100001011111100100010000011000010111010", 
    22 => "01111110110101011110010111000110010101110101110100000011111", 
    23 => "01111110101110100011101000111001000110110011111011101010101", 
    24 => "01111110100111010101010111111100001000101001010001011001110", 
    25 => "01111110011111110011100101010110101101101100101100100000001", 
    26 => "01111110010111111110010010010011001001000010011001101001010", 
    27 => "01111110001111110101011111111110101110010000011101101010011", 
    28 => "01111110000111011001001111101001110001010010111010100100000", 
    29 => "01111101111110101001100010100111100110001111010110111000110", 
    30 => "01111101110101100110011010001110100001001000000111011100101", 
    31 => "01111101101100001111110111110111110101101110111011011011110", 
    32 => "01111101100010100101111100111111110111010111001010111111101", 
    33 => "01111101011000101000101011000101111000100111101000001111100", 
    34 => "01111101001110011000000011101100001011001011110010110010001", 
    35 => "01111101000011110100001000010111111111100100101101110001011", 
    36 => "01111100111000111100111010110001100100111001011000100010000", 
    37 => "01111100101101110010011100100100001000100110101001110010111", 
    38 => "01111100100010010100101111011101110110001110101101100101101", 
    39 => "01111100010110100011110101001111110111001000000101110010100", 
    40 => "01111100001010011111101111101110010010001100001101011011011", 
    41 => "01111011111110001000100000110000001011100101011110110000100", 
    42 => "01111011110001011110001010001111100100011100111100001000001", 
    43 => "01111011100100100000101110001001011010100111011011101101110", 
    44 => "01111011010111010000001110011101101000010010010110001011101", 
    45 => "01111011001001101100101101001111000011101111111000001111001", 
    46 => "01111010111011110110001100100011011111000010110111001111100", 
    47 => "01111010101101101100101110100011100111101010001000110101000", 
    48 => "01111010011111010000010101011011000110001011011101101000000", 
    49 => "01111010010000100001000011011000011101111101111111001000010", 
    50 => "01111010000001011110111010101101001100110100010000110001100", 
    51 => "01111001110010001001111101101101101010100101110100001111100", 
    52 => "01111001100010100010001110110001001000111000010001000110001", 
    53 => "01111001010010100111110000010001110010100111111111101111111", 
    54 => "01111001000010011010100100101100101011110000010111111000000", 
    55 => "01111000110001111010101110100001110000110011100010010001011", 
    56 => "01111000100001001000010000010011110110100001101110010001010", 
    57 => "01111000010000000011001100101000101001100000001010101110000", 
    58 => "01110111111110101011100110001000101101101111100010101000111", 
    59 => "01110111101101000001011111011111011110010001111101100101000", 
    60 => "01110111011011000100111011011011001100110000100011101111101", 
    61 => "01110111001000110101111100101101000001000000100101111110111", 
    62 => "01110110110110010100100110001000111000101000001001101001010", 
    63 => "01110110100011100000111010100101100110100010011000011100110", 
    64 => "01110110010000011010111100111100110010100011010100010110101", 
    65 => "01110101111101000010110000001010111000111011001111100011100", 
    66 => "01110101101001011000010111001111001001111001101000101001000", 
    67 => "01110101010101011011110101001011101001001111101011000000100", 
    68 => "01110101000001001101001101000101001101110010010011100100101", 
    69 => "01110100101100101100100010000011100000111011111001111000111", 
    70 => "01110100010111111001110111010000111110001101011101101101110", 
    71 => "01110100000010110101001111111010110010101111011001000110111", 
    72 => "01110011101101011110101111010000111100110001110111001001101", 
    73 => "01110011010111110110011000100110001011001100101111010101010", 
    74 => "01110011000001111100001111001111111100111111000101101110110", 
    75 => "01110010101011110000010110100110100000101110001111111111100", 
    76 => "01110010010101010010110010000100110100000100011111010001100", 
    77 => "01110001111110100011100101001000100011001111001111001010001", 
    78 => "01110001100111100010110011010010001000011100111001101010001", 
    79 => "01110001010000010000100000000100101011011010010000011001010", 
    80 => "01110000111000101100101111000110000000101111011011000000111", 
    81 => "01110000100000110111100011111110101001011100011010111011111", 
    82 => "01110000001000110001000010011001110010010101010100100001110", 
    83 => "01101111110000011001001110000101010011011101111101110001110", 
    84 => "01101111010111110000001010110001101111100101010010100100000", 
    85 => "01101110111110110101111100010010010011100000001110100101100", 
    86 => "01101110100101101010100110011100110101100100001101000110111", 
    87 => "01101110001100001110001101001001110101000001001110100000010", 
    88 => "01101101110010100000110100010100011001011011100011110011101", 
    89 => "01101101011000100010011111111010010010000101000000010000111", 
    90 => "01101100111110010011010011111011110101010101110001000011011", 
    91 => "01101100100011110011010100011100000000000100111011001110000", 
    92 => "01101100001001000010100101100000010101000000011111111011101", 
    93 => "01101011101110000001001011010000111100000101000111001100000", 
    94 => "01101011010010101111001001111000100001110101010000111111111", 
    95 => "01101010110111001100100101100100010110110000001101001110111", 
    96 => "01101010011011011001100010100100001110101000011010001001010", 
    97 => "01101001111111010110000101001010011111111001101001101111100", 
    98 => "01101001100011000010010001101100000010111110101110000100001", 
    99 => "01101001000110011110001100100000010001100110101100011110001", 
    100 => "01101000101001101001111010000001000110001001111000000100100", 
    101 => "01101000001100100101011110101010111010111110010011010111001", 
    102 => "01100111101111010000111110111100101001101011111001001101111", 
    103 => "01100111010001101100011111010111101010100000001101010010110", 
    104 => "01100110110011111000000100011111110011100001110011111111110", 
    105 => "01100110010101110011110010111011011000000011010010000101101", 
    106 => "01100101110111011111101111010011000111110101110100000011110", 
    107 => "01100101011000111011111110010010001110011011011101010111100", 
    108 => "01100100111010001000100100100110010010011000111111101010001", 
    109 => "01100100011011000101100110111111010100100111011010000100100", 
    110 => "01100011111011110011001010001111101111100101000000110000011", 
    111 => "01100011011100010001010011001100010110100110001100101101000", 
    112 => "01100010111100100000000110101100010101000101110011111111101", 
    113 => "01100010011100011111101001101001001101110101001010100110101", 
    114 => "01100001111100010000000000111110111010001011101011110111100", 
    115 => "01100001011011110001010001101011101001010110001100101110000", 
    116 => "01100000111011000011100000101111111111100101110110110011111", 
    117 => "01100000011010000110110011001110110101011110101100101011010", 
    118 => "01011111111000111011001110001101010111000101110110111111000", 
    119 => "01011111010111100000110110110011000011001111011011000101001", 
    120 => "01011110110101110111110010001001101010101011111010111000000", 
    121 => "01011110010100000000000101011101001111010101011110001111100", 
    122 => "01011101110001111001110101111100000011011100100110000001010", 
    123 => "01011101001111100101001000110110101000110100101000110000100", 
    124 => "01011100101101000010000011011111101111111111111001010101100", 
    125 => "01011100001010010000101011001100010111011011010111100011100", 
    126 => "01011011100111010001000101010011101010101010001010110110100", 
    127 => "01011011000100000011010111001111000001100000100111010000101", 
    128 => "01100100100001111110110101010001000100001011010001100001001", 
    129 => "01100100100001111100001111111001100111000000000111000100011", 
    130 => "01100100100001110100011111110011011110110001111000010001101", 
    131 => "01100100100001100111100100111111011001011010010101000110100", 
    132 => "01100100100001010101011111011110100011011001100111110111111", 
    133 => "01100100100000111110001111010010100111110110001100110110011", 
    134 => "01100100100000100001110100011101110000011100100110011011001", 
    135 => "01100100100000000000001111000010100101011111001101111101010", 
    136 => "01100100011111011001011111000100001101110110000001001111101", 
    137 => "01100100011110101101100100100110001110111110001100100110011", 
    138 => "01100100011101111100011111101100101100111001110001100110001", 
    139 => "01100100011101000110010000011100001010001111001010011010001", 
    140 => "01100100011100001010110110111001101000001000101001110100010", 
    141 => "01100100011011001010010011001010100110010011110111110100100", 
    142 => "01100100011010000100100101010101000011000001001010111010010", 
    143 => "01100100011000111001101101011111011011000010111101111101001", 
    144 => "01100100010111101001101011110000101001101101000010101111100", 
    145 => "01100100010110010100100000010000001000110011110001001001010", 
    146 => "01100100010100111010001011000101110000101011010010111100010", 
    147 => "01100100010011011010101100011001111000000110101100010001000", 
    148 => "01100100010001110110000100010101010100010111000000101101011", 
    149 => "01100100010000001100010011000001011001001010010101000011110", 
    150 => "01100100001110011101011000100111111000101010101101101100100", 
    151 => "01100100001100101001010101010011000011011101001001101000001", 
    152 => "01100100001010110000001001001101101000100000011010001011010", 
    153 => "01100100001000110001110100100010110101001011110111010101100", 
    154 => "01100100000110101110010111011110010101001110010000110000011", 
    155 => "01100100000100100101110010001100010010101100011011011001111", 
    156 => "01100100000010011000000100111001010101111111111011111000010", 
    157 => "01100100000000000101001111110010100101110101101101011001010", 
    158 => "01100011111101101101010011000101100111001100100101011010101", 
    159 => "01100011111011010000001111000000011101010011110011111110110", 
    160 => "01100011111000101110000011110001101001101001100000101010110", 
    161 => "01100011110110000110110001101000001011111001000100010000111", 
    162 => "01100011110011011010011000110011100001111001011111000110000", 
    163 => "01100011110000101000111001100011100111101011101100000001100", 
    164 => "01100011101101110010010100001000110111011000110000001010100", 
    165 => "01100011101010110110101000110100001001010000000111001111111", 
    166 => "01100011100111110101110111110110110011100101101100101100111", 
    167 => "01100011100100110000000001100010101010110000000001011001100", 
    168 => "01100011100001100101000110001010000001000110001110001000100", 
    169 => "01100011011110010101000101111111100110111110000010110000111", 
    170 => "01100011011011000000000001010110101010101001110010000101111", 
    171 => "01100011010111100101111000100010111000010110001010011011001", 
    172 => "01100011010100000110101011111000011010001000001010110110011", 
    173 => "01100011010000100010011011101011110111111010110101010000010", 
    174 => "01100011001100111001001000010010010111011100111101000001101", 
    175 => "01100011001001001010110010000001011100001110110010100000000", 
    176 => "01100011000101010111011001001111000111011111101011001000101", 
    177 => "01100011000001011110111110010001111000001011100110011010101", 
    178 => "01100010111101100001100001100000101010111000101111011111100", 
    179 => "01100010111001011111000011010010111001110100111011100100001", 
    180 => "01100010110101010111100100000000011100110011000101000001001", 
    181 => "01100010110001001011000100000001101001001000100011010011001", 
    182 => "01100010101100111001100011101111010001101010011111100100000", 
    183 => "01100010101000100011000011100010100110101011000110000100100", 
    184 => "01100010100100000111100011110101010101110110110100010110101", 
    185 => "01100010011111100111000101000001101010010001100100001010011", 
    186 => "01100010011011000001100111100010001100010011110011001011001", 
    187 => "01100010010110010111001011110010000001100111100111100000001", 
    188 => "01100010010001100111110010001100101101000101110000111110100", 
    189 => "01100010001100110011011011001110001110110010100111001110101", 
    190 => "01100010000111111010000111010011000011111011000100100101000", 
    191 => "01100010000010111011110110111000000110110001011101101101010", 
    192 => "01100001111101111000101010011010101110101010010110001011000", 
    193 => "01100001111000110000100010011000101111111001010001101101011", 
    194 => "01100001110011100011011111010000011011101101100010010111110", 
    195 => "01100001101110010001100001100000100000001110110011100000001", 
    196 => "01100001101000111010101001101000001000011001110001100010011", 
    197 => "01100001100011011110111000000110111011111100101110101000110", 
    198 => "01100001011101111110001101011100111111010100000100001100110", 
    199 => "01100001011000011000101010001010110011100110110001001011110", 
    200 => "01100001010010101110001110110001010110100010110101010101110", 
    201 => "01100001001100111110111011110010000010011001101001010001001", 
    202 => "01100001000111001010110001101110101101111100010011011000011", 
    203 => "01100001000001010001110001001001101100010111111001101110111", 
    204 => "01100000111011010011111010100101101101010001110000101111010", 
    205 => "01100000110101010001001110100101111100100011100110110010100", 
    206 => "01100000101111001001101101101110000010010111101100110010000", 
    207 => "01100000101000111101011000100010000011000100111011100010011", 
    208 => "01100000100010101100001111100110011111001010110110001001110", 
    209 => "01100000011100010110010011100000010011001101101001010001010", 
    210 => "01100000010101111011100100110100110111110010000111010010100", 
    211 => "01100000001111011100000100001010000001011001100001100000001", 
    212 => "01100000001000110111110010000110000000011101011110001011111", 
    213 => "01100000000010001110101111001111100001001011101011101001110", 
    214 => "01011111111011100000111100001101101011100001110000010000101", 
    215 => "01011111110100101110011001101000000011001000110111011001000", 
    216 => "01011111101101110111001000000110100111010001011011011010011", 
    217 => "01011111100110111011001000010001110010101110101100101000000", 
    218 => "01011111011111111010011010110010011011110010010101001101001", 
    219 => "01011111011000110101000000010001110100000111111010001001111", 
    220 => "01011111010001101010111001011001101000110000011001010000100", 
    221 => "01011111001010011100000110110100000001111101100100000011110", 
    222 => "01011111000011001000101001001011100011001101010111111000010", 
    223 => "01011110111011110000100001001011001011000101010010110110100", 
    224 => "01011110110100010011101111011110010011001101100110000010000", 
    225 => "01011110101100110010010100110000110000001100100100100001101", 
    226 => "01011110100101001100010001101110110001100001101111101110011", 
    227 => "01011110011101100001100111000101000001100001000000100101000", 
    228 => "01011110010101110010010101100000100101001101101101111101111", 
    229 => "01011110001101111110011101101110111100010101110000001010101", 
    230 => "01011110000110000110000000011110000001001100100001011001111", 
    231 => "01011101111110001000111110011100001000100101111011100010010", 
    232 => "01011101110110000111011000011000000001110001010010110101010", 
    233 => "01011101101110000001001111000000110110010100001101111010000", 
    234 => "01011101100101110110100011000110001010000101011010110001000", 
    235 => "01011101011101100111010101010111111011000111100001000001101", 
    236 => "01011101010101010011100110100110100001100011110001010001011", 
    237 => "01011101001100111011010111100010101111100100110001100101110", 
    238 => "01011101000100011110101000111101110001010001000111010010100", 
    239 => "01011100111011111101011011101001001100100101111101110010011", 
    240 => "01011100110011010111110000010111000001010001101010101101110", 
    241 => "01011100101010101101100111111001101000101110001111001110010", 
    242 => "01011100100001111111000011000011110101111011110110100000000", 
    243 => "01011100011001001100000010101000110101011011010001100001110", 
    244 => "01011100010000010100100111011100001101001000010000000100011", 
    245 => "01011100000111011000110010010001111100010011110110111010011", 
    246 => "01011011111110011000100011111110011011011110110011010111101", 
    247 => "01011011110101010011111101010110011100010011101100000011001", 
    248 => "01011011101100001010111111001111001001100001001110111001110", 
    249 => "01011011100010111101101010011110000110110100011100100101000", 
    250 => "01011011011001101011111111111001010000110010110001000011111", 
    251 => "01011011010000010110000000010110111100110100001001101000101", 
    252 => "01011011000110111011101100101101111000111101001000001011011", 
    253 => "01011010111101011101000101110101001011111000110011110001100", 
    254 => "01011010110011111010001100100100010100110010110110101100000", 
    255 => "01011010101010010011000001110011001011010001011001101100100" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity sin_or_cos_doubledEe is
    generic (
        DataWidth : INTEGER := 59;
        AddressRange : INTEGER := 256;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of sin_or_cos_doubledEe is
    component sin_or_cos_doubledEe_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    sin_or_cos_doubledEe_rom_U :  component sin_or_cos_doubledEe_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


