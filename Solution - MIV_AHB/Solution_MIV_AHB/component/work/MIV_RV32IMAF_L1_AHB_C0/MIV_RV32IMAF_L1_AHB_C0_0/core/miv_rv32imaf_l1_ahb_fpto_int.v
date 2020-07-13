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
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_FPTO_INT( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108205.2]
  input         clock, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108206.4]
  input         io_in_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108208.4]
  input         io_in_bits_ren2, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108208.4]
  input         io_in_bits_wflags, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108208.4]
  input  [2:0]  io_in_bits_rm, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108208.4]
  input  [1:0]  io_in_bits_typ, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108208.4]
  input  [32:0] io_in_bits_in1, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108208.4]
  input  [32:0] io_in_bits_in2, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108208.4]
  output [2:0]  io_out_bits_in_rm, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108208.4]
  output [32:0] io_out_bits_in_in1, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108208.4]
  output [32:0] io_out_bits_in_in2, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108208.4]
  output        io_out_bits_lt, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108208.4]
  output [31:0] io_out_bits_store, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108208.4]
  output [31:0] io_out_bits_toint, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108208.4]
  output [4:0]  io_out_bits_exc // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108208.4]
);
  reg  in_ren2; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108213.4]
  reg [31:0] _RAND_0;
  reg  in_wflags; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108213.4]
  reg [31:0] _RAND_1;
  reg [2:0] in_rm; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108213.4]
  reg [31:0] _RAND_2;
  reg [1:0] in_typ; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108213.4]
  reg [31:0] _RAND_3;
  reg [32:0] in_in1; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108213.4]
  reg [63:0] _RAND_4;
  reg [32:0] in_in2; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108213.4]
  reg [63:0] _RAND_5;
  wire [32:0] dcmp_io_a; // @[FPU.scala 382:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108240.4]
  wire [32:0] dcmp_io_b; // @[FPU.scala 382:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108240.4]
  wire  dcmp_io_signaling; // @[FPU.scala 382:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108240.4]
  wire  dcmp_io_lt; // @[FPU.scala 382:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108240.4]
  wire  dcmp_io_eq; // @[FPU.scala 382:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108240.4]
  wire [4:0] dcmp_io_exceptionFlags; // @[FPU.scala 382:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108240.4]
  wire [32:0] RecFNToIN_io_in; // @[FPU.scala 410:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108376.8]
  wire [2:0] RecFNToIN_io_roundingMode; // @[FPU.scala 410:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108376.8]
  wire  RecFNToIN_io_signedOut; // @[FPU.scala 410:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108376.8]
  wire [31:0] RecFNToIN_io_out; // @[FPU.scala 410:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108376.8]
  wire [2:0] RecFNToIN_io_intExceptionFlags; // @[FPU.scala 410:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108376.8]
  wire [32:0] _GEN_1; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108214.4]
  wire [32:0] _GEN_2; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108214.4]
  wire [1:0] _GEN_3; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108214.4]
  wire [2:0] _GEN_5; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108214.4]
  wire  _GEN_6; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108214.4]
  wire  _GEN_18; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108214.4]
  wire  _T_13; // @[FPU.scala 385:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108246.4]
  wire  _T_15; // @[FPU.scala 385:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108247.4]
  wire [8:0] _T_17; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108250.4]
  wire [2:0] _T_18; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108251.4]
  wire  _T_20; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108252.4]
  wire [1:0] _T_21; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108253.4]
  wire  _T_23; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108254.4]
  wire  _T_26; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108257.4]
  wire  _T_27; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108258.4]
  wire  _T_30; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108261.4]
  wire  _T_31; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108262.4]
  wire  _T_32; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108265.4]
  wire [9:0] _T_33; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108267.4]
  wire  _T_36; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108269.4]
  wire [22:0] _T_37; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108270.4]
  wire [1:0] _T_38; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108271.4]
  wire [24:0] _T_39; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108272.4]
  wire  _T_41; // @[fNFromRecFN.scala 50:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108274.4]
  wire [4:0] _T_43; // @[fNFromRecFN.scala 51:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108275.4]
  wire [5:0] _T_44; // @[fNFromRecFN.scala 51:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108276.4]
  wire [5:0] _T_45; // @[fNFromRecFN.scala 51:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108277.4]
  wire [4:0] _T_46; // @[fNFromRecFN.scala 51:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108278.4]
  wire [23:0] _T_47; // @[fNFromRecFN.scala 52:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108279.4]
  wire [23:0] _T_48; // @[fNFromRecFN.scala 52:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108280.4]
  wire [22:0] _T_49; // @[fNFromRecFN.scala 52:60:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108281.4]
  wire [7:0] _T_51; // @[fNFromRecFN.scala 57:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108282.4]
  wire [8:0] _T_53; // @[fNFromRecFN.scala 57:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108283.4]
  wire [8:0] _T_54; // @[fNFromRecFN.scala 57:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108284.4]
  wire [7:0] _T_55; // @[fNFromRecFN.scala 57:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108285.4]
  wire [7:0] _T_56; // @[fNFromRecFN.scala 55:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108286.4]
  wire  _T_57; // @[fNFromRecFN.scala 59:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108287.4]
  wire [7:0] _T_61; // @[Bitwise.scala 72:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108289.4]
  wire [7:0] _T_62; // @[fNFromRecFN.scala 59:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108290.4]
  wire [22:0] _T_64; // @[fNFromRecFN.scala 63:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108291.4]
  wire [22:0] _T_65; // @[fNFromRecFN.scala 63:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108292.4]
  wire [22:0] _T_66; // @[fNFromRecFN.scala 61:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108293.4]
  wire [8:0] _T_67; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108294.4]
  wire [31:0] store; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108295.4]
  wire  _T_150; // @[FPU.scala 406:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108373.6]
  wire [2:0] _T_140; // @[FPU.scala 402:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108363.6]
  wire [1:0] _T_141; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108364.6]
  wire [2:0] _GEN_30; // @[FPU.scala 402:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108365.6]
  wire [2:0] _T_142; // @[FPU.scala 402:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108365.6]
  wire  _T_144; // @[FPU.scala 402:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108366.6]
  wire [32:0] _T_147; // @[FPU.scala 402:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108369.6]
  wire [32:0] _GEN_25; // @[FPU.scala 406:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108374.6]
  wire  _T_73; // @[FPU.scala 395:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108307.4]
  wire [2:0] _T_75; // @[FPU.scala 190:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108310.6]
  wire [2:0] _T_102; // @[FPU.scala 199:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108328.6]
  wire  _T_104; // @[FPU.scala 199:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108329.6]
  wire  _T_109; // @[FPU.scala 201:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108333.6]
  wire  _T_110; // @[FPU.scala 201:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108334.6]
  wire  _T_107; // @[FPU.scala 200:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108331.6]
  wire  _T_108; // @[FPU.scala 200:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108332.6]
  wire [1:0] _T_132; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108352.6]
  wire [1:0] _T_76; // @[FPU.scala 191:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108311.6]
  wire  _T_78; // @[FPU.scala 192:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108312.6]
  wire  _T_98; // @[FPU.scala 198:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108325.6]
  wire  _T_100; // @[FPU.scala 198:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108326.6]
  wire  _T_101; // @[FPU.scala 198:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108327.6]
  wire  _T_112; // @[FPU.scala 203:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108335.6]
  wire  _T_113; // @[FPU.scala 203:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108336.6]
  wire [2:0] _T_133; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108353.6]
  wire  _T_89; // @[FPU.scala 196:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108319.6]
  wire [6:0] _T_79; // @[FPU.scala 194:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108313.6]
  wire  _T_81; // @[FPU.scala 194:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108314.6]
  wire  _T_91; // @[FPU.scala 196:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108320.6]
  wire  _T_92; // @[FPU.scala 196:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108321.6]
  wire  _T_94; // @[FPU.scala 196:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108322.6]
  wire  _T_95; // @[FPU.scala 196:61:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108323.6]
  wire  _T_116; // @[FPU.scala 203:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108338.6]
  wire  _T_83; // @[FPU.scala 195:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108315.6]
  wire  _T_86; // @[FPU.scala 195:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108317.6]
  wire  _T_87; // @[FPU.scala 195:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108318.6]
  wire  _T_119; // @[FPU.scala 204:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108340.6]
  wire [1:0] _T_131; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108351.6]
  wire [4:0] _T_134; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108354.6]
  wire  _T_97; // @[FPU.scala 197:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108324.6]
  wire  _T_122; // @[FPU.scala 204:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108342.6]
  wire  _T_123; // @[FPU.scala 204:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108343.6]
  wire [1:0] _T_128; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108348.6]
  wire  _T_124; // @[FPU.scala 205:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108344.6]
  wire [2:0] _T_129; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108349.6]
  wire  _T_125; // @[FPU.scala 205:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108345.6]
  wire  _T_126; // @[FPU.scala 205:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108346.6]
  wire [1:0] _T_127; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108347.6]
  wire [4:0] _T_130; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108350.6]
  wire [9:0] _T_135; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108355.6]
  wire [32:0] _T_138; // @[FPU.scala 397:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108358.6]
  wire [32:0] _GEN_22; // @[FPU.scala 395:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108308.4]
  wire [32:0] toint; // @[FPU.scala 401:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108362.4]
  wire [31:0] _T_71; // @[FPU.scala 392:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108304.4]
  wire  _T_152; // @[FPU.scala 413:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108382.8]
  wire  _T_153; // @[FPU.scala 413:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108383.8]
  wire [1:0] _T_154; // @[FPU.scala 415:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108386.8]
  wire  _T_156; // @[FPU.scala 415:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108387.8]
  wire  _T_158; // @[FPU.scala 415:104:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108388.8]
  wire [3:0] _T_159; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108389.8]
  wire [4:0] _T_160; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108390.8]
  wire [4:0] _GEN_26; // @[FPU.scala 406:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108374.6]
  wire [4:0] _GEN_28; // @[FPU.scala 401:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108362.4]
  wire [32:0] _T_161; // @[FPU.scala 436:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108395.4]
  wire  _T_163; // @[FPU.scala 436:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108396.4]
  wire [32:0] _T_164; // @[FPU.scala 436:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108397.4]
  wire  _T_166; // @[FPU.scala 436:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108398.4]
  wire  _T_167; // @[FPU.scala 436:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108399.4]
  wire  _T_168; // @[FPU.scala 436:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108400.4]
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_COMPARE_REC_FN dcmp ( // @[FPU.scala 382:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108240.4]
    .io_a(dcmp_io_a),
    .io_b(dcmp_io_b),
    .io_signaling(dcmp_io_signaling),
    .io_lt(dcmp_io_lt),
    .io_eq(dcmp_io_eq),
    .io_exceptionFlags(dcmp_io_exceptionFlags)
  );
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_REC_FNTO_IN MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_REC_FNTO_IN ( // @[FPU.scala 410:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108376.8]
    .io_in(RecFNToIN_io_in),
    .io_roundingMode(RecFNToIN_io_roundingMode),
    .io_signedOut(RecFNToIN_io_signedOut),
    .io_out(RecFNToIN_io_out),
    .io_intExceptionFlags(RecFNToIN_io_intExceptionFlags)
  );
  assign _GEN_1 = io_in_valid ? io_in_bits_in2 : in_in2; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108214.4]
  assign _GEN_2 = io_in_valid ? io_in_bits_in1 : in_in1; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108214.4]
  assign _GEN_3 = io_in_valid ? io_in_bits_typ : in_typ; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108214.4]
  assign _GEN_5 = io_in_valid ? io_in_bits_rm : in_rm; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108214.4]
  assign _GEN_6 = io_in_valid ? io_in_bits_wflags : in_wflags; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108214.4]
  assign _GEN_18 = io_in_valid ? io_in_bits_ren2 : in_ren2; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108214.4]
  assign _T_13 = in_rm[1]; // @[FPU.scala 385:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108246.4]
  assign _T_15 = _T_13 == 1'h0; // @[FPU.scala 385:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108247.4]
  assign _T_17 = in_in1[31:23]; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108250.4]
  assign _T_18 = _T_17[8:6]; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108251.4]
  assign _T_20 = _T_18 == 3'h0; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108252.4]
  assign _T_21 = _T_17[8:7]; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108253.4]
  assign _T_23 = _T_21 == 2'h3; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108254.4]
  assign _T_26 = _T_17[6]; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108257.4]
  assign _T_27 = _T_23 & _T_26; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108258.4]
  assign _T_30 = _T_26 == 1'h0; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108261.4]
  assign _T_31 = _T_23 & _T_30; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108262.4]
  assign _T_32 = in_in1[32]; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108265.4]
  assign _T_33 = {1'b0,$signed(_T_17)}; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108267.4]
  assign _T_36 = _T_20 == 1'h0; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108269.4]
  assign _T_37 = in_in1[22:0]; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108270.4]
  assign _T_38 = {1'h0,_T_36}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108271.4]
  assign _T_39 = {_T_38,_T_37}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108272.4]
  assign _T_41 = $signed(_T_33) < $signed(10'sh82); // @[fNFromRecFN.scala 50:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108274.4]
  assign _T_43 = _T_33[4:0]; // @[fNFromRecFN.scala 51:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108275.4]
  assign _T_44 = 5'h1 - _T_43; // @[fNFromRecFN.scala 51:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108276.4]
  assign _T_45 = $unsigned(_T_44); // @[fNFromRecFN.scala 51:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108277.4]
  assign _T_46 = _T_45[4:0]; // @[fNFromRecFN.scala 51:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108278.4]
  assign _T_47 = _T_39[24:1]; // @[fNFromRecFN.scala 52:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108279.4]
  assign _T_48 = _T_47 >> _T_46; // @[fNFromRecFN.scala 52:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108280.4]
  assign _T_49 = _T_48[22:0]; // @[fNFromRecFN.scala 52:60:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108281.4]
  assign _T_51 = _T_33[7:0]; // @[fNFromRecFN.scala 57:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108282.4]
  assign _T_53 = _T_51 - 8'h81; // @[fNFromRecFN.scala 57:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108283.4]
  assign _T_54 = $unsigned(_T_53); // @[fNFromRecFN.scala 57:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108284.4]
  assign _T_55 = _T_54[7:0]; // @[fNFromRecFN.scala 57:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108285.4]
  assign _T_56 = _T_41 ? 8'h0 : _T_55; // @[fNFromRecFN.scala 55:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108286.4]
  assign _T_57 = _T_27 | _T_31; // @[fNFromRecFN.scala 59:44:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108287.4]
  assign _T_61 = _T_57 ? 8'hff : 8'h0; // @[Bitwise.scala 72:12:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108289.4]
  assign _T_62 = _T_56 | _T_61; // @[fNFromRecFN.scala 59:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108290.4]
  assign _T_64 = _T_39[22:0]; // @[fNFromRecFN.scala 63:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108291.4]
  assign _T_65 = _T_31 ? 23'h0 : _T_64; // @[fNFromRecFN.scala 63:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108292.4]
  assign _T_66 = _T_41 ? _T_49 : _T_65; // @[fNFromRecFN.scala 61:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108293.4]
  assign _T_67 = {_T_32,_T_62}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108294.4]
  assign store = {_T_67,_T_66}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108295.4]
  assign _T_150 = in_ren2 == 1'h0; // @[FPU.scala 406:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108373.6]
  assign _T_140 = ~ in_rm; // @[FPU.scala 402:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108363.6]
  assign _T_141 = {dcmp_io_lt,dcmp_io_eq}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108364.6]
  assign _GEN_30 = {{1'd0}, _T_141}; // @[FPU.scala 402:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108365.6]
  assign _T_142 = _T_140 & _GEN_30; // @[FPU.scala 402:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108365.6]
  assign _T_144 = _T_142 != 3'h0; // @[FPU.scala 402:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108366.6]
  assign _T_147 = {{32'd0}, _T_144}; // @[FPU.scala 402:57:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108369.6]
  assign _GEN_25 = _T_150 ? {{1'd0}, RecFNToIN_io_out} : _T_147; // @[FPU.scala 406:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108374.6]
  assign _T_73 = in_rm[0]; // @[FPU.scala 395:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108307.4]
  assign _T_75 = in_in1[31:29]; // @[FPU.scala 190:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108310.6]
  assign _T_102 = ~ _T_75; // @[FPU.scala 199:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108328.6]
  assign _T_104 = _T_102 == 3'h0; // @[FPU.scala 199:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108329.6]
  assign _T_109 = in_in1[22]; // @[FPU.scala 201:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108333.6]
  assign _T_110 = _T_104 & _T_109; // @[FPU.scala 201:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108334.6]
  assign _T_107 = _T_109 == 1'h0; // @[FPU.scala 200:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108331.6]
  assign _T_108 = _T_104 & _T_107; // @[FPU.scala 200:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108332.6]
  assign _T_132 = {_T_110,_T_108}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108352.6]
  assign _T_76 = _T_75[2:1]; // @[FPU.scala 191:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108311.6]
  assign _T_78 = _T_76 == 2'h3; // @[FPU.scala 192:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108312.6]
  assign _T_98 = _T_75[0]; // @[FPU.scala 198:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108325.6]
  assign _T_100 = _T_98 == 1'h0; // @[FPU.scala 198:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108326.6]
  assign _T_101 = _T_78 & _T_100; // @[FPU.scala 198:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108327.6]
  assign _T_112 = _T_32 == 1'h0; // @[FPU.scala 203:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108335.6]
  assign _T_113 = _T_101 & _T_112; // @[FPU.scala 203:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108336.6]
  assign _T_133 = {_T_132,_T_113}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108353.6]
  assign _T_89 = _T_76 == 2'h1; // @[FPU.scala 196:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108319.6]
  assign _T_79 = in_in1[29:23]; // @[FPU.scala 194:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108313.6]
  assign _T_81 = _T_79 < 7'h2; // @[FPU.scala 194:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108314.6]
  assign _T_91 = _T_81 == 1'h0; // @[FPU.scala 196:42:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108320.6]
  assign _T_92 = _T_89 & _T_91; // @[FPU.scala 196:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108321.6]
  assign _T_94 = _T_76 == 2'h2; // @[FPU.scala 196:71:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108322.6]
  assign _T_95 = _T_92 | _T_94; // @[FPU.scala 196:61:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108323.6]
  assign _T_116 = _T_95 & _T_112; // @[FPU.scala 203:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108338.6]
  assign _T_83 = _T_75 == 3'h1; // @[FPU.scala 195:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108315.6]
  assign _T_86 = _T_89 & _T_81; // @[FPU.scala 195:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108317.6]
  assign _T_87 = _T_83 | _T_86; // @[FPU.scala 195:40:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108318.6]
  assign _T_119 = _T_87 & _T_112; // @[FPU.scala 204:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108340.6]
  assign _T_131 = {_T_116,_T_119}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108351.6]
  assign _T_134 = {_T_133,_T_131}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108354.6]
  assign _T_97 = _T_75 == 3'h0; // @[FPU.scala 197:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108324.6]
  assign _T_122 = _T_97 & _T_112; // @[FPU.scala 204:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108342.6]
  assign _T_123 = _T_97 & _T_32; // @[FPU.scala 204:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108343.6]
  assign _T_128 = {_T_122,_T_123}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108348.6]
  assign _T_124 = _T_87 & _T_32; // @[FPU.scala 205:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108344.6]
  assign _T_129 = {_T_128,_T_124}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108349.6]
  assign _T_125 = _T_95 & _T_32; // @[FPU.scala 205:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108345.6]
  assign _T_126 = _T_101 & _T_32; // @[FPU.scala 205:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108346.6]
  assign _T_127 = {_T_125,_T_126}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108347.6]
  assign _T_130 = {_T_129,_T_127}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108350.6]
  assign _T_135 = {_T_134,_T_130}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108355.6]
  assign _T_138 = {{23'd0}, _T_135}; // @[FPU.scala 397:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108358.6]
  assign _GEN_22 = _T_73 ? _T_138 : {{1'd0}, store}; // @[FPU.scala 395:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108308.4]
  assign toint = in_wflags ? _GEN_25 : _GEN_22; // @[FPU.scala 401:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108362.4]
  assign _T_71 = toint[31:0]; // @[FPU.scala 392:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108304.4]
  assign _T_152 = in_typ[0]; // @[FPU.scala 413:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108382.8]
  assign _T_153 = ~ _T_152; // @[FPU.scala 413:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108383.8]
  assign _T_154 = RecFNToIN_io_intExceptionFlags[2:1]; // @[FPU.scala 415:55:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108386.8]
  assign _T_156 = _T_154 != 2'h0; // @[FPU.scala 415:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108387.8]
  assign _T_158 = RecFNToIN_io_intExceptionFlags[0]; // @[FPU.scala 415:104:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108388.8]
  assign _T_159 = {_T_156,3'h0}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108389.8]
  assign _T_160 = {_T_159,_T_158}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108390.8]
  assign _GEN_26 = _T_150 ? _T_160 : dcmp_io_exceptionFlags; // @[FPU.scala 406:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108374.6]
  assign _GEN_28 = in_wflags ? _GEN_26 : 5'h0; // @[FPU.scala 401:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108362.4]
  assign _T_161 = $signed(dcmp_io_a); // @[FPU.scala 436:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108395.4]
  assign _T_163 = $signed(_T_161) < $signed(33'sh0); // @[FPU.scala 436:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108396.4]
  assign _T_164 = $signed(dcmp_io_b); // @[FPU.scala 436:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108397.4]
  assign _T_166 = $signed(_T_164) >= $signed(33'sh0); // @[FPU.scala 436:79:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108398.4]
  assign _T_167 = _T_163 & _T_166; // @[FPU.scala 436:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108399.4]
  assign _T_168 = dcmp_io_lt | _T_167; // @[FPU.scala 436:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108400.4]
  assign io_out_bits_in_rm = in_rm;
  assign io_out_bits_in_in1 = in_in1;
  assign io_out_bits_in_in2 = in_in2;
  assign io_out_bits_lt = _T_168;
  assign io_out_bits_store = store;
  assign io_out_bits_toint = _T_71;
  assign io_out_bits_exc = _GEN_28;
  assign dcmp_io_a = in_in1;
  assign dcmp_io_b = in_in2;
  assign dcmp_io_signaling = _T_15;
  assign RecFNToIN_io_in = in_in1;
  assign RecFNToIN_io_roundingMode = in_rm;
  assign RecFNToIN_io_signedOut = _T_153;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  in_ren2 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  in_wflags = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  in_rm = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  in_typ = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{$random}};
  in_in1 = _RAND_4[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{$random}};
  in_in2 = _RAND_5[32:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (io_in_valid) begin
      in_ren2 <= io_in_bits_ren2;
    end
    if (io_in_valid) begin
      in_wflags <= io_in_bits_wflags;
    end
    if (io_in_valid) begin
      in_rm <= io_in_bits_rm;
    end
    if (io_in_valid) begin
      in_typ <= io_in_bits_typ;
    end
    if (io_in_valid) begin
      in_in1 <= io_in_bits_in1;
    end
    if (io_in_valid) begin
      in_in2 <= io_in_bits_in2;
    end
  end
endmodule
