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
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_MUL_ADD_REC_FNTO_RAW_PRE_MUL( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106796.2]
  input  [1:0]  io_op, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
  input  [32:0] io_a, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
  input  [32:0] io_b, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
  input  [32:0] io_c, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
  output [23:0] io_mulAddA, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
  output [23:0] io_mulAddB, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
  output [47:0] io_mulAddC, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
  output        io_toPostMul_isSigNaNAny, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
  output        io_toPostMul_isNaNAOrB, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
  output        io_toPostMul_isInfA, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
  output        io_toPostMul_isZeroA, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
  output        io_toPostMul_isInfB, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
  output        io_toPostMul_isZeroB, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
  output        io_toPostMul_signProd, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
  output        io_toPostMul_isNaNC, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
  output        io_toPostMul_isInfC, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
  output        io_toPostMul_isZeroC, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
  output [9:0]  io_toPostMul_sExpSum, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
  output        io_toPostMul_doSubMags, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
  output        io_toPostMul_CIsDominant, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
  output [4:0]  io_toPostMul_CDom_CAlignDist, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
  output [25:0] io_toPostMul_highAlignedSigC, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
  output        io_toPostMul_bit0AlignedSigC // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106799.4]
);
  wire [8:0] _T_10; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106804.4]
  wire [2:0] _T_11; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106805.4]
  wire  rawA_isZero; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106806.4]
  wire [1:0] _T_14; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106807.4]
  wire  _T_16; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106808.4]
  wire  _T_18; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106811.4]
  wire  rawA_isNaN; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106812.4]
  wire  _T_22; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106815.4]
  wire  rawA_isInf; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106816.4]
  wire  rawA_sign; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106819.4]
  wire [9:0] rawA_sExp; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106821.4]
  wire  _T_28; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106823.4]
  wire [22:0] _T_29; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106824.4]
  wire [1:0] _T_30; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106825.4]
  wire [24:0] rawA_sig; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106826.4]
  wire [8:0] _T_32; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106828.4]
  wire [2:0] _T_33; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106829.4]
  wire  rawB_isZero; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106830.4]
  wire [1:0] _T_36; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106831.4]
  wire  _T_38; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106832.4]
  wire  _T_40; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106835.4]
  wire  rawB_isNaN; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106836.4]
  wire  _T_44; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106839.4]
  wire  rawB_isInf; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106840.4]
  wire  rawB_sign; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106843.4]
  wire [9:0] rawB_sExp; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106845.4]
  wire  _T_50; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106847.4]
  wire [22:0] _T_51; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106848.4]
  wire [1:0] _T_52; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106849.4]
  wire [24:0] rawB_sig; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106850.4]
  wire [8:0] _T_54; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106852.4]
  wire [2:0] _T_55; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106853.4]
  wire  rawC_isZero; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106854.4]
  wire [1:0] _T_58; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106855.4]
  wire  _T_60; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106856.4]
  wire  _T_62; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106859.4]
  wire  rawC_isNaN; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106860.4]
  wire  _T_66; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106863.4]
  wire  rawC_isInf; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106864.4]
  wire  rawC_sign; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106867.4]
  wire [9:0] rawC_sExp; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106869.4]
  wire  _T_72; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106871.4]
  wire [22:0] _T_73; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106872.4]
  wire [1:0] _T_74; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106873.4]
  wire [24:0] rawC_sig; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106874.4]
  wire  _T_76; // @[MulAddRecFN.scala 98:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106876.4]
  wire  _T_77; // @[MulAddRecFN.scala 98:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106877.4]
  wire  signProd; // @[MulAddRecFN.scala 98:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106878.4]
  wire [10:0] _T_78; // @[MulAddRecFN.scala 101:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106879.4]
  wire [11:0] _T_80; // @[MulAddRecFN.scala 101:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106880.4]
  wire [10:0] _T_81; // @[MulAddRecFN.scala 101:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106881.4]
  wire [10:0] sExpAlignedProd; // @[MulAddRecFN.scala 101:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106882.4]
  wire  _T_82; // @[MulAddRecFN.scala 103:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106883.4]
  wire  _T_83; // @[MulAddRecFN.scala 103:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106884.4]
  wire  doSubMags; // @[MulAddRecFN.scala 103:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106885.4]
  wire [10:0] _GEN_0; // @[MulAddRecFN.scala 107:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106886.4]
  wire [11:0] _T_84; // @[MulAddRecFN.scala 107:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106886.4]
  wire [10:0] _T_85; // @[MulAddRecFN.scala 107:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106887.4]
  wire [10:0] sNatCAlignDist; // @[MulAddRecFN.scala 107:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106888.4]
  wire [9:0] posNatCAlignDist; // @[MulAddRecFN.scala 108:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106889.4]
  wire  _T_86; // @[MulAddRecFN.scala 109:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106890.4]
  wire  _T_88; // @[MulAddRecFN.scala 109:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106891.4]
  wire  isMinCAlign; // @[MulAddRecFN.scala 109:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106892.4]
  wire  _T_92; // @[MulAddRecFN.scala 111:60:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106894.4]
  wire  _T_93; // @[MulAddRecFN.scala 111:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106895.4]
  wire  CIsDominant; // @[MulAddRecFN.scala 111:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106896.4]
  wire  _T_96; // @[MulAddRecFN.scala 115:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106897.4]
  wire [6:0] _T_97; // @[MulAddRecFN.scala 116:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106898.4]
  wire [6:0] _T_99; // @[MulAddRecFN.scala 115:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106899.4]
  wire [6:0] CAlignDist; // @[MulAddRecFN.scala 113:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106900.4]
  wire [24:0] _T_100; // @[MulAddRecFN.scala 121:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106901.4]
  wire [24:0] _T_101; // @[MulAddRecFN.scala 121:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106902.4]
  wire [52:0] _T_105; // @[Bitwise.scala 72:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106904.4]
  wire [77:0] _T_106; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106905.4]
  wire [77:0] _T_107; // @[MulAddRecFN.scala 123:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106906.4]
  wire [77:0] mainAlignedSigC; // @[MulAddRecFN.scala 123:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106907.4]
  wire [26:0] _GEN_1; // @[MulAddRecFN.scala 125:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106908.4]
  wire [26:0] _T_108; // @[MulAddRecFN.scala 125:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106908.4]
  wire [3:0] _T_122; // @[primitives.scala 121:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106911.4]
  wire  _T_124; // @[primitives.scala 121:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106912.4]
  wire [3:0] _T_125; // @[primitives.scala 121:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106914.4]
  wire  _T_127; // @[primitives.scala 121:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106915.4]
  wire [3:0] _T_128; // @[primitives.scala 121:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106917.4]
  wire  _T_130; // @[primitives.scala 121:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106918.4]
  wire [3:0] _T_131; // @[primitives.scala 121:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106920.4]
  wire  _T_133; // @[primitives.scala 121:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106921.4]
  wire [3:0] _T_134; // @[primitives.scala 121:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106923.4]
  wire  _T_136; // @[primitives.scala 121:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106924.4]
  wire [3:0] _T_137; // @[primitives.scala 121:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106926.4]
  wire  _T_139; // @[primitives.scala 121:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106927.4]
  wire [2:0] _T_140; // @[primitives.scala 124:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106929.4]
  wire  _T_142; // @[primitives.scala 124:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106930.4]
  wire [1:0] _T_143; // @[primitives.scala 125:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106932.4]
  wire [2:0] _T_144; // @[primitives.scala 125:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106933.4]
  wire [1:0] _T_145; // @[primitives.scala 125:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106934.4]
  wire [1:0] _T_146; // @[primitives.scala 125:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106935.4]
  wire [3:0] _T_147; // @[primitives.scala 125:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106936.4]
  wire [6:0] _T_148; // @[primitives.scala 125:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106937.4]
  wire [4:0] _T_149; // @[MulAddRecFN.scala 127:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106938.4]
  wire [32:0] _T_151; // @[primitives.scala 77:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106939.4]
  wire [5:0] _T_152; // @[primitives.scala 79:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106940.4]
  wire [3:0] _T_153; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106941.4]
  wire [1:0] _T_154; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106942.4]
  wire  _T_155; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106943.4]
  wire  _T_156; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106944.4]
  wire [1:0] _T_157; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106945.4]
  wire [1:0] _T_158; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106946.4]
  wire  _T_159; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106947.4]
  wire  _T_160; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106948.4]
  wire [1:0] _T_161; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106949.4]
  wire [3:0] _T_162; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106950.4]
  wire [1:0] _T_163; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106951.4]
  wire  _T_164; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106952.4]
  wire  _T_165; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106953.4]
  wire [1:0] _T_166; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106954.4]
  wire [5:0] _T_167; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106955.4]
  wire [6:0] _GEN_2; // @[MulAddRecFN.scala 125:68:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106956.4]
  wire [6:0] _T_168; // @[MulAddRecFN.scala 125:68:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106956.4]
  wire  reduced4CExtra; // @[MulAddRecFN.scala 133:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106957.4]
  wire [74:0] _T_170; // @[MulAddRecFN.scala 135:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106958.4]
  wire [2:0] _T_171; // @[MulAddRecFN.scala 137:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106959.4]
  wire [2:0] _T_172; // @[MulAddRecFN.scala 137:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106960.4]
  wire  _T_174; // @[MulAddRecFN.scala 137:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106961.4]
  wire  _T_176; // @[MulAddRecFN.scala 137:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106962.4]
  wire  _T_177; // @[MulAddRecFN.scala 137:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106963.4]
  wire  _T_180; // @[MulAddRecFN.scala 138:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106965.4]
  wire  _T_181; // @[MulAddRecFN.scala 138:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106966.4]
  wire  _T_182; // @[MulAddRecFN.scala 136:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106967.4]
  wire [74:0] _T_183; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106968.4]
  wire [75:0] alignedSigC; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106969.4]
  wire [47:0] _T_184; // @[MulAddRecFN.scala 146:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106972.4]
  wire  _T_185; // @[common.scala 81:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106974.4]
  wire  _T_187; // @[common.scala 81:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106975.4]
  wire  _T_188; // @[common.scala 81:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106976.4]
  wire  _T_189; // @[common.scala 81:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106977.4]
  wire  _T_191; // @[common.scala 81:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106978.4]
  wire  _T_192; // @[common.scala 81:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106979.4]
  wire  _T_193; // @[MulAddRecFN.scala 149:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106980.4]
  wire  _T_194; // @[common.scala 81:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106981.4]
  wire  _T_196; // @[common.scala 81:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106982.4]
  wire  _T_197; // @[common.scala 81:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106983.4]
  wire  _T_198; // @[MulAddRecFN.scala 149:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106984.4]
  wire  _T_199; // @[MulAddRecFN.scala 151:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106986.4]
  wire [11:0] _T_201; // @[MulAddRecFN.scala 161:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106996.4]
  wire [10:0] _T_202; // @[MulAddRecFN.scala 161:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106997.4]
  wire [10:0] _T_203; // @[MulAddRecFN.scala 161:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106998.4]
  wire [10:0] _T_204; // @[MulAddRecFN.scala 161:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106999.4]
  wire [4:0] _T_205; // @[MulAddRecFN.scala 164:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107003.4]
  wire [25:0] _T_206; // @[MulAddRecFN.scala 166:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107005.4]
  wire  _T_207; // @[MulAddRecFN.scala 167:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107007.4]
  wire [9:0] _GEN_3;
  assign _T_10 = io_a[31:23]; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106804.4]
  assign _T_11 = _T_10[8:6]; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106805.4]
  assign rawA_isZero = _T_11 == 3'h0; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106806.4]
  assign _T_14 = _T_10[8:7]; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106807.4]
  assign _T_16 = _T_14 == 2'h3; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106808.4]
  assign _T_18 = _T_10[6]; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106811.4]
  assign rawA_isNaN = _T_16 & _T_18; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106812.4]
  assign _T_22 = _T_18 == 1'h0; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106815.4]
  assign rawA_isInf = _T_16 & _T_22; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106816.4]
  assign rawA_sign = io_a[32]; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106819.4]
  assign rawA_sExp = {1'b0,$signed(_T_10)}; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106821.4]
  assign _T_28 = rawA_isZero == 1'h0; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106823.4]
  assign _T_29 = io_a[22:0]; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106824.4]
  assign _T_30 = {1'h0,_T_28}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106825.4]
  assign rawA_sig = {_T_30,_T_29}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106826.4]
  assign _T_32 = io_b[31:23]; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106828.4]
  assign _T_33 = _T_32[8:6]; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106829.4]
  assign rawB_isZero = _T_33 == 3'h0; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106830.4]
  assign _T_36 = _T_32[8:7]; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106831.4]
  assign _T_38 = _T_36 == 2'h3; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106832.4]
  assign _T_40 = _T_32[6]; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106835.4]
  assign rawB_isNaN = _T_38 & _T_40; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106836.4]
  assign _T_44 = _T_40 == 1'h0; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106839.4]
  assign rawB_isInf = _T_38 & _T_44; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106840.4]
  assign rawB_sign = io_b[32]; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106843.4]
  assign rawB_sExp = {1'b0,$signed(_T_32)}; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106845.4]
  assign _T_50 = rawB_isZero == 1'h0; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106847.4]
  assign _T_51 = io_b[22:0]; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106848.4]
  assign _T_52 = {1'h0,_T_50}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106849.4]
  assign rawB_sig = {_T_52,_T_51}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106850.4]
  assign _T_54 = io_c[31:23]; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106852.4]
  assign _T_55 = _T_54[8:6]; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106853.4]
  assign rawC_isZero = _T_55 == 3'h0; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106854.4]
  assign _T_58 = _T_54[8:7]; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106855.4]
  assign _T_60 = _T_58 == 2'h3; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106856.4]
  assign _T_62 = _T_54[6]; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106859.4]
  assign rawC_isNaN = _T_60 & _T_62; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106860.4]
  assign _T_66 = _T_62 == 1'h0; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106863.4]
  assign rawC_isInf = _T_60 & _T_66; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106864.4]
  assign rawC_sign = io_c[32]; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106867.4]
  assign rawC_sExp = {1'b0,$signed(_T_54)}; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106869.4]
  assign _T_72 = rawC_isZero == 1'h0; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106871.4]
  assign _T_73 = io_c[22:0]; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106872.4]
  assign _T_74 = {1'h0,_T_72}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106873.4]
  assign rawC_sig = {_T_74,_T_73}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106874.4]
  assign _T_76 = rawA_sign ^ rawB_sign; // @[MulAddRecFN.scala 98:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106876.4]
  assign _T_77 = io_op[1]; // @[MulAddRecFN.scala 98:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106877.4]
  assign signProd = _T_76 ^ _T_77; // @[MulAddRecFN.scala 98:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106878.4]
  assign _T_78 = $signed(rawA_sExp) + $signed(rawB_sExp); // @[MulAddRecFN.scala 101:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106879.4]
  assign _T_80 = $signed(_T_78) + $signed(-11'she5); // @[MulAddRecFN.scala 101:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106880.4]
  assign _T_81 = _T_80[10:0]; // @[MulAddRecFN.scala 101:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106881.4]
  assign sExpAlignedProd = $signed(_T_81); // @[MulAddRecFN.scala 101:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106882.4]
  assign _T_82 = signProd ^ rawC_sign; // @[MulAddRecFN.scala 103:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106883.4]
  assign _T_83 = io_op[0]; // @[MulAddRecFN.scala 103:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106884.4]
  assign doSubMags = _T_82 ^ _T_83; // @[MulAddRecFN.scala 103:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106885.4]
  assign _GEN_0 = {{1{rawC_sExp[9]}},rawC_sExp}; // @[MulAddRecFN.scala 107:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106886.4]
  assign _T_84 = $signed(sExpAlignedProd) - $signed(_GEN_0); // @[MulAddRecFN.scala 107:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106886.4]
  assign _T_85 = _T_84[10:0]; // @[MulAddRecFN.scala 107:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106887.4]
  assign sNatCAlignDist = $signed(_T_85); // @[MulAddRecFN.scala 107:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106888.4]
  assign posNatCAlignDist = sNatCAlignDist[9:0]; // @[MulAddRecFN.scala 108:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106889.4]
  assign _T_86 = rawA_isZero | rawB_isZero; // @[MulAddRecFN.scala 109:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106890.4]
  assign _T_88 = $signed(sNatCAlignDist) < $signed(11'sh0); // @[MulAddRecFN.scala 109:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106891.4]
  assign isMinCAlign = _T_86 | _T_88; // @[MulAddRecFN.scala 109:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106892.4]
  assign _T_92 = posNatCAlignDist <= 10'h18; // @[MulAddRecFN.scala 111:60:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106894.4]
  assign _T_93 = isMinCAlign | _T_92; // @[MulAddRecFN.scala 111:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106895.4]
  assign CIsDominant = _T_72 & _T_93; // @[MulAddRecFN.scala 111:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106896.4]
  assign _T_96 = posNatCAlignDist < 10'h4a; // @[MulAddRecFN.scala 115:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106897.4]
  assign _T_97 = posNatCAlignDist[6:0]; // @[MulAddRecFN.scala 116:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106898.4]
  assign _T_99 = _T_96 ? _T_97 : 7'h4a; // @[MulAddRecFN.scala 115:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106899.4]
  assign CAlignDist = isMinCAlign ? 7'h0 : _T_99; // @[MulAddRecFN.scala 113:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106900.4]
  assign _T_100 = ~ rawC_sig; // @[MulAddRecFN.scala 121:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106901.4]
  assign _T_101 = doSubMags ? _T_100 : rawC_sig; // @[MulAddRecFN.scala 121:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106902.4]
  assign _T_105 = doSubMags ? 53'h1fffffffffffff : 53'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106904.4]
  assign _T_106 = {_T_101,_T_105}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106905.4]
  assign _T_107 = $signed(_T_106); // @[MulAddRecFN.scala 123:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106906.4]
  assign mainAlignedSigC = $signed(_T_107) >>> CAlignDist; // @[MulAddRecFN.scala 123:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106907.4]
  assign _GEN_1 = {{2'd0}, rawC_sig}; // @[MulAddRecFN.scala 125:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106908.4]
  assign _T_108 = _GEN_1 << 2; // @[MulAddRecFN.scala 125:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106908.4]
  assign _T_122 = _T_108[3:0]; // @[primitives.scala 121:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106911.4]
  assign _T_124 = _T_122 != 4'h0; // @[primitives.scala 121:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106912.4]
  assign _T_125 = _T_108[7:4]; // @[primitives.scala 121:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106914.4]
  assign _T_127 = _T_125 != 4'h0; // @[primitives.scala 121:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106915.4]
  assign _T_128 = _T_108[11:8]; // @[primitives.scala 121:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106917.4]
  assign _T_130 = _T_128 != 4'h0; // @[primitives.scala 121:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106918.4]
  assign _T_131 = _T_108[15:12]; // @[primitives.scala 121:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106920.4]
  assign _T_133 = _T_131 != 4'h0; // @[primitives.scala 121:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106921.4]
  assign _T_134 = _T_108[19:16]; // @[primitives.scala 121:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106923.4]
  assign _T_136 = _T_134 != 4'h0; // @[primitives.scala 121:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106924.4]
  assign _T_137 = _T_108[23:20]; // @[primitives.scala 121:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106926.4]
  assign _T_139 = _T_137 != 4'h0; // @[primitives.scala 121:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106927.4]
  assign _T_140 = _T_108[26:24]; // @[primitives.scala 124:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106929.4]
  assign _T_142 = _T_140 != 3'h0; // @[primitives.scala 124:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106930.4]
  assign _T_143 = {_T_130,_T_127}; // @[primitives.scala 125:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106932.4]
  assign _T_144 = {_T_143,_T_124}; // @[primitives.scala 125:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106933.4]
  assign _T_145 = {_T_136,_T_133}; // @[primitives.scala 125:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106934.4]
  assign _T_146 = {_T_142,_T_139}; // @[primitives.scala 125:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106935.4]
  assign _T_147 = {_T_146,_T_145}; // @[primitives.scala 125:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106936.4]
  assign _T_148 = {_T_147,_T_144}; // @[primitives.scala 125:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106937.4]
  assign _T_149 = CAlignDist[6:2]; // @[MulAddRecFN.scala 127:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106938.4]
  assign _T_151 = $signed(-33'sh100000000) >>> _T_149; // @[primitives.scala 77:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106939.4]
  assign _T_152 = _T_151[19:14]; // @[primitives.scala 79:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106940.4]
  assign _T_153 = _T_152[3:0]; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106941.4]
  assign _T_154 = _T_153[1:0]; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106942.4]
  assign _T_155 = _T_154[0]; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106943.4]
  assign _T_156 = _T_154[1]; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106944.4]
  assign _T_157 = {_T_155,_T_156}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106945.4]
  assign _T_158 = _T_153[3:2]; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106946.4]
  assign _T_159 = _T_158[0]; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106947.4]
  assign _T_160 = _T_158[1]; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106948.4]
  assign _T_161 = {_T_159,_T_160}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106949.4]
  assign _T_162 = {_T_157,_T_161}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106950.4]
  assign _T_163 = _T_152[5:4]; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106951.4]
  assign _T_164 = _T_163[0]; // @[Bitwise.scala 109:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106952.4]
  assign _T_165 = _T_163[1]; // @[Bitwise.scala 109:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106953.4]
  assign _T_166 = {_T_164,_T_165}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106954.4]
  assign _T_167 = {_T_162,_T_166}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106955.4]
  assign _GEN_2 = {{1'd0}, _T_167}; // @[MulAddRecFN.scala 125:68:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106956.4]
  assign _T_168 = _T_148 & _GEN_2; // @[MulAddRecFN.scala 125:68:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106956.4]
  assign reduced4CExtra = _T_168 != 7'h0; // @[MulAddRecFN.scala 133:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106957.4]
  assign _T_170 = mainAlignedSigC[77:3]; // @[MulAddRecFN.scala 135:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106958.4]
  assign _T_171 = mainAlignedSigC[2:0]; // @[MulAddRecFN.scala 137:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106959.4]
  assign _T_172 = ~ _T_171; // @[MulAddRecFN.scala 137:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106960.4]
  assign _T_174 = _T_172 == 3'h0; // @[MulAddRecFN.scala 137:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106961.4]
  assign _T_176 = reduced4CExtra == 1'h0; // @[MulAddRecFN.scala 137:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106962.4]
  assign _T_177 = _T_174 & _T_176; // @[MulAddRecFN.scala 137:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106963.4]
  assign _T_180 = _T_171 != 3'h0; // @[MulAddRecFN.scala 138:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106965.4]
  assign _T_181 = _T_180 | reduced4CExtra; // @[MulAddRecFN.scala 138:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106966.4]
  assign _T_182 = doSubMags ? _T_177 : _T_181; // @[MulAddRecFN.scala 136:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106967.4]
  assign _T_183 = $unsigned(_T_170); // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106968.4]
  assign alignedSigC = {_T_183,_T_182}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106969.4]
  assign _T_184 = alignedSigC[48:1]; // @[MulAddRecFN.scala 146:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106972.4]
  assign _T_185 = rawA_sig[22]; // @[common.scala 81:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106974.4]
  assign _T_187 = _T_185 == 1'h0; // @[common.scala 81:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106975.4]
  assign _T_188 = rawA_isNaN & _T_187; // @[common.scala 81:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106976.4]
  assign _T_189 = rawB_sig[22]; // @[common.scala 81:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106977.4]
  assign _T_191 = _T_189 == 1'h0; // @[common.scala 81:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106978.4]
  assign _T_192 = rawB_isNaN & _T_191; // @[common.scala 81:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106979.4]
  assign _T_193 = _T_188 | _T_192; // @[MulAddRecFN.scala 149:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106980.4]
  assign _T_194 = rawC_sig[22]; // @[common.scala 81:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106981.4]
  assign _T_196 = _T_194 == 1'h0; // @[common.scala 81:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106982.4]
  assign _T_197 = rawC_isNaN & _T_196; // @[common.scala 81:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106983.4]
  assign _T_198 = _T_193 | _T_197; // @[MulAddRecFN.scala 149:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106984.4]
  assign _T_199 = rawA_isNaN | rawB_isNaN; // @[MulAddRecFN.scala 151:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106986.4]
  assign _T_201 = $signed(sExpAlignedProd) - $signed(11'sh18); // @[MulAddRecFN.scala 161:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106996.4]
  assign _T_202 = _T_201[10:0]; // @[MulAddRecFN.scala 161:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106997.4]
  assign _T_203 = $signed(_T_202); // @[MulAddRecFN.scala 161:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106998.4]
  assign _T_204 = CIsDominant ? $signed({{1{rawC_sExp[9]}},rawC_sExp}) : $signed(_T_203); // @[MulAddRecFN.scala 161:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@106999.4]
  assign _T_205 = CAlignDist[4:0]; // @[MulAddRecFN.scala 164:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107003.4]
  assign _T_206 = alignedSigC[74:49]; // @[MulAddRecFN.scala 166:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107005.4]
  assign _T_207 = alignedSigC[0]; // @[MulAddRecFN.scala 167:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107007.4]
  assign io_mulAddA = rawA_sig[23:0];
  assign io_mulAddB = rawB_sig[23:0];
  assign io_mulAddC = _T_184;
  assign io_toPostMul_isSigNaNAny = _T_198;
  assign io_toPostMul_isNaNAOrB = _T_199;
  assign io_toPostMul_isInfA = rawA_isInf;
  assign io_toPostMul_isZeroA = rawA_isZero;
  assign io_toPostMul_isInfB = rawB_isInf;
  assign io_toPostMul_isZeroB = rawB_isZero;
  assign io_toPostMul_signProd = signProd;
  assign io_toPostMul_isNaNC = rawC_isNaN;
  assign io_toPostMul_isInfC = rawC_isInf;
  assign io_toPostMul_isZeroC = rawC_isZero;
  assign _GEN_3 = _T_204[9:0];
  assign io_toPostMul_sExpSum = $signed(_GEN_3);
  assign io_toPostMul_doSubMags = doSubMags;
  assign io_toPostMul_CIsDominant = CIsDominant;
  assign io_toPostMul_CDom_CAlignDist = _T_205;
  assign io_toPostMul_highAlignedSigC = _T_206;
  assign io_toPostMul_bit0AlignedSigC = _T_207;
endmodule
