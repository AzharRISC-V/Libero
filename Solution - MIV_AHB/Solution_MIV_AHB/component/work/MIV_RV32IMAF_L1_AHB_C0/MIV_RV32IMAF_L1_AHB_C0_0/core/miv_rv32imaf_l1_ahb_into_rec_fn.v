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
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_INTO_REC_FN( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108562.2]
  input         io_signedIn, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108565.4]
  input  [31:0] io_in, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108565.4]
  input  [2:0]  io_roundingMode, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108565.4]
  output [32:0] io_out, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108565.4]
  output [4:0]  io_exceptionFlags // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108565.4]
);
  wire  roundAnyRawFNToRecFN_io_in_isZero; // @[INToRecFN.scala 59:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108706.4]
  wire  roundAnyRawFNToRecFN_io_in_sign; // @[INToRecFN.scala 59:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108706.4]
  wire [6:0] roundAnyRawFNToRecFN_io_in_sExp; // @[INToRecFN.scala 59:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108706.4]
  wire [32:0] roundAnyRawFNToRecFN_io_in_sig; // @[INToRecFN.scala 59:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108706.4]
  wire [2:0] roundAnyRawFNToRecFN_io_roundingMode; // @[INToRecFN.scala 59:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108706.4]
  wire [32:0] roundAnyRawFNToRecFN_io_out; // @[INToRecFN.scala 59:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108706.4]
  wire [4:0] roundAnyRawFNToRecFN_io_exceptionFlags; // @[INToRecFN.scala 59:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108706.4]
  wire  _T_8; // @[rawFloatFromIN.scala 50:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108570.4]
  wire  intAsRawFloat_sign; // @[rawFloatFromIN.scala 50:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108571.4]
  wire [32:0] _T_11; // @[rawFloatFromIN.scala 51:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108572.4]
  wire [32:0] _T_12; // @[rawFloatFromIN.scala 51:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108573.4]
  wire [31:0] _T_13; // @[rawFloatFromIN.scala 51:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108574.4]
  wire [31:0] _T_14; // @[rawFloatFromIN.scala 51:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108575.4]
  wire [63:0] _T_16; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108576.4]
  wire [31:0] _T_17; // @[rawFloatFromIN.scala 52:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108577.4]
  wire [15:0] _T_22; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108580.4]
  wire [31:0] _T_23; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108581.4]
  wire [15:0] _T_24; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108582.4]
  wire [31:0] _GEN_0; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108583.4]
  wire [31:0] _T_25; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108583.4]
  wire [31:0] _T_27; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108585.4]
  wire [31:0] _T_28; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108586.4]
  wire [23:0] _T_32; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108590.4]
  wire [31:0] _GEN_1; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108591.4]
  wire [31:0] _T_33; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108591.4]
  wire [23:0] _T_34; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108592.4]
  wire [31:0] _GEN_2; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108593.4]
  wire [31:0] _T_35; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108593.4]
  wire [31:0] _T_37; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108595.4]
  wire [31:0] _T_38; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108596.4]
  wire [27:0] _T_42; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108600.4]
  wire [31:0] _GEN_3; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108601.4]
  wire [31:0] _T_43; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108601.4]
  wire [27:0] _T_44; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108602.4]
  wire [31:0] _GEN_4; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108603.4]
  wire [31:0] _T_45; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108603.4]
  wire [31:0] _T_47; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108605.4]
  wire [31:0] _T_48; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108606.4]
  wire [29:0] _T_52; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108610.4]
  wire [31:0] _GEN_5; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108611.4]
  wire [31:0] _T_53; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108611.4]
  wire [29:0] _T_54; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108612.4]
  wire [31:0] _GEN_6; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108613.4]
  wire [31:0] _T_55; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108613.4]
  wire [31:0] _T_57; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108615.4]
  wire [31:0] _T_58; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108616.4]
  wire [30:0] _T_62; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108620.4]
  wire [31:0] _GEN_7; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108621.4]
  wire [31:0] _T_63; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108621.4]
  wire [30:0] _T_64; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108622.4]
  wire [31:0] _GEN_8; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108623.4]
  wire [31:0] _T_65; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108623.4]
  wire [31:0] _T_67; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108625.4]
  wire [31:0] _T_68; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108626.4]
  wire  _T_69; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108627.4]
  wire  _T_70; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108628.4]
  wire  _T_71; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108629.4]
  wire  _T_72; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108630.4]
  wire  _T_73; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108631.4]
  wire  _T_74; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108632.4]
  wire  _T_75; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108633.4]
  wire  _T_76; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108634.4]
  wire  _T_77; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108635.4]
  wire  _T_78; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108636.4]
  wire  _T_79; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108637.4]
  wire  _T_80; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108638.4]
  wire  _T_81; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108639.4]
  wire  _T_82; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108640.4]
  wire  _T_83; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108641.4]
  wire  _T_84; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108642.4]
  wire  _T_85; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108643.4]
  wire  _T_86; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108644.4]
  wire  _T_87; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108645.4]
  wire  _T_88; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108646.4]
  wire  _T_89; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108647.4]
  wire  _T_90; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108648.4]
  wire  _T_91; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108649.4]
  wire  _T_92; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108650.4]
  wire  _T_93; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108651.4]
  wire  _T_94; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108652.4]
  wire  _T_95; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108653.4]
  wire  _T_96; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108654.4]
  wire  _T_97; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108655.4]
  wire  _T_98; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108656.4]
  wire  _T_99; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108657.4]
  wire [4:0] _T_133; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108659.4]
  wire [4:0] _T_134; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108660.4]
  wire [4:0] _T_135; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108661.4]
  wire [4:0] _T_136; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108662.4]
  wire [4:0] _T_137; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108663.4]
  wire [4:0] _T_138; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108664.4]
  wire [4:0] _T_139; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108665.4]
  wire [4:0] _T_140; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108666.4]
  wire [4:0] _T_141; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108667.4]
  wire [4:0] _T_142; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108668.4]
  wire [4:0] _T_143; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108669.4]
  wire [4:0] _T_144; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108670.4]
  wire [4:0] _T_145; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108671.4]
  wire [4:0] _T_146; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108672.4]
  wire [4:0] _T_147; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108673.4]
  wire [4:0] _T_148; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108674.4]
  wire [4:0] _T_149; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108675.4]
  wire [4:0] _T_150; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108676.4]
  wire [4:0] _T_151; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108677.4]
  wire [4:0] _T_152; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108678.4]
  wire [4:0] _T_153; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108679.4]
  wire [4:0] _T_154; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108680.4]
  wire [4:0] _T_155; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108681.4]
  wire [4:0] _T_156; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108682.4]
  wire [4:0] _T_157; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108683.4]
  wire [4:0] _T_158; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108684.4]
  wire [4:0] _T_159; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108685.4]
  wire [4:0] _T_160; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108686.4]
  wire [4:0] _T_161; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108687.4]
  wire [4:0] _T_162; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108688.4]
  wire [4:0] _T_163; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108689.4]
  wire [62:0] _GEN_9; // @[rawFloatFromIN.scala 55:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108690.4]
  wire [62:0] _T_164; // @[rawFloatFromIN.scala 55:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108690.4]
  wire [31:0] _T_165; // @[rawFloatFromIN.scala 55:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108691.4]
  wire  _T_169; // @[rawFloatFromIN.scala 61:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108696.4]
  wire  intAsRawFloat_isZero; // @[rawFloatFromIN.scala 61:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108697.4]
  wire [4:0] _T_174; // @[rawFloatFromIN.scala 63:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108701.4]
  wire [5:0] _T_175; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108702.4]
  wire [6:0] intAsRawFloat_sExp; // @[rawFloatFromIN.scala 63:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108703.4]
  wire [32:0] intAsRawFloat_sig; // @[rawFloatFromIN.scala 58:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108692.4]
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_ROUND_ANY_RAW_FNTO_REC_FN_1 roundAnyRawFNToRecFN ( // @[INToRecFN.scala 59:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108706.4]
    .io_in_isZero(roundAnyRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundAnyRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundAnyRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundAnyRawFNToRecFN_io_in_sig),
    .io_roundingMode(roundAnyRawFNToRecFN_io_roundingMode),
    .io_out(roundAnyRawFNToRecFN_io_out),
    .io_exceptionFlags(roundAnyRawFNToRecFN_io_exceptionFlags)
  );
  assign _T_8 = io_in[31]; // @[rawFloatFromIN.scala 50:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108570.4]
  assign intAsRawFloat_sign = io_signedIn & _T_8; // @[rawFloatFromIN.scala 50:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108571.4]
  assign _T_11 = 32'h0 - io_in; // @[rawFloatFromIN.scala 51:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108572.4]
  assign _T_12 = $unsigned(_T_11); // @[rawFloatFromIN.scala 51:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108573.4]
  assign _T_13 = _T_12[31:0]; // @[rawFloatFromIN.scala 51:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108574.4]
  assign _T_14 = intAsRawFloat_sign ? _T_13 : io_in; // @[rawFloatFromIN.scala 51:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108575.4]
  assign _T_16 = {32'h0,_T_14}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108576.4]
  assign _T_17 = _T_16[31:0]; // @[rawFloatFromIN.scala 52:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108577.4]
  assign _T_22 = _T_17[31:16]; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108580.4]
  assign _T_23 = {{16'd0}, _T_22}; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108581.4]
  assign _T_24 = _T_17[15:0]; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108582.4]
  assign _GEN_0 = {{16'd0}, _T_24}; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108583.4]
  assign _T_25 = _GEN_0 << 16; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108583.4]
  assign _T_27 = _T_25 & 32'hffff0000; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108585.4]
  assign _T_28 = _T_23 | _T_27; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108586.4]
  assign _T_32 = _T_28[31:8]; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108590.4]
  assign _GEN_1 = {{8'd0}, _T_32}; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108591.4]
  assign _T_33 = _GEN_1 & 32'hff00ff; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108591.4]
  assign _T_34 = _T_28[23:0]; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108592.4]
  assign _GEN_2 = {{8'd0}, _T_34}; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108593.4]
  assign _T_35 = _GEN_2 << 8; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108593.4]
  assign _T_37 = _T_35 & 32'hff00ff00; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108595.4]
  assign _T_38 = _T_33 | _T_37; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108596.4]
  assign _T_42 = _T_38[31:4]; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108600.4]
  assign _GEN_3 = {{4'd0}, _T_42}; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108601.4]
  assign _T_43 = _GEN_3 & 32'hf0f0f0f; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108601.4]
  assign _T_44 = _T_38[27:0]; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108602.4]
  assign _GEN_4 = {{4'd0}, _T_44}; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108603.4]
  assign _T_45 = _GEN_4 << 4; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108603.4]
  assign _T_47 = _T_45 & 32'hf0f0f0f0; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108605.4]
  assign _T_48 = _T_43 | _T_47; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108606.4]
  assign _T_52 = _T_48[31:2]; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108610.4]
  assign _GEN_5 = {{2'd0}, _T_52}; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108611.4]
  assign _T_53 = _GEN_5 & 32'h33333333; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108611.4]
  assign _T_54 = _T_48[29:0]; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108612.4]
  assign _GEN_6 = {{2'd0}, _T_54}; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108613.4]
  assign _T_55 = _GEN_6 << 2; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108613.4]
  assign _T_57 = _T_55 & 32'hcccccccc; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108615.4]
  assign _T_58 = _T_53 | _T_57; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108616.4]
  assign _T_62 = _T_58[31:1]; // @[Bitwise.scala 103:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108620.4]
  assign _GEN_7 = {{1'd0}, _T_62}; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108621.4]
  assign _T_63 = _GEN_7 & 32'h55555555; // @[Bitwise.scala 103:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108621.4]
  assign _T_64 = _T_58[30:0]; // @[Bitwise.scala 103:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108622.4]
  assign _GEN_8 = {{1'd0}, _T_64}; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108623.4]
  assign _T_65 = _GEN_8 << 1; // @[Bitwise.scala 103:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108623.4]
  assign _T_67 = _T_65 & 32'haaaaaaaa; // @[Bitwise.scala 103:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108625.4]
  assign _T_68 = _T_63 | _T_67; // @[Bitwise.scala 103:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108626.4]
  assign _T_69 = _T_68[0]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108627.4]
  assign _T_70 = _T_68[1]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108628.4]
  assign _T_71 = _T_68[2]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108629.4]
  assign _T_72 = _T_68[3]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108630.4]
  assign _T_73 = _T_68[4]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108631.4]
  assign _T_74 = _T_68[5]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108632.4]
  assign _T_75 = _T_68[6]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108633.4]
  assign _T_76 = _T_68[7]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108634.4]
  assign _T_77 = _T_68[8]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108635.4]
  assign _T_78 = _T_68[9]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108636.4]
  assign _T_79 = _T_68[10]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108637.4]
  assign _T_80 = _T_68[11]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108638.4]
  assign _T_81 = _T_68[12]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108639.4]
  assign _T_82 = _T_68[13]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108640.4]
  assign _T_83 = _T_68[14]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108641.4]
  assign _T_84 = _T_68[15]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108642.4]
  assign _T_85 = _T_68[16]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108643.4]
  assign _T_86 = _T_68[17]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108644.4]
  assign _T_87 = _T_68[18]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108645.4]
  assign _T_88 = _T_68[19]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108646.4]
  assign _T_89 = _T_68[20]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108647.4]
  assign _T_90 = _T_68[21]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108648.4]
  assign _T_91 = _T_68[22]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108649.4]
  assign _T_92 = _T_68[23]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108650.4]
  assign _T_93 = _T_68[24]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108651.4]
  assign _T_94 = _T_68[25]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108652.4]
  assign _T_95 = _T_68[26]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108653.4]
  assign _T_96 = _T_68[27]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108654.4]
  assign _T_97 = _T_68[28]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108655.4]
  assign _T_98 = _T_68[29]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108656.4]
  assign _T_99 = _T_68[30]; // @[OneHot.scala 39:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108657.4]
  assign _T_133 = _T_99 ? 5'h1e : 5'h1f; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108659.4]
  assign _T_134 = _T_98 ? 5'h1d : _T_133; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108660.4]
  assign _T_135 = _T_97 ? 5'h1c : _T_134; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108661.4]
  assign _T_136 = _T_96 ? 5'h1b : _T_135; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108662.4]
  assign _T_137 = _T_95 ? 5'h1a : _T_136; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108663.4]
  assign _T_138 = _T_94 ? 5'h19 : _T_137; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108664.4]
  assign _T_139 = _T_93 ? 5'h18 : _T_138; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108665.4]
  assign _T_140 = _T_92 ? 5'h17 : _T_139; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108666.4]
  assign _T_141 = _T_91 ? 5'h16 : _T_140; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108667.4]
  assign _T_142 = _T_90 ? 5'h15 : _T_141; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108668.4]
  assign _T_143 = _T_89 ? 5'h14 : _T_142; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108669.4]
  assign _T_144 = _T_88 ? 5'h13 : _T_143; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108670.4]
  assign _T_145 = _T_87 ? 5'h12 : _T_144; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108671.4]
  assign _T_146 = _T_86 ? 5'h11 : _T_145; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108672.4]
  assign _T_147 = _T_85 ? 5'h10 : _T_146; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108673.4]
  assign _T_148 = _T_84 ? 5'hf : _T_147; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108674.4]
  assign _T_149 = _T_83 ? 5'he : _T_148; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108675.4]
  assign _T_150 = _T_82 ? 5'hd : _T_149; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108676.4]
  assign _T_151 = _T_81 ? 5'hc : _T_150; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108677.4]
  assign _T_152 = _T_80 ? 5'hb : _T_151; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108678.4]
  assign _T_153 = _T_79 ? 5'ha : _T_152; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108679.4]
  assign _T_154 = _T_78 ? 5'h9 : _T_153; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108680.4]
  assign _T_155 = _T_77 ? 5'h8 : _T_154; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108681.4]
  assign _T_156 = _T_76 ? 5'h7 : _T_155; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108682.4]
  assign _T_157 = _T_75 ? 5'h6 : _T_156; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108683.4]
  assign _T_158 = _T_74 ? 5'h5 : _T_157; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108684.4]
  assign _T_159 = _T_73 ? 5'h4 : _T_158; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108685.4]
  assign _T_160 = _T_72 ? 5'h3 : _T_159; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108686.4]
  assign _T_161 = _T_71 ? 5'h2 : _T_160; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108687.4]
  assign _T_162 = _T_70 ? 5'h1 : _T_161; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108688.4]
  assign _T_163 = _T_69 ? 5'h0 : _T_162; // @[Mux.scala 31:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108689.4]
  assign _GEN_9 = {{31'd0}, _T_17}; // @[rawFloatFromIN.scala 55:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108690.4]
  assign _T_164 = _GEN_9 << _T_163; // @[rawFloatFromIN.scala 55:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108690.4]
  assign _T_165 = _T_164[31:0]; // @[rawFloatFromIN.scala 55:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108691.4]
  assign _T_169 = _T_165[31]; // @[rawFloatFromIN.scala 61:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108696.4]
  assign intAsRawFloat_isZero = _T_169 == 1'h0; // @[rawFloatFromIN.scala 61:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108697.4]
  assign _T_174 = ~ _T_163; // @[rawFloatFromIN.scala 63:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108701.4]
  assign _T_175 = {1'h1,_T_174}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108702.4]
  assign intAsRawFloat_sExp = {1'b0,$signed(_T_175)}; // @[rawFloatFromIN.scala 63:75:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108703.4]
  assign intAsRawFloat_sig = {{1'd0}, _T_165}; // @[rawFloatFromIN.scala 58:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108692.4]
  assign io_out = roundAnyRawFNToRecFN_io_out;
  assign io_exceptionFlags = roundAnyRawFNToRecFN_io_exceptionFlags;
  assign roundAnyRawFNToRecFN_io_in_isZero = intAsRawFloat_isZero;
  assign roundAnyRawFNToRecFN_io_in_sign = intAsRawFloat_sign;
  assign roundAnyRawFNToRecFN_io_in_sExp = intAsRawFloat_sExp;
  assign roundAnyRawFNToRecFN_io_in_sig = intAsRawFloat_sig;
  assign roundAnyRawFNToRecFN_io_roundingMode = io_roundingMode;
endmodule
