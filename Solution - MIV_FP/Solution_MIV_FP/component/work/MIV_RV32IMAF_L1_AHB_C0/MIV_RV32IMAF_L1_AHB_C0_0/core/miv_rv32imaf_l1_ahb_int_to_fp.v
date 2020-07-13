// Copyright (c) 2019, Microchip Corporation
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//     * Neither the name of the <organization> nor the
//       names of its contributors may be used to endorse or promote products
//       derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL MICROSEMI CORPORATIONM BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// APACHE LICENSE
// Copyright (c) 2019, Microchip Corporation 
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// Description:
//
// SVN Revision Information:
// SVN $Revision: $
// SVN $Date: $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
`ifndef RANDOMIZE_REG_INIT 
	 `define RANDOMIZE_REG_INIT 
 `endif
`ifndef RANDOMIZE_MEM_INIT 
	 `define RANDOMIZE_MEM_INIT 
 `endif
`ifndef RANDOMIZE 
	 `define RANDOMIZE 
`endif

`timescale 1ns/10ps
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_INT_TO_FP( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108718.2]
  input         clock, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108719.4]
  input         reset, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108720.4]
  input         io_in_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108721.4]
  input         io_in_bits_wflags, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108721.4]
  input  [2:0]  io_in_bits_rm, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108721.4]
  input  [1:0]  io_in_bits_typ, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108721.4]
  input  [32:0] io_in_bits_in1, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108721.4]
  output [32:0] io_out_bits_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108721.4]
  output [4:0]  io_out_bits_exc // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108721.4]
);
  reg  in_valid; // @[Valid.scala 47:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108726.4]
  reg [31:0] _RAND_0;
  reg  in_bits_wflags; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108728.4]
  reg [31:0] _RAND_1;
  reg [2:0] in_bits_rm; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108728.4]
  reg [31:0] _RAND_2;
  reg [1:0] in_bits_typ; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108728.4]
  reg [31:0] _RAND_3;
  reg [32:0] in_bits_in1; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108728.4]
  reg [63:0] _RAND_4;
  wire  INToRecFN_io_signedIn; // @[FPU.scala 468:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108918.6]
  wire [31:0] INToRecFN_io_in; // @[FPU.scala 468:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108918.6]
  wire [2:0] INToRecFN_io_roundingMode; // @[FPU.scala 468:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108918.6]
  wire [32:0] INToRecFN_io_out; // @[FPU.scala 468:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108918.6]
  wire [4:0] INToRecFN_io_exceptionFlags; // @[FPU.scala 468:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108918.6]
  reg [32:0] _T_218_data; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108933.4]
  reg [63:0] _RAND_5;
  reg [4:0] _T_218_exc; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108933.4]
  reg [31:0] _RAND_6;
  wire [32:0] _GEN_2; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108729.4]
  wire [1:0] _GEN_3; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108729.4]
  wire [2:0] _GEN_5; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108729.4]
  wire  _GEN_6; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108729.4]
  wire  _T_28; // @[rawFloatFromFN.scala 46:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108763.4]
  wire [7:0] _T_29; // @[rawFloatFromFN.scala 47:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108764.4]
  wire [22:0] _T_30; // @[rawFloatFromFN.scala 48:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108765.4]
  wire  _T_32; // @[rawFloatFromFN.scala 50:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108766.4]
  wire  _T_34; // @[rawFloatFromFN.scala 51:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108767.4]
  wire [15:0] _T_35; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108768.4]
  wire [7:0] _T_40; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108771.4]
  wire [15:0] _T_41; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108772.4]
  wire [7:0] _T_42; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108773.4]
  wire [15:0] _GEN_26; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108774.4]
  wire [15:0] _T_43; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108774.4]
  wire [15:0] _T_45; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108776.4]
  wire [15:0] _T_46; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108777.4]
  wire [11:0] _T_50; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108781.4]
  wire [15:0] _GEN_27; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108782.4]
  wire [15:0] _T_51; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108782.4]
  wire [11:0] _T_52; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108783.4]
  wire [15:0] _GEN_28; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108784.4]
  wire [15:0] _T_53; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108784.4]
  wire [15:0] _T_55; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108786.4]
  wire [15:0] _T_56; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108787.4]
  wire [13:0] _T_60; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108791.4]
  wire [15:0] _GEN_29; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108792.4]
  wire [15:0] _T_61; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108792.4]
  wire [13:0] _T_62; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108793.4]
  wire [15:0] _GEN_30; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108794.4]
  wire [15:0] _T_63; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108794.4]
  wire [15:0] _T_65; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108796.4]
  wire [15:0] _T_66; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108797.4]
  wire [14:0] _T_70; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108801.4]
  wire [15:0] _GEN_31; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108802.4]
  wire [15:0] _T_71; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108802.4]
  wire [14:0] _T_72; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108803.4]
  wire [15:0] _GEN_32; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108804.4]
  wire [15:0] _T_73; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108804.4]
  wire [15:0] _T_75; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108806.4]
  wire [15:0] _T_76; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108807.4]
  wire [6:0] _T_77; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108808.4]
  wire [3:0] _T_78; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108809.4]
  wire [1:0] _T_79; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108810.4]
  wire  _T_80; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108811.4]
  wire  _T_81; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108812.4]
  wire [1:0] _T_82; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108813.4]
  wire [1:0] _T_83; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108814.4]
  wire  _T_84; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108815.4]
  wire  _T_85; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108816.4]
  wire [1:0] _T_86; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108817.4]
  wire [3:0] _T_87; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108818.4]
  wire [2:0] _T_88; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108819.4]
  wire [1:0] _T_89; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108820.4]
  wire  _T_90; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108821.4]
  wire  _T_91; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108822.4]
  wire [1:0] _T_92; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108823.4]
  wire  _T_93; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108824.4]
  wire [2:0] _T_94; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108825.4]
  wire [6:0] _T_95; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108826.4]
  wire [22:0] _T_96; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108827.4]
  wire  _T_97; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108828.4]
  wire  _T_98; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108829.4]
  wire  _T_99; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108830.4]
  wire  _T_100; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108831.4]
  wire  _T_101; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108832.4]
  wire  _T_102; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108833.4]
  wire  _T_103; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108834.4]
  wire  _T_104; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108835.4]
  wire  _T_105; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108836.4]
  wire  _T_106; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108837.4]
  wire  _T_107; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108838.4]
  wire  _T_108; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108839.4]
  wire  _T_109; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108840.4]
  wire  _T_110; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108841.4]
  wire  _T_111; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108842.4]
  wire  _T_112; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108843.4]
  wire  _T_113; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108844.4]
  wire  _T_114; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108845.4]
  wire  _T_115; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108846.4]
  wire  _T_116; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108847.4]
  wire  _T_117; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108848.4]
  wire  _T_118; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108849.4]
  wire [4:0] _T_143; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108851.4]
  wire [4:0] _T_144; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108852.4]
  wire [4:0] _T_145; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108853.4]
  wire [4:0] _T_146; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108854.4]
  wire [4:0] _T_147; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108855.4]
  wire [4:0] _T_148; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108856.4]
  wire [4:0] _T_149; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108857.4]
  wire [4:0] _T_150; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108858.4]
  wire [4:0] _T_151; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108859.4]
  wire [4:0] _T_152; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108860.4]
  wire [4:0] _T_153; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108861.4]
  wire [4:0] _T_154; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108862.4]
  wire [4:0] _T_155; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108863.4]
  wire [4:0] _T_156; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108864.4]
  wire [4:0] _T_157; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108865.4]
  wire [4:0] _T_158; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108866.4]
  wire [4:0] _T_159; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108867.4]
  wire [4:0] _T_160; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108868.4]
  wire [4:0] _T_161; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108869.4]
  wire [4:0] _T_162; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108870.4]
  wire [4:0] _T_163; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108871.4]
  wire [4:0] _T_164; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108872.4]
  wire [53:0] _GEN_33; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108873.4]
  wire [53:0] _T_165; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108873.4]
  wire [21:0] _T_166; // @[rawFloatFromFN.scala 54:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108874.4]
  wire [22:0] _GEN_34; // @[rawFloatFromFN.scala 54:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108875.4]
  wire [22:0] _T_167; // @[rawFloatFromFN.scala 54:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108875.4]
  wire [8:0] _GEN_35; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108876.4]
  wire [8:0] _T_169; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108876.4]
  wire [8:0] _T_170; // @[rawFloatFromFN.scala 56:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108877.4]
  wire [1:0] _T_174; // @[rawFloatFromFN.scala 60:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108878.4]
  wire [7:0] _GEN_36; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108879.4]
  wire [7:0] _T_175; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108879.4]
  wire [8:0] _GEN_37; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108880.4]
  wire [9:0] _T_176; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108880.4]
  wire [8:0] _T_177; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108881.4]
  wire  _T_178; // @[rawFloatFromFN.scala 62:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108882.4]
  wire [1:0] _T_179; // @[rawFloatFromFN.scala 63:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108883.4]
  wire  _T_181; // @[rawFloatFromFN.scala 63:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108884.4]
  wire  _T_185; // @[rawFloatFromFN.scala 66:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108887.4]
  wire  _T_186; // @[rawFloatFromFN.scala 66:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108888.4]
  wire [9:0] _T_189; // @[rawFloatFromFN.scala 70:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108895.4]
  wire  _T_192; // @[rawFloatFromFN.scala 72:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108897.4]
  wire [22:0] _T_193; // @[rawFloatFromFN.scala 72:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108898.4]
  wire [1:0] _T_194; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108899.4]
  wire [24:0] _T_195; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108900.4]
  wire [2:0] _T_197; // @[recFNFromFN.scala 48:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108902.4]
  wire [2:0] _T_198; // @[recFNFromFN.scala 48:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108903.4]
  wire [2:0] _GEN_38; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108905.4]
  wire [2:0] _T_202; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108905.4]
  wire [5:0] _T_203; // @[recFNFromFN.scala 50:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108906.4]
  wire [22:0] _T_204; // @[recFNFromFN.scala 51:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108907.4]
  wire [28:0] _T_205; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108908.4]
  wire [3:0] _T_206; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108909.4]
  wire [32:0] _T_207; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108910.4]
  wire [32:0] _T_208; // @[FPU.scala 454:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108912.4]
  wire [32:0] intValue; // @[FPU.scala 461:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108916.4]
  wire  _T_211; // @[FPU.scala 469:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108922.6]
  wire  _T_212; // @[FPU.scala 469:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108923.6]
  wire [32:0] mux_data; // @[FPU.scala 464:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108917.4]
  wire [4:0] mux_exc; // @[FPU.scala 464:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108917.4]
  wire [4:0] _GEN_24; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108934.4]
  wire [32:0] _GEN_25; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108934.4]
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_INTO_REC_FN MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_INTO_REC_FN ( // @[FPU.scala 468:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108918.6]
    .io_signedIn(INToRecFN_io_signedIn),
    .io_in(INToRecFN_io_in),
    .io_roundingMode(INToRecFN_io_roundingMode),
    .io_out(INToRecFN_io_out),
    .io_exceptionFlags(INToRecFN_io_exceptionFlags)
  );
  assign _GEN_2 = io_in_valid ? io_in_bits_in1 : in_bits_in1; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108729.4]
  assign _GEN_3 = io_in_valid ? io_in_bits_typ : in_bits_typ; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108729.4]
  assign _GEN_5 = io_in_valid ? io_in_bits_rm : in_bits_rm; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108729.4]
  assign _GEN_6 = io_in_valid ? io_in_bits_wflags : in_bits_wflags; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108729.4]
  assign _T_28 = in_bits_in1[31]; // @[rawFloatFromFN.scala 46:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108763.4]
  assign _T_29 = in_bits_in1[30:23]; // @[rawFloatFromFN.scala 47:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108764.4]
  assign _T_30 = in_bits_in1[22:0]; // @[rawFloatFromFN.scala 48:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108765.4]
  assign _T_32 = _T_29 == 8'h0; // @[rawFloatFromFN.scala 50:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108766.4]
  assign _T_34 = _T_30 == 23'h0; // @[rawFloatFromFN.scala 51:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108767.4]
  assign _T_35 = _T_30[15:0]; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108768.4]
  assign _T_40 = _T_35[15:8]; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108771.4]
  assign _T_41 = {{8'd0}, _T_40}; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108772.4]
  assign _T_42 = _T_35[7:0]; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108773.4]
  assign _GEN_26 = {{8'd0}, _T_42}; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108774.4]
  assign _T_43 = _GEN_26 << 8; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108774.4]
  assign _T_45 = _T_43 & 16'hff00; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108776.4]
  assign _T_46 = _T_41 | _T_45; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108777.4]
  assign _T_50 = _T_46[15:4]; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108781.4]
  assign _GEN_27 = {{4'd0}, _T_50}; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108782.4]
  assign _T_51 = _GEN_27 & 16'hf0f; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108782.4]
  assign _T_52 = _T_46[11:0]; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108783.4]
  assign _GEN_28 = {{4'd0}, _T_52}; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108784.4]
  assign _T_53 = _GEN_28 << 4; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108784.4]
  assign _T_55 = _T_53 & 16'hf0f0; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108786.4]
  assign _T_56 = _T_51 | _T_55; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108787.4]
  assign _T_60 = _T_56[15:2]; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108791.4]
  assign _GEN_29 = {{2'd0}, _T_60}; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108792.4]
  assign _T_61 = _GEN_29 & 16'h3333; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108792.4]
  assign _T_62 = _T_56[13:0]; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108793.4]
  assign _GEN_30 = {{2'd0}, _T_62}; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108794.4]
  assign _T_63 = _GEN_30 << 2; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108794.4]
  assign _T_65 = _T_63 & 16'hcccc; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108796.4]
  assign _T_66 = _T_61 | _T_65; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108797.4]
  assign _T_70 = _T_66[15:1]; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108801.4]
  assign _GEN_31 = {{1'd0}, _T_70}; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108802.4]
  assign _T_71 = _GEN_31 & 16'h5555; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108802.4]
  assign _T_72 = _T_66[14:0]; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108803.4]
  assign _GEN_32 = {{1'd0}, _T_72}; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108804.4]
  assign _T_73 = _GEN_32 << 1; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108804.4]
  assign _T_75 = _T_73 & 16'haaaa; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108806.4]
  assign _T_76 = _T_71 | _T_75; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108807.4]
  assign _T_77 = _T_30[22:16]; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108808.4]
  assign _T_78 = _T_77[3:0]; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108809.4]
  assign _T_79 = _T_78[1:0]; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108810.4]
  assign _T_80 = _T_79[0]; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108811.4]
  assign _T_81 = _T_79[1]; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108812.4]
  assign _T_82 = {_T_80,_T_81}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108813.4]
  assign _T_83 = _T_78[3:2]; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108814.4]
  assign _T_84 = _T_83[0]; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108815.4]
  assign _T_85 = _T_83[1]; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108816.4]
  assign _T_86 = {_T_84,_T_85}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108817.4]
  assign _T_87 = {_T_82,_T_86}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108818.4]
  assign _T_88 = _T_77[6:4]; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108819.4]
  assign _T_89 = _T_88[1:0]; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108820.4]
  assign _T_90 = _T_89[0]; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108821.4]
  assign _T_91 = _T_89[1]; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108822.4]
  assign _T_92 = {_T_90,_T_91}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108823.4]
  assign _T_93 = _T_88[2]; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108824.4]
  assign _T_94 = {_T_92,_T_93}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108825.4]
  assign _T_95 = {_T_87,_T_94}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108826.4]
  assign _T_96 = {_T_76,_T_95}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108827.4]
  assign _T_97 = _T_96[0]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108828.4]
  assign _T_98 = _T_96[1]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108829.4]
  assign _T_99 = _T_96[2]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108830.4]
  assign _T_100 = _T_96[3]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108831.4]
  assign _T_101 = _T_96[4]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108832.4]
  assign _T_102 = _T_96[5]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108833.4]
  assign _T_103 = _T_96[6]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108834.4]
  assign _T_104 = _T_96[7]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108835.4]
  assign _T_105 = _T_96[8]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108836.4]
  assign _T_106 = _T_96[9]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108837.4]
  assign _T_107 = _T_96[10]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108838.4]
  assign _T_108 = _T_96[11]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108839.4]
  assign _T_109 = _T_96[12]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108840.4]
  assign _T_110 = _T_96[13]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108841.4]
  assign _T_111 = _T_96[14]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108842.4]
  assign _T_112 = _T_96[15]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108843.4]
  assign _T_113 = _T_96[16]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108844.4]
  assign _T_114 = _T_96[17]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108845.4]
  assign _T_115 = _T_96[18]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108846.4]
  assign _T_116 = _T_96[19]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108847.4]
  assign _T_117 = _T_96[20]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108848.4]
  assign _T_118 = _T_96[21]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108849.4]
  assign _T_143 = _T_118 ? 5'h15 : 5'h16; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108851.4]
  assign _T_144 = _T_117 ? 5'h14 : _T_143; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108852.4]
  assign _T_145 = _T_116 ? 5'h13 : _T_144; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108853.4]
  assign _T_146 = _T_115 ? 5'h12 : _T_145; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108854.4]
  assign _T_147 = _T_114 ? 5'h11 : _T_146; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108855.4]
  assign _T_148 = _T_113 ? 5'h10 : _T_147; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108856.4]
  assign _T_149 = _T_112 ? 5'hf : _T_148; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108857.4]
  assign _T_150 = _T_111 ? 5'he : _T_149; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108858.4]
  assign _T_151 = _T_110 ? 5'hd : _T_150; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108859.4]
  assign _T_152 = _T_109 ? 5'hc : _T_151; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108860.4]
  assign _T_153 = _T_108 ? 5'hb : _T_152; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108861.4]
  assign _T_154 = _T_107 ? 5'ha : _T_153; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108862.4]
  assign _T_155 = _T_106 ? 5'h9 : _T_154; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108863.4]
  assign _T_156 = _T_105 ? 5'h8 : _T_155; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108864.4]
  assign _T_157 = _T_104 ? 5'h7 : _T_156; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108865.4]
  assign _T_158 = _T_103 ? 5'h6 : _T_157; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108866.4]
  assign _T_159 = _T_102 ? 5'h5 : _T_158; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108867.4]
  assign _T_160 = _T_101 ? 5'h4 : _T_159; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108868.4]
  assign _T_161 = _T_100 ? 5'h3 : _T_160; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108869.4]
  assign _T_162 = _T_99 ? 5'h2 : _T_161; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108870.4]
  assign _T_163 = _T_98 ? 5'h1 : _T_162; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108871.4]
  assign _T_164 = _T_97 ? 5'h0 : _T_163; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108872.4]
  assign _GEN_33 = {{31'd0}, _T_30}; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108873.4]
  assign _T_165 = _GEN_33 << _T_164; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108873.4]
  assign _T_166 = _T_165[21:0]; // @[rawFloatFromFN.scala 54:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108874.4]
  assign _GEN_34 = {{1'd0}, _T_166}; // @[rawFloatFromFN.scala 54:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108875.4]
  assign _T_167 = _GEN_34 << 1; // @[rawFloatFromFN.scala 54:64:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108875.4]
  assign _GEN_35 = {{4'd0}, _T_164}; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108876.4]
  assign _T_169 = _GEN_35 ^ 9'h1ff; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108876.4]
  assign _T_170 = _T_32 ? _T_169 : {{1'd0}, _T_29}; // @[rawFloatFromFN.scala 56:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108877.4]
  assign _T_174 = _T_32 ? 2'h2 : 2'h1; // @[rawFloatFromFN.scala 60:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108878.4]
  assign _GEN_36 = {{6'd0}, _T_174}; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108879.4]
  assign _T_175 = 8'h80 | _GEN_36; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108879.4]
  assign _GEN_37 = {{1'd0}, _T_175}; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108880.4]
  assign _T_176 = _T_170 + _GEN_37; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108880.4]
  assign _T_177 = _T_176[8:0]; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108881.4]
  assign _T_178 = _T_32 & _T_34; // @[rawFloatFromFN.scala 62:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108882.4]
  assign _T_179 = _T_177[8:7]; // @[rawFloatFromFN.scala 63:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108883.4]
  assign _T_181 = _T_179 == 2'h3; // @[rawFloatFromFN.scala 63:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108884.4]
  assign _T_185 = _T_34 == 1'h0; // @[rawFloatFromFN.scala 66:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108887.4]
  assign _T_186 = _T_181 & _T_185; // @[rawFloatFromFN.scala 66:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108888.4]
  assign _T_189 = {1'b0,$signed(_T_177)}; // @[rawFloatFromFN.scala 70:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108895.4]
  assign _T_192 = _T_178 == 1'h0; // @[rawFloatFromFN.scala 72:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108897.4]
  assign _T_193 = _T_32 ? _T_167 : _T_30; // @[rawFloatFromFN.scala 72:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108898.4]
  assign _T_194 = {1'h0,_T_192}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108899.4]
  assign _T_195 = {_T_194,_T_193}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108900.4]
  assign _T_197 = _T_189[8:6]; // @[recFNFromFN.scala 48:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108902.4]
  assign _T_198 = _T_178 ? 3'h0 : _T_197; // @[recFNFromFN.scala 48:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108903.4]
  assign _GEN_38 = {{2'd0}, _T_186}; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108905.4]
  assign _T_202 = _T_198 | _GEN_38; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108905.4]
  assign _T_203 = _T_189[5:0]; // @[recFNFromFN.scala 50:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108906.4]
  assign _T_204 = _T_195[22:0]; // @[recFNFromFN.scala 51:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108907.4]
  assign _T_205 = {_T_203,_T_204}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108908.4]
  assign _T_206 = {_T_28,_T_202}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108909.4]
  assign _T_207 = {_T_206,_T_205}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108910.4]
  assign _T_208 = $signed(in_bits_in1); // @[FPU.scala 454:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108912.4]
  assign intValue = $unsigned(_T_208); // @[FPU.scala 461:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108916.4]
  assign _T_211 = in_bits_typ[0]; // @[FPU.scala 469:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108922.6]
  assign _T_212 = ~ _T_211; // @[FPU.scala 469:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108923.6]
  assign mux_data = in_bits_wflags ? INToRecFN_io_out : _T_207; // @[FPU.scala 464:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108917.4]
  assign mux_exc = in_bits_wflags ? INToRecFN_io_exceptionFlags : 5'h0; // @[FPU.scala 464:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108917.4]
  assign _GEN_24 = in_valid ? mux_exc : _T_218_exc; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108934.4]
  assign _GEN_25 = in_valid ? mux_data : _T_218_data; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108934.4]
  assign io_out_bits_data = _T_218_data;
  assign io_out_bits_exc = _T_218_exc;
  assign INToRecFN_io_signedIn = _T_212;
  assign INToRecFN_io_in = intValue[31:0];
  assign INToRecFN_io_roundingMode = in_bits_rm;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  in_valid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  in_bits_wflags = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  in_bits_rm = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  in_bits_typ = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{$random}};
  in_bits_in1 = _RAND_4[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{$random}};
  _T_218_data = _RAND_5[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  _T_218_exc = _RAND_6[4:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      in_valid <= 1'h0;
    end else begin
      in_valid <= io_in_valid;
    end
    if (io_in_valid) begin
      in_bits_wflags <= io_in_bits_wflags;
    end
    if (io_in_valid) begin
      in_bits_rm <= io_in_bits_rm;
    end
    if (io_in_valid) begin
      in_bits_typ <= io_in_bits_typ;
    end
    if (io_in_valid) begin
      in_bits_in1 <= io_in_bits_in1;
    end
    if (in_valid) begin
      if (in_bits_wflags) begin
        _T_218_data <= INToRecFN_io_out;
      end else begin
        _T_218_data <= _T_207;
      end
    end
    if (in_valid) begin
      if (in_bits_wflags) begin
        _T_218_exc <= INToRecFN_io_exceptionFlags;
      end else begin
        _T_218_exc <= 5'h0;
      end
    end
  end
endmodule
