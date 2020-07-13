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
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_TLERROR_ERROR( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115961.2]
  input         clock, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115962.4]
  input         reset, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115963.4]
  output        auto_in_a_ready, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115964.4]
  input         auto_in_a_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115964.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115964.4]
  input  [3:0]  auto_in_a_bits_size, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115964.4]
  input  [2:0]  auto_in_a_bits_source, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115964.4]
  input         auto_in_d_ready, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115964.4]
  output        auto_in_d_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115964.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115964.4]
  output [1:0]  auto_in_d_bits_param, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115964.4]
  output [3:0]  auto_in_d_bits_size, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115964.4]
  output [2:0]  auto_in_d_bits_source, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115964.4]
  output [31:0] auto_in_d_bits_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115964.4]
  output        auto_in_d_bits_error // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115964.4]
);
  wire  a_clock; // @[Decoupled.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115972.4]
  wire  a_reset; // @[Decoupled.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115972.4]
  wire  a_io_enq_ready; // @[Decoupled.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115972.4]
  wire  a_io_enq_valid; // @[Decoupled.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115972.4]
  wire [2:0] a_io_enq_bits_opcode; // @[Decoupled.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115972.4]
  wire [3:0] a_io_enq_bits_size; // @[Decoupled.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115972.4]
  wire [2:0] a_io_enq_bits_source; // @[Decoupled.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115972.4]
  wire  a_io_deq_ready; // @[Decoupled.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115972.4]
  wire  a_io_deq_valid; // @[Decoupled.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115972.4]
  wire [2:0] a_io_deq_bits_opcode; // @[Decoupled.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115972.4]
  wire [3:0] a_io_deq_bits_size; // @[Decoupled.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115972.4]
  wire [2:0] a_io_deq_bits_source; // @[Decoupled.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115972.4]
  wire  c_clock; // @[Decoupled.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115984.4]
  wire  c_reset; // @[Decoupled.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115984.4]
  wire  c_io_deq_ready; // @[Decoupled.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115984.4]
  wire  c_io_deq_valid; // @[Decoupled.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115984.4]
  wire [2:0] c_io_deq_bits_param; // @[Decoupled.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115984.4]
  wire [3:0] c_io_deq_bits_size; // @[Decoupled.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115984.4]
  wire [2:0] c_io_deq_bits_source; // @[Decoupled.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115984.4]
  reg [9:0] _T_136; // @[Edges.scala 220:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116009.4]
  reg [31:0] _RAND_0;
  reg [9:0] _T_191; // @[Edges.scala 220:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116055.4]
  reg [31:0] _RAND_1;
  reg [9:0] _T_303; // @[Arbiter.scala 51:30:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116148.4]
  reg [31:0] _RAND_2;
  reg  _T_387_0; // @[Arbiter.scala 76:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116211.4]
  reg [31:0] _RAND_3;
  reg  _T_387_1; // @[Arbiter.scala 76:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116211.4]
  reg [31:0] _RAND_4;
  wire  _T_122; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116000.4]
  wire [26:0] _T_125; // @[package.scala 82:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116002.4]
  wire [11:0] _T_126; // @[package.scala 82:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116003.4]
  wire [11:0] _T_127; // @[package.scala 82:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116004.4]
  wire [9:0] _T_128; // @[Edges.scala 211:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116005.4]
  wire  _T_129; // @[Edges.scala 92:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116006.4]
  wire  _T_131; // @[Edges.scala 92:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116007.4]
  wire [9:0] _T_133; // @[Edges.scala 212:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116008.4]
  wire [10:0] _T_138; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116010.4]
  wire [10:0] _T_139; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116011.4]
  wire [9:0] _T_140; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116012.4]
  wire  _T_142; // @[Edges.scala 222:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116013.4]
  wire  _T_144; // @[Edges.scala 223:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116014.4]
  wire  _T_146; // @[Edges.scala 223:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116015.4]
  wire  a_last; // @[Edges.scala 223:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116016.4]
  wire [9:0] _T_150; // @[Edges.scala 227:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116021.6]
  wire [9:0] _GEN_2; // @[Edges.scala 226:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116020.4]
  wire  _T_305; // @[Arbiter.scala 52:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116149.4]
  wire  da_valid; // @[Error.scala 65:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116097.4]
  wire  dc_valid; // @[Error.scala 77:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116119.4]
  wire [1:0] _T_307; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116151.4]
  wire [2:0] _GEN_14; // @[package.scala 91:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116152.4]
  wire [2:0] _T_308; // @[package.scala 91:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116152.4]
  wire [1:0] _T_309; // @[package.scala 91:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116153.4]
  wire [1:0] _T_310; // @[package.scala 91:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116154.4]
  wire [2:0] _GEN_15; // @[Arbiter.scala 15:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116156.4]
  wire [2:0] _T_312; // @[Arbiter.scala 15:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116156.4]
  wire [1:0] _T_313; // @[Arbiter.scala 15:83:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116157.4]
  wire [1:0] _T_314; // @[Arbiter.scala 15:61:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116158.4]
  wire  _T_316; // @[Arbiter.scala 58:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116160.4]
  wire  _T_406_1; // @[Arbiter.scala 81:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116214.4]
  wire  da_ready; // @[Arbiter.scala 83:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116217.4]
  wire  _T_179; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116047.4]
  wire [3:0] da_bits_size; // @[Error.scala 56:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115996.4]
  wire [26:0] _T_182; // @[package.scala 82:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116049.4]
  wire [11:0] _T_183; // @[package.scala 82:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116050.4]
  wire [11:0] _T_184; // @[package.scala 82:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116051.4]
  wire [9:0] _T_185; // @[Edges.scala 211:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116052.4]
  wire [2:0] _GEN_7; // @[Error.scala 68:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116108.4]
  wire [2:0] _GEN_8; // @[Error.scala 68:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116108.4]
  wire [2:0] _GEN_9; // @[Error.scala 68:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116108.4]
  wire [2:0] _GEN_10; // @[Error.scala 68:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116108.4]
  wire [2:0] da_bits_opcode; // @[Error.scala 68:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116108.4]
  wire  _T_186; // @[Edges.scala 106:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116053.4]
  wire [9:0] _T_188; // @[Edges.scala 212:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116054.4]
  wire [10:0] _T_193; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116056.4]
  wire [10:0] _T_194; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116057.4]
  wire [9:0] _T_195; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116058.4]
  wire  _T_197; // @[Edges.scala 222:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116059.4]
  wire  _T_199; // @[Edges.scala 223:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116060.4]
  wire  _T_201; // @[Edges.scala 223:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116061.4]
  wire  da_last; // @[Edges.scala 223:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116062.4]
  wire [9:0] _T_205; // @[Edges.scala 227:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116067.6]
  wire [9:0] _GEN_4; // @[Edges.scala 226:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116066.4]
  wire  _T_315; // @[Arbiter.scala 58:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116159.4]
  wire  _T_406_0; // @[Arbiter.scala 81:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116214.4]
  wire  dc_ready; // @[Arbiter.scala 83:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116215.4]
  wire [3:0] dc_bits_size; // @[Error.scala 57:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115998.4]
  wire  _T_233; // @[Error.scala 64:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116093.4]
  wire  _T_235; // @[Error.scala 64:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116094.4]
  wire  _T_236; // @[Error.scala 64:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116095.4]
  wire [1:0] _T_279; // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116127.4]
  wire [1:0] _GEN_12; // @[Error.scala 80:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116128.4]
  wire [1:0] dc_bits_param; // @[Error.scala 80:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116128.4]
  wire  _T_306; // @[Arbiter.scala 53:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116150.4]
  wire  _T_324; // @[Arbiter.scala 60:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116165.4]
  wire  _T_325; // @[Arbiter.scala 60:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116166.4]
  wire  _T_335; // @[Arbiter.scala 65:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116172.4]
  wire  _T_339; // @[Arbiter.scala 66:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116174.4]
  wire  _T_344; // @[Arbiter.scala 66:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116177.4]
  wire  _T_345; // @[Arbiter.scala 66:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116178.4]
  wire  _T_348; // @[Arbiter.scala 66:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116181.4]
  wire  _T_350; // @[Arbiter.scala 66:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116182.4]
  wire  _T_351; // @[Arbiter.scala 68:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116187.4]
  wire  _T_353; // @[Arbiter.scala 68:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116188.4]
  wire  _T_355; // @[Arbiter.scala 68:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116190.4]
  wire  _T_357; // @[Arbiter.scala 68:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116192.4]
  wire  _T_359; // @[Arbiter.scala 68:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116193.4]
  wire [9:0] _T_363; // @[Arbiter.scala 71:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116199.4]
  wire  _T_419; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116220.4]
  wire  _T_421; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116221.4]
  wire  _T_422; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116222.4]
  wire  in_d_valid; // @[Arbiter.scala 89:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116225.4]
  wire  _T_365; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116201.4]
  wire [9:0] _GEN_16; // @[Arbiter.scala 73:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116202.4]
  wire [10:0] _T_366; // @[Arbiter.scala 73:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116202.4]
  wire [10:0] _T_367; // @[Arbiter.scala 73:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116203.4]
  wire [9:0] _T_368; // @[Arbiter.scala 73:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116204.4]
  wire [9:0] _T_369; // @[Arbiter.scala 73:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116205.4]
  wire  _T_398_0; // @[Arbiter.scala 77:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116212.4]
  wire  _T_398_1; // @[Arbiter.scala 77:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116212.4]
  wire [2:0] dc_bits_source; // @[Error.scala 57:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115998.4]
  wire [6:0] _T_429; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116229.4]
  wire [4:0] _T_430; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116230.4]
  wire [11:0] _T_431; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116231.4]
  wire [45:0] _T_432; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116232.4]
  wire [45:0] _T_434; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116233.4]
  wire [2:0] da_bits_source; // @[Error.scala 56:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115996.4]
  wire [6:0] _T_437; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116236.4]
  wire [4:0] _T_438; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116237.4]
  wire [11:0] _T_439; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116238.4]
  wire [45:0] _T_440; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116239.4]
  wire [45:0] _T_442; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116240.4]
  wire [45:0] _T_443; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116241.4]
  wire  in_d_bits_error; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116245.4]
  wire [31:0] in_d_bits_data; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116247.4]
  wire [2:0] in_d_bits_source; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116251.4]
  wire [3:0] in_d_bits_size; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116253.4]
  wire [1:0] in_d_bits_param; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116255.4]
  wire [2:0] in_d_bits_opcode; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116257.4]
  wire  in_a_ready; // @[Nodes.scala 335:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115969.4]
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_QUEUE_18 a ( // @[Decoupled.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115972.4]
    .clock(a_clock),
    .reset(a_reset),
    .io_enq_ready(a_io_enq_ready),
    .io_enq_valid(a_io_enq_valid),
    .io_enq_bits_opcode(a_io_enq_bits_opcode),
    .io_enq_bits_size(a_io_enq_bits_size),
    .io_enq_bits_source(a_io_enq_bits_source),
    .io_deq_ready(a_io_deq_ready),
    .io_deq_valid(a_io_deq_valid),
    .io_deq_bits_opcode(a_io_deq_bits_opcode),
    .io_deq_bits_size(a_io_deq_bits_size),
    .io_deq_bits_source(a_io_deq_bits_source)
  );
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_QUEUE_19 c ( // @[Decoupled.scala 282:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115984.4]
    .clock(c_clock),
    .reset(c_reset),
    .io_deq_ready(c_io_deq_ready),
    .io_deq_valid(c_io_deq_valid),
    .io_deq_bits_param(c_io_deq_bits_param),
    .io_deq_bits_size(c_io_deq_bits_size),
    .io_deq_bits_source(c_io_deq_bits_source)
  );
  assign _T_122 = a_io_deq_ready & a_io_deq_valid; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116000.4]
  assign _T_125 = 27'hfff << a_io_deq_bits_size; // @[package.scala 82:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116002.4]
  assign _T_126 = _T_125[11:0]; // @[package.scala 82:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116003.4]
  assign _T_127 = ~ _T_126; // @[package.scala 82:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116004.4]
  assign _T_128 = _T_127[11:2]; // @[Edges.scala 211:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116005.4]
  assign _T_129 = a_io_deq_bits_opcode[2]; // @[Edges.scala 92:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116006.4]
  assign _T_131 = _T_129 == 1'h0; // @[Edges.scala 92:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116007.4]
  assign _T_133 = _T_131 ? _T_128 : 10'h0; // @[Edges.scala 212:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116008.4]
  assign _T_138 = _T_136 - 10'h1; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116010.4]
  assign _T_139 = $unsigned(_T_138); // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116011.4]
  assign _T_140 = _T_139[9:0]; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116012.4]
  assign _T_142 = _T_136 == 10'h0; // @[Edges.scala 222:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116013.4]
  assign _T_144 = _T_136 == 10'h1; // @[Edges.scala 223:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116014.4]
  assign _T_146 = _T_133 == 10'h0; // @[Edges.scala 223:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116015.4]
  assign a_last = _T_144 | _T_146; // @[Edges.scala 223:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116016.4]
  assign _T_150 = _T_142 ? _T_133 : _T_140; // @[Edges.scala 227:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116021.6]
  assign _GEN_2 = _T_122 ? _T_150 : _T_136; // @[Edges.scala 226:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116020.4]
  assign _T_305 = _T_303 == 10'h0; // @[Arbiter.scala 52:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116149.4]
  assign da_valid = a_io_deq_valid & a_last; // @[Error.scala 65:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116097.4]
  assign dc_valid = c_io_deq_valid; // @[Error.scala 77:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116119.4]
  assign _T_307 = {da_valid,dc_valid}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116151.4]
  assign _GEN_14 = {{1'd0}, _T_307}; // @[package.scala 91:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116152.4]
  assign _T_308 = _GEN_14 << 1; // @[package.scala 91:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116152.4]
  assign _T_309 = _T_308[1:0]; // @[package.scala 91:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116153.4]
  assign _T_310 = _T_307 | _T_309; // @[package.scala 91:43:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116154.4]
  assign _GEN_15 = {{1'd0}, _T_310}; // @[Arbiter.scala 15:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116156.4]
  assign _T_312 = _GEN_15 << 1; // @[Arbiter.scala 15:78:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116156.4]
  assign _T_313 = _T_312[1:0]; // @[Arbiter.scala 15:83:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116157.4]
  assign _T_314 = ~ _T_313; // @[Arbiter.scala 15:61:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116158.4]
  assign _T_316 = _T_314[1]; // @[Arbiter.scala 58:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116160.4]
  assign _T_406_1 = _T_305 ? _T_316 : _T_387_1; // @[Arbiter.scala 81:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116214.4]
  assign da_ready = auto_in_d_ready & _T_406_1; // @[Arbiter.scala 83:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116217.4]
  assign _T_179 = da_ready & da_valid; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116047.4]
  assign da_bits_size = a_io_deq_bits_size; // @[Error.scala 56:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115996.4]
  assign _T_182 = 27'hfff << da_bits_size; // @[package.scala 82:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116049.4]
  assign _T_183 = _T_182[11:0]; // @[package.scala 82:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116050.4]
  assign _T_184 = ~ _T_183; // @[package.scala 82:46:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116051.4]
  assign _T_185 = _T_184[11:2]; // @[Edges.scala 211:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116052.4]
  assign _GEN_7 = 3'h2 == a_io_deq_bits_opcode ? 3'h1 : 3'h0; // @[Error.scala 68:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116108.4]
  assign _GEN_8 = 3'h3 == a_io_deq_bits_opcode ? 3'h1 : _GEN_7; // @[Error.scala 68:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116108.4]
  assign _GEN_9 = 3'h4 == a_io_deq_bits_opcode ? 3'h1 : _GEN_8; // @[Error.scala 68:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116108.4]
  assign _GEN_10 = 3'h5 == a_io_deq_bits_opcode ? 3'h2 : _GEN_9; // @[Error.scala 68:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116108.4]
  assign da_bits_opcode = 3'h6 == a_io_deq_bits_opcode ? 3'h4 : _GEN_10; // @[Error.scala 68:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116108.4]
  assign _T_186 = da_bits_opcode[0]; // @[Edges.scala 106:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116053.4]
  assign _T_188 = _T_186 ? _T_185 : 10'h0; // @[Edges.scala 212:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116054.4]
  assign _T_193 = _T_191 - 10'h1; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116056.4]
  assign _T_194 = $unsigned(_T_193); // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116057.4]
  assign _T_195 = _T_194[9:0]; // @[Edges.scala 221:28:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116058.4]
  assign _T_197 = _T_191 == 10'h0; // @[Edges.scala 222:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116059.4]
  assign _T_199 = _T_191 == 10'h1; // @[Edges.scala 223:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116060.4]
  assign _T_201 = _T_188 == 10'h0; // @[Edges.scala 223:47:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116061.4]
  assign da_last = _T_199 | _T_201; // @[Edges.scala 223:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116062.4]
  assign _T_205 = _T_197 ? _T_188 : _T_195; // @[Edges.scala 227:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116067.6]
  assign _GEN_4 = _T_179 ? _T_205 : _T_191; // @[Edges.scala 226:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116066.4]
  assign _T_315 = _T_314[0]; // @[Arbiter.scala 58:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116159.4]
  assign _T_406_0 = _T_305 ? _T_315 : _T_387_0; // @[Arbiter.scala 81:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116214.4]
  assign dc_ready = auto_in_d_ready & _T_406_0; // @[Arbiter.scala 83:33:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116215.4]
  assign dc_bits_size = c_io_deq_bits_size; // @[Error.scala 57:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115998.4]
  assign _T_233 = da_ready & da_last; // @[Error.scala 64:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116093.4]
  assign _T_235 = a_last == 1'h0; // @[Error.scala 64:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116094.4]
  assign _T_236 = _T_233 | _T_235; // @[Error.scala 64:38:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116095.4]
  assign _T_279 = c_io_deq_bits_param[1:0]; // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116127.4]
  assign _GEN_12 = 2'h1 == _T_279 ? 2'h2 : 2'h1; // @[Error.scala 80:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116128.4]
  assign dc_bits_param = 2'h2 == _T_279 ? 2'h2 : _GEN_12; // @[Error.scala 80:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116128.4]
  assign _T_306 = _T_305 & auto_in_d_ready; // @[Arbiter.scala 53:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116150.4]
  assign _T_324 = _T_315 & dc_valid; // @[Arbiter.scala 60:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116165.4]
  assign _T_325 = _T_316 & da_valid; // @[Arbiter.scala 60:65:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116166.4]
  assign _T_335 = _T_324 | _T_325; // @[Arbiter.scala 65:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116172.4]
  assign _T_339 = _T_324 == 1'h0; // @[Arbiter.scala 66:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116174.4]
  assign _T_344 = _T_325 == 1'h0; // @[Arbiter.scala 66:62:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116177.4]
  assign _T_345 = _T_339 | _T_344; // @[Arbiter.scala 66:59:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116178.4]
  assign _T_348 = _T_345 | reset; // @[Arbiter.scala 66:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116181.4]
  assign _T_350 = _T_348 == 1'h0; // @[Arbiter.scala 66:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116182.4]
  assign _T_351 = dc_valid | da_valid; // @[Arbiter.scala 68:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116187.4]
  assign _T_353 = _T_351 == 1'h0; // @[Arbiter.scala 68:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116188.4]
  assign _T_355 = _T_353 | _T_335; // @[Arbiter.scala 68:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116190.4]
  assign _T_357 = _T_355 | reset; // @[Arbiter.scala 68:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116192.4]
  assign _T_359 = _T_357 == 1'h0; // @[Arbiter.scala 68:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116193.4]
  assign _T_363 = _T_325 ? _T_188 : 10'h0; // @[Arbiter.scala 71:69:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116199.4]
  assign _T_419 = _T_387_0 ? dc_valid : 1'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116220.4]
  assign _T_421 = _T_387_1 ? da_valid : 1'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116221.4]
  assign _T_422 = _T_419 | _T_421; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116222.4]
  assign in_d_valid = _T_305 ? _T_351 : _T_422; // @[Arbiter.scala 89:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116225.4]
  assign _T_365 = auto_in_d_ready & in_d_valid; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116201.4]
  assign _GEN_16 = {{9'd0}, _T_365}; // @[Arbiter.scala 73:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116202.4]
  assign _T_366 = _T_303 - _GEN_16; // @[Arbiter.scala 73:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116202.4]
  assign _T_367 = $unsigned(_T_366); // @[Arbiter.scala 73:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116203.4]
  assign _T_368 = _T_367[9:0]; // @[Arbiter.scala 73:52:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116204.4]
  assign _T_369 = _T_306 ? _T_363 : _T_368; // @[Arbiter.scala 73:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116205.4]
  assign _T_398_0 = _T_305 ? _T_324 : _T_387_0; // @[Arbiter.scala 77:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116212.4]
  assign _T_398_1 = _T_305 ? _T_325 : _T_387_1; // @[Arbiter.scala 77:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116212.4]
  assign dc_bits_source = c_io_deq_bits_source; // @[Error.scala 57:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115998.4]
  assign _T_429 = {dc_bits_size,dc_bits_source}; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116229.4]
  assign _T_430 = {3'h6,dc_bits_param}; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116230.4]
  assign _T_431 = {_T_430,_T_429}; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116231.4]
  assign _T_432 = {_T_431,34'h1}; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116232.4]
  assign _T_434 = _T_398_0 ? _T_432 : 46'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116233.4]
  assign da_bits_source = a_io_deq_bits_source; // @[Error.scala 56:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115996.4]
  assign _T_437 = {da_bits_size,da_bits_source}; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116236.4]
  assign _T_438 = {da_bits_opcode,2'h0}; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116237.4]
  assign _T_439 = {_T_438,_T_437}; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116238.4]
  assign _T_440 = {_T_439,34'h1}; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116239.4]
  assign _T_442 = _T_398_1 ? _T_440 : 46'h0; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116240.4]
  assign _T_443 = _T_434 | _T_442; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116241.4]
  assign in_d_bits_error = _T_443[0]; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116245.4]
  assign in_d_bits_data = _T_443[32:1]; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116247.4]
  assign in_d_bits_source = _T_443[36:34]; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116251.4]
  assign in_d_bits_size = _T_443[40:37]; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116253.4]
  assign in_d_bits_param = _T_443[42:41]; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116255.4]
  assign in_d_bits_opcode = _T_443[45:43]; // @[Mux.scala 19:72:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116257.4]
  assign in_a_ready = a_io_enq_ready; // @[Nodes.scala 335:76:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@115969.4]
  assign auto_in_a_ready = in_a_ready;
  assign auto_in_d_valid = in_d_valid;
  assign auto_in_d_bits_opcode = in_d_bits_opcode;
  assign auto_in_d_bits_param = in_d_bits_param;
  assign auto_in_d_bits_size = in_d_bits_size;
  assign auto_in_d_bits_source = in_d_bits_source;
  assign auto_in_d_bits_data = in_d_bits_data;
  assign auto_in_d_bits_error = in_d_bits_error;
  assign a_clock = clock;
  assign a_reset = reset;
  assign a_io_enq_valid = auto_in_a_valid;
  assign a_io_enq_bits_opcode = auto_in_a_bits_opcode;
  assign a_io_enq_bits_size = auto_in_a_bits_size;
  assign a_io_enq_bits_source = auto_in_a_bits_source;
  assign a_io_deq_ready = _T_236;
  assign c_clock = clock;
  assign c_reset = reset;
  assign c_io_deq_ready = dc_ready;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_136 = _RAND_0[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_191 = _RAND_1[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  _T_303 = _RAND_2[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  _T_387_0 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  _T_387_1 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_136 <= 10'h0;
    end else begin
      if (_T_122) begin
        if (_T_142) begin
          if (_T_131) begin
            _T_136 <= _T_128;
          end else begin
            _T_136 <= 10'h0;
          end
        end else begin
          _T_136 <= _T_140;
        end
      end
    end
    if (reset) begin
      _T_191 <= 10'h0;
    end else begin
      if (_T_179) begin
        if (_T_197) begin
          if (_T_186) begin
            _T_191 <= _T_185;
          end else begin
            _T_191 <= 10'h0;
          end
        end else begin
          _T_191 <= _T_195;
        end
      end
    end
    if (reset) begin
      _T_303 <= 10'h0;
    end else begin
      if (_T_306) begin
        if (_T_325) begin
          if (_T_186) begin
            _T_303 <= _T_185;
          end else begin
            _T_303 <= 10'h0;
          end
        end else begin
          _T_303 <= 10'h0;
        end
      end else begin
        _T_303 <= _T_368;
      end
    end
    if (reset) begin
      _T_387_0 <= 1'h0;
    end else begin
      if (_T_305) begin
        _T_387_0 <= _T_324;
      end
    end
    if (reset) begin
      _T_387_1 <= 1'h0;
    end else begin
      if (_T_305) begin
        _T_387_1 <= _T_325;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_350) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:66 assert((prefixOR zip winner) map { case (p,w) => !p || !w } reduce {_ && _})\n"); // @[Arbiter.scala 66:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116184.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_350) begin
          $fatal; // @[Arbiter.scala 66:13:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116185.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_359) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Arbiter.scala:68 assert (!valids.reduce(_||_) || winner.reduce(_||_))\n"); // @[Arbiter.scala 68:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116195.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_359) begin
          $fatal; // @[Arbiter.scala 68:14:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@116196.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule