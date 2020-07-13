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
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_COMPARE_REC_FN( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107961.2]
  input  [32:0] io_a, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107964.4]
  input  [32:0] io_b, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107964.4]
  input         io_signaling, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107964.4]
  output        io_lt, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107964.4]
  output        io_eq, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107964.4]
  output [4:0]  io_exceptionFlags // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107964.4]
);
  wire [8:0] _T_9; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107969.4]
  wire [2:0] _T_10; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107970.4]
  wire  rawA_isZero; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107971.4]
  wire [1:0] _T_13; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107972.4]
  wire  _T_15; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107973.4]
  wire  _T_17; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107976.4]
  wire  rawA_isNaN; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107977.4]
  wire  _T_21; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107980.4]
  wire  rawA_isInf; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107981.4]
  wire  rawA_sign; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107984.4]
  wire [9:0] rawA_sExp; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107986.4]
  wire  _T_27; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107988.4]
  wire [22:0] _T_28; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107989.4]
  wire [1:0] _T_29; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107990.4]
  wire [24:0] rawA_sig; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107991.4]
  wire [8:0] _T_31; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107993.4]
  wire [2:0] _T_32; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107994.4]
  wire  rawB_isZero; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107995.4]
  wire [1:0] _T_35; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107996.4]
  wire  _T_37; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107997.4]
  wire  _T_39; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108000.4]
  wire  rawB_isNaN; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108001.4]
  wire  _T_43; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108004.4]
  wire  rawB_isInf; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108005.4]
  wire  rawB_sign; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108008.4]
  wire [9:0] rawB_sExp; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108010.4]
  wire  _T_49; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108012.4]
  wire [22:0] _T_50; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108013.4]
  wire [1:0] _T_51; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108014.4]
  wire [24:0] rawB_sig; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108015.4]
  wire  _T_54; // @[CompareRecFN.scala 57:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108017.4]
  wire  _T_56; // @[CompareRecFN.scala 57:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108018.4]
  wire  ordered; // @[CompareRecFN.scala 57:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108019.4]
  wire  bothInfs; // @[CompareRecFN.scala 58:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108020.4]
  wire  bothZeros; // @[CompareRecFN.scala 59:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108021.4]
  wire  eqExps; // @[CompareRecFN.scala 60:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108022.4]
  wire  _T_57; // @[CompareRecFN.scala 62:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108023.4]
  wire  _T_58; // @[CompareRecFN.scala 62:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108024.4]
  wire  _T_59; // @[CompareRecFN.scala 62:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108025.4]
  wire  common_ltMags; // @[CompareRecFN.scala 62:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108026.4]
  wire  _T_60; // @[CompareRecFN.scala 63:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108027.4]
  wire  common_eqMags; // @[CompareRecFN.scala 63:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108028.4]
  wire  _T_62; // @[CompareRecFN.scala 66:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108029.4]
  wire  _T_64; // @[CompareRecFN.scala 67:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108030.4]
  wire  _T_65; // @[CompareRecFN.scala 67:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108031.4]
  wire  _T_67; // @[CompareRecFN.scala 68:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108032.4]
  wire  _T_69; // @[CompareRecFN.scala 69:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108033.4]
  wire  _T_70; // @[CompareRecFN.scala 69:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108034.4]
  wire  _T_72; // @[CompareRecFN.scala 69:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108035.4]
  wire  _T_73; // @[CompareRecFN.scala 69:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108036.4]
  wire  _T_76; // @[CompareRecFN.scala 70:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108038.4]
  wire  _T_77; // @[CompareRecFN.scala 69:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108039.4]
  wire  _T_78; // @[CompareRecFN.scala 68:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108040.4]
  wire  _T_79; // @[CompareRecFN.scala 67:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108041.4]
  wire  ordered_lt; // @[CompareRecFN.scala 66:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108042.4]
  wire  _T_80; // @[CompareRecFN.scala 72:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108043.4]
  wire  _T_81; // @[CompareRecFN.scala 72:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108044.4]
  wire  _T_82; // @[CompareRecFN.scala 72:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108045.4]
  wire  ordered_eq; // @[CompareRecFN.scala 72:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108046.4]
  wire  _T_83; // @[common.scala 81:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108047.4]
  wire  _T_85; // @[common.scala 81:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108048.4]
  wire  _T_86; // @[common.scala 81:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108049.4]
  wire  _T_87; // @[common.scala 81:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108050.4]
  wire  _T_89; // @[common.scala 81:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108051.4]
  wire  _T_90; // @[common.scala 81:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108052.4]
  wire  _T_91; // @[CompareRecFN.scala 75:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108053.4]
  wire  _T_93; // @[CompareRecFN.scala 76:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108054.4]
  wire  _T_94; // @[CompareRecFN.scala 76:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108055.4]
  wire  invalid; // @[CompareRecFN.scala 75:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108056.4]
  wire  _T_95; // @[CompareRecFN.scala 78:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108057.4]
  wire  _T_96; // @[CompareRecFN.scala 79:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108059.4]
  wire [4:0] _T_104; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108066.4]
  assign _T_9 = io_a[31:23]; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107969.4]
  assign _T_10 = _T_9[8:6]; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107970.4]
  assign rawA_isZero = _T_10 == 3'h0; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107971.4]
  assign _T_13 = _T_9[8:7]; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107972.4]
  assign _T_15 = _T_13 == 2'h3; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107973.4]
  assign _T_17 = _T_9[6]; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107976.4]
  assign rawA_isNaN = _T_15 & _T_17; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107977.4]
  assign _T_21 = _T_17 == 1'h0; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107980.4]
  assign rawA_isInf = _T_15 & _T_21; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107981.4]
  assign rawA_sign = io_a[32]; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107984.4]
  assign rawA_sExp = {1'b0,$signed(_T_9)}; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107986.4]
  assign _T_27 = rawA_isZero == 1'h0; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107988.4]
  assign _T_28 = io_a[22:0]; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107989.4]
  assign _T_29 = {1'h0,_T_27}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107990.4]
  assign rawA_sig = {_T_29,_T_28}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107991.4]
  assign _T_31 = io_b[31:23]; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107993.4]
  assign _T_32 = _T_31[8:6]; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107994.4]
  assign rawB_isZero = _T_32 == 3'h0; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107995.4]
  assign _T_35 = _T_31[8:7]; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107996.4]
  assign _T_37 = _T_35 == 2'h3; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107997.4]
  assign _T_39 = _T_31[6]; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108000.4]
  assign rawB_isNaN = _T_37 & _T_39; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108001.4]
  assign _T_43 = _T_39 == 1'h0; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108004.4]
  assign rawB_isInf = _T_37 & _T_43; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108005.4]
  assign rawB_sign = io_b[32]; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108008.4]
  assign rawB_sExp = {1'b0,$signed(_T_31)}; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108010.4]
  assign _T_49 = rawB_isZero == 1'h0; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108012.4]
  assign _T_50 = io_b[22:0]; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108013.4]
  assign _T_51 = {1'h0,_T_49}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108014.4]
  assign rawB_sig = {_T_51,_T_50}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108015.4]
  assign _T_54 = rawA_isNaN == 1'h0; // @[CompareRecFN.scala 57:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108017.4]
  assign _T_56 = rawB_isNaN == 1'h0; // @[CompareRecFN.scala 57:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108018.4]
  assign ordered = _T_54 & _T_56; // @[CompareRecFN.scala 57:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108019.4]
  assign bothInfs = rawA_isInf & rawB_isInf; // @[CompareRecFN.scala 58:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108020.4]
  assign bothZeros = rawA_isZero & rawB_isZero; // @[CompareRecFN.scala 59:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108021.4]
  assign eqExps = $signed(rawA_sExp) == $signed(rawB_sExp); // @[CompareRecFN.scala 60:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108022.4]
  assign _T_57 = $signed(rawA_sExp) < $signed(rawB_sExp); // @[CompareRecFN.scala 62:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108023.4]
  assign _T_58 = rawA_sig < rawB_sig; // @[CompareRecFN.scala 62:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108024.4]
  assign _T_59 = eqExps & _T_58; // @[CompareRecFN.scala 62:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108025.4]
  assign common_ltMags = _T_57 | _T_59; // @[CompareRecFN.scala 62:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108026.4]
  assign _T_60 = rawA_sig == rawB_sig; // @[CompareRecFN.scala 63:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108027.4]
  assign common_eqMags = eqExps & _T_60; // @[CompareRecFN.scala 63:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108028.4]
  assign _T_62 = bothZeros == 1'h0; // @[CompareRecFN.scala 66:9:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108029.4]
  assign _T_64 = rawB_sign == 1'h0; // @[CompareRecFN.scala 67:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108030.4]
  assign _T_65 = rawA_sign & _T_64; // @[CompareRecFN.scala 67:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108031.4]
  assign _T_67 = bothInfs == 1'h0; // @[CompareRecFN.scala 68:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108032.4]
  assign _T_69 = common_ltMags == 1'h0; // @[CompareRecFN.scala 69:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108033.4]
  assign _T_70 = rawA_sign & _T_69; // @[CompareRecFN.scala 69:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108034.4]
  assign _T_72 = common_eqMags == 1'h0; // @[CompareRecFN.scala 69:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108035.4]
  assign _T_73 = _T_70 & _T_72; // @[CompareRecFN.scala 69:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108036.4]
  assign _T_76 = _T_64 & common_ltMags; // @[CompareRecFN.scala 70:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108038.4]
  assign _T_77 = _T_73 | _T_76; // @[CompareRecFN.scala 69:74:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108039.4]
  assign _T_78 = _T_67 & _T_77; // @[CompareRecFN.scala 68:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108040.4]
  assign _T_79 = _T_65 | _T_78; // @[CompareRecFN.scala 67:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108041.4]
  assign ordered_lt = _T_62 & _T_79; // @[CompareRecFN.scala 66:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108042.4]
  assign _T_80 = rawA_sign == rawB_sign; // @[CompareRecFN.scala 72:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108043.4]
  assign _T_81 = bothInfs | common_eqMags; // @[CompareRecFN.scala 72:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108044.4]
  assign _T_82 = _T_80 & _T_81; // @[CompareRecFN.scala 72:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108045.4]
  assign ordered_eq = bothZeros | _T_82; // @[CompareRecFN.scala 72:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108046.4]
  assign _T_83 = rawA_sig[22]; // @[common.scala 81:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108047.4]
  assign _T_85 = _T_83 == 1'h0; // @[common.scala 81:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108048.4]
  assign _T_86 = rawA_isNaN & _T_85; // @[common.scala 81:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108049.4]
  assign _T_87 = rawB_sig[22]; // @[common.scala 81:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108050.4]
  assign _T_89 = _T_87 == 1'h0; // @[common.scala 81:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108051.4]
  assign _T_90 = rawB_isNaN & _T_89; // @[common.scala 81:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108052.4]
  assign _T_91 = _T_86 | _T_90; // @[CompareRecFN.scala 75:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108053.4]
  assign _T_93 = ordered == 1'h0; // @[CompareRecFN.scala 76:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108054.4]
  assign _T_94 = io_signaling & _T_93; // @[CompareRecFN.scala 76:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108055.4]
  assign invalid = _T_91 | _T_94; // @[CompareRecFN.scala 75:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108056.4]
  assign _T_95 = ordered & ordered_lt; // @[CompareRecFN.scala 78:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108057.4]
  assign _T_96 = ordered & ordered_eq; // @[CompareRecFN.scala 79:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108059.4]
  assign _T_104 = {invalid,4'h0}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108066.4]
  assign io_lt = _T_95;
  assign io_eq = _T_96;
  assign io_exceptionFlags = _T_104;
endmodule
