// Copyright (c) 2017, Microsemi Corporation
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
// Copyright (c) 2017, Microsemi Corporation 
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
module MIV_RV32IMA_L1_AHB_C1_MIV_RV32IMA_L1_AHB_C1_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_W2_I0( // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111202.2]
  input        clock, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111203.4]
  input        reset, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111204.4]
  input  [1:0] io_d, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111205.4]
  output [1:0] io_q // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111205.4]
);
  wire  reg_0_rst; // @[AsyncResetReg.scala 53:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111210.4]
  wire  reg_0_clk; // @[AsyncResetReg.scala 53:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111210.4]
  wire  reg_0_en; // @[AsyncResetReg.scala 53:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111210.4]
  wire  reg_0_q; // @[AsyncResetReg.scala 53:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111210.4]
  wire  reg_0_d; // @[AsyncResetReg.scala 53:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111210.4]
  wire  reg_1_rst; // @[AsyncResetReg.scala 53:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111216.4]
  wire  reg_1_clk; // @[AsyncResetReg.scala 53:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111216.4]
  wire  reg_1_en; // @[AsyncResetReg.scala 53:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111216.4]
  wire  reg_1_q; // @[AsyncResetReg.scala 53:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111216.4]
  wire  reg_1_d; // @[AsyncResetReg.scala 53:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111216.4]
  wire  _T_5; // @[AsyncResetReg.scala 59:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111224.4]
  wire  _T_6; // @[AsyncResetReg.scala 59:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111229.4]
  wire [1:0] _T_7; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111232.4]
  MIV_RV32IMA_L1_AHB_C1_MIV_RV32IMA_L1_AHB_C1_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG reg_0 ( // @[AsyncResetReg.scala 53:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111210.4]
    .rst(reg_0_rst),
    .clk(reg_0_clk),
    .en(reg_0_en),
    .q(reg_0_q),
    .d(reg_0_d)
  );
  MIV_RV32IMA_L1_AHB_C1_MIV_RV32IMA_L1_AHB_C1_0_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG reg_1 ( // @[AsyncResetReg.scala 53:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111216.4]
    .rst(reg_1_rst),
    .clk(reg_1_clk),
    .en(reg_1_en),
    .q(reg_1_q),
    .d(reg_1_d)
  );
  assign _T_5 = io_d[0]; // @[AsyncResetReg.scala 59:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111224.4]
  assign _T_6 = io_d[1]; // @[AsyncResetReg.scala 59:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111229.4]
  assign _T_7 = {reg_1_q,reg_0_q}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@111232.4]
  assign io_q = _T_7;
  assign reg_0_rst = reset;
  assign reg_0_clk = clock;
  assign reg_0_en = 1'h1;
  assign reg_0_d = _T_5;
  assign reg_1_rst = reset;
  assign reg_1_clk = clock;
  assign reg_1_en = 1'h1;
  assign reg_1_d = _T_6;
endmodule
