// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __atan_generic_doublbW_H__
#define __atan_generic_doublbW_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct atan_generic_doublbW_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 126;
  static const unsigned AddressRange = 128;
  static const unsigned AddressWidth = 7;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(atan_generic_doublbW_ram) {
        ram[0] = "0b110010010000111111011010101000100010000101101000110000100011010011000100110001100110001010001011100000001101110000011100110100";
        ram[1] = "0b011101101011000110011100000101011000011011101101001111011010001010110111111100100010001011110110010111100001110101000110100000";
        ram[2] = "0b001111101011011011101011111100100101100100000001101110101100010101011011011100011110011110111101011111011110100010000101111110";
        ram[3] = "0b000111111101010110111010100110101010110000101111011011011100011001011001000100101111001100010011111001111101000100010001110111";
        ram[4] = "0b000011111111101010101101110110111001011001111110111101001110001101101100101100100111100100101101110000001110001011100000110101";
        ram[5] = "0b000001111111111101010101011011101110101001011101100010010010101000010011101111001110101110111011011011101101010001100011000100";
        ram[6] = "0b000000111111111111101010101010110111011101101110010100110101011011101111100111100011000101011001000000000101011111011101100000";
        ram[7] = "0b000000011111111111111101010101010101101110111011101010010111001011010000000011000100011010100011111101110111110011000001010111";
        ram[8] = "0b000000001111111111111111101010101010101011011101110111011011100101001011101100010010101011111011011010110110110101001111011111";
        ram[9] = "0b000000000111111111111111111101010101010101010110111011101110111010100101110010100110101011011110101010110000001000100101000111";
        ram[10] = "0b000000000011111111111111111111101010101010101010101101110111011101110110111001010010111001011010000000011001111110111100111010";
        ram[11] = "0b000000000001111111111111111111111101010101010101010101011011101110111011101110101001011100101001011101100010010101100010010010";
        ram[12] = "0b000000000000111111111111111111111111101010101010101010101010110111011101110111011101101110010100101110010100110101011011110101";
        ram[13] = "0b000000000000011111111111111111111111111101010101010101010101010101101110111011101110111011101010010111001010010111001011010000";
        ram[14] = "0b000000000000001111111111111111111111111111101010101010101010101010101011011101110111011101110111011011100101001011100101001011";
        ram[15] = "0b000000000000000111111111111111111111111111111101010101010101010101010101010110111011101110111011101110111010100101110010100101";
        ram[16] = "0b000000000000000011111111111111111111111111111111101010101010101010101010101010101101110111011101110111011101110110111001010010";
        ram[17] = "0b000000000000000001111111111111111111111111111111111101010101010101010101010101010101011011101110111011101110111011101110101001";
        ram[18] = "0b000000000000000000111111111111111111111111111111111111101010101010101010101010101010101010110111011101110111011101110111011101";
        ram[19] = "0b000000000000000000011111111111111111111111111111111111111101010101010101010101010101010101010101101110111011101110111011101110";
        ram[20] = "0b000000000000000000001111111111111111111111111111111111111111101010101010101010101010101010101010101011011101110111011101110111";
        ram[21] = "0b000000000000000000000111111111111111111111111111111111111111111101010101010101010101010101010101010101010110111011101110111011";
        ram[22] = "0b000000000000000000000011111111111111111111111111111111111111111111101010101010101010101010101010101010101010101101110111011101";
        ram[23] = "0b000000000000000000000001111111111111111111111111111111111111111111111101010101010101010101010101010101010101010101011011101110";
        ram[24] = "0b000000000000000000000000111111111111111111111111111111111111111111111111101010101010101010101010101010101010101010101010110111";
        ram[25] = "0b000000000000000000000000011111111111111111111111111111111111111111111111111101010101010101010101010101010101010101010101010101";
        ram[26] = "0b000000000000000000000000001111111111111111111111111111111111111111111111111111101010101010101010101010101010101010101010101010";
        ram[27] = "0b000000000000000000000000000111111111111111111111111111111111111111111111111111111101010101010101010101010101010101010101010101";
        ram[28] = "0b000000000000000000000000000011111111111111111111111111111111111111111111111111111111101010101010101010101010101010101010101010";
        ram[29] = "0b000000000000000000000000000001111111111111111111111111111111111111111111111111111111111101010101010101010101010101010101010101";
        ram[30] = "0b000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111101010101010101010101010101010101010";
        ram[31] = "0b000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111101010101010101010101010101010101";
        ram[32] = "0b000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111101010101010101010101010101010";
        ram[33] = "0b000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111101010101010101010101010101";
        ram[34] = "0b000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111101010101010101010101010";
        ram[35] = "0b000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111101010101010101010101";
        ram[36] = "0b000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111101010101010101010";
        ram[37] = "0b000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111101010101010101";
        ram[38] = "0b000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111101010101010";
        ram[39] = "0b000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111101010101";
        ram[40] = "0b000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111101010";
        ram[41] = "0b000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111101";
        ram[42] = "0b000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111111";
        ram[43] = "0b000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111111";
        ram[44] = "0b000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111111";
        ram[45] = "0b000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111111";
        ram[46] = "0b000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111111";
        ram[47] = "0b000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111111";
        ram[48] = "0b000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111111";
        ram[49] = "0b000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111111";
        ram[50] = "0b000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111111";
        ram[51] = "0b000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111111";
        ram[52] = "0b000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111111";
        ram[53] = "0b000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111111";
        ram[54] = "0b000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111111";
        ram[55] = "0b000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111111";
        ram[56] = "0b000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111111";
        ram[57] = "0b000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111111";
        ram[58] = "0b000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111111";
        ram[59] = "0b000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111111";
        ram[60] = "0b000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111111";
        ram[61] = "0b000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111111";
        ram[62] = "0b000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111111";
        ram[63] = "0b000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111111";
        ram[64] = "0b000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111111";
        ram[65] = "0b000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111111";
        ram[66] = "0b000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111111";
        ram[67] = "0b000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111111";
        ram[68] = "0b000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111111";
        ram[69] = "0b000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111111";
        ram[70] = "0b000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111111";
        ram[71] = "0b000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111111";
        ram[72] = "0b000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111111";
        ram[73] = "0b000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111111";
        ram[74] = "0b000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111111";
        ram[75] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111111";
        ram[76] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111111";
        ram[77] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111111";
        ram[78] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111111";
        ram[79] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111111";
        ram[80] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111111";
        ram[81] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111111";
        ram[82] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111111";
        ram[83] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111111";
        ram[84] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111111";
        ram[85] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111111";
        ram[86] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111111";
        ram[87] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111111";
        ram[88] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111111";
        ram[89] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111111";
        ram[90] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111111";
        ram[91] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111111";
        ram[92] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111111";
        ram[93] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111111";
        ram[94] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111111";
        ram[95] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111111";
        ram[96] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111111";
        ram[97] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111111";
        ram[98] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111111";
        ram[99] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111111";
        ram[100] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111111";
        ram[101] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111111";
        ram[102] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111111";
        ram[103] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111111";
        ram[104] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111111";
        ram[105] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111111";
        ram[106] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111111";
        ram[107] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111111";
        ram[108] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111111";
        ram[109] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111111";
        ram[110] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111111";
        ram[111] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111111";
        ram[112] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111111";
        ram[113] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111111";
        ram[114] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111111";
        ram[115] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111111";
        ram[116] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111111";
        ram[117] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111111";
        ram[118] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111111";
        ram[119] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111111";
        ram[120] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111111";
        ram[121] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011111";
        ram[122] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001111";
        ram[123] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000111";
        ram[124] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000011";
        ram[125] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001";
        ram[126] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
        ram[127] = "0b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(atan_generic_doublbW) {


static const unsigned DataWidth = 126;
static const unsigned AddressRange = 128;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


atan_generic_doublbW_ram* meminst;


SC_CTOR(atan_generic_doublbW) {
meminst = new atan_generic_doublbW_ram("atan_generic_doublbW_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~atan_generic_doublbW() {
    delete meminst;
}


};//endmodule
#endif