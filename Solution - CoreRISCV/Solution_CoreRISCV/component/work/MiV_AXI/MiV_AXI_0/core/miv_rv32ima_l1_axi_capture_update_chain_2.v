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
module MiV_AXI_MiV_AXI_0_MIV_RV32IMA_L1_AXI_CAPTURE_UPDATE_CHAIN_2( // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118348.2]
  input        clock, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118349.4]
  input        reset, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118350.4]
  input        io_chainIn_shift, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118351.4]
  input        io_chainIn_data, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118351.4]
  input        io_chainIn_capture, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118351.4]
  input        io_chainIn_update, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118351.4]
  output       io_chainOut_data, // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118351.4]
  output [4:0] io_update_bits // @[:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118351.4]
);
  reg  regs_0; // @[JtagShifter.scala 156:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118359.4]
  reg [31:0] _RAND_0;
  reg  regs_1; // @[JtagShifter.scala 156:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118360.4]
  reg [31:0] _RAND_1;
  reg  regs_2; // @[JtagShifter.scala 156:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118361.4]
  reg [31:0] _RAND_2;
  reg  regs_3; // @[JtagShifter.scala 156:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118362.4]
  reg [31:0] _RAND_3;
  reg  regs_4; // @[JtagShifter.scala 156:39:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118363.4]
  reg [31:0] _RAND_4;
  wire [1:0] _T_12; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118365.4]
  wire [1:0] _T_13; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118366.4]
  wire [2:0] _T_14; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118367.4]
  wire [4:0] updateBits; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118368.4]
  wire  _GEN_0; // @[JtagShifter.scala 176:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118394.8]
  wire  _GEN_1; // @[JtagShifter.scala 176:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118394.8]
  wire  _GEN_2; // @[JtagShifter.scala 176:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118394.8]
  wire  _GEN_3; // @[JtagShifter.scala 176:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118394.8]
  wire  _GEN_4; // @[JtagShifter.scala 176:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118394.8]
  wire  _GEN_8; // @[JtagShifter.scala 173:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118389.6]
  wire  _GEN_9; // @[JtagShifter.scala 173:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118389.6]
  wire  _GEN_10; // @[JtagShifter.scala 173:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118389.6]
  wire  _GEN_11; // @[JtagShifter.scala 173:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118389.6]
  wire  _GEN_12; // @[JtagShifter.scala 173:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118389.6]
  wire  _GEN_13; // @[JtagShifter.scala 168:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118374.4]
  wire  _GEN_14; // @[JtagShifter.scala 168:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118374.4]
  wire  _GEN_15; // @[JtagShifter.scala 168:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118374.4]
  wire  _GEN_16; // @[JtagShifter.scala 168:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118374.4]
  wire  _GEN_17; // @[JtagShifter.scala 168:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118374.4]
  wire  _T_31; // @[JtagShifter.scala 185:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118407.4]
  wire  _T_33; // @[JtagShifter.scala 185:10:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118408.4]
  wire  _T_34; // @[JtagShifter.scala 186:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118409.4]
  wire  _T_36; // @[JtagShifter.scala 186:10:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118410.4]
  wire  _T_37; // @[JtagShifter.scala 186:7:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118411.4]
  wire  _T_38; // @[JtagShifter.scala 187:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118412.4]
  wire  _T_40; // @[JtagShifter.scala 187:10:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118413.4]
  wire  _T_41; // @[JtagShifter.scala 187:7:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118414.4]
  wire  _T_43; // @[JtagShifter.scala 185:9:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118416.4]
  wire  _T_45; // @[JtagShifter.scala 185:9:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118417.4]
  assign _T_12 = {regs_1,regs_0}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118365.4]
  assign _T_13 = {regs_4,regs_3}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118366.4]
  assign _T_14 = {_T_13,regs_2}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118367.4]
  assign updateBits = {_T_14,_T_12}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118368.4]
  assign _GEN_0 = io_chainIn_shift ? io_chainIn_data : regs_4; // @[JtagShifter.scala 176:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118394.8]
  assign _GEN_1 = io_chainIn_shift ? regs_1 : regs_0; // @[JtagShifter.scala 176:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118394.8]
  assign _GEN_2 = io_chainIn_shift ? regs_2 : regs_1; // @[JtagShifter.scala 176:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118394.8]
  assign _GEN_3 = io_chainIn_shift ? regs_3 : regs_2; // @[JtagShifter.scala 176:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118394.8]
  assign _GEN_4 = io_chainIn_shift ? regs_4 : regs_3; // @[JtagShifter.scala 176:34:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118394.8]
  assign _GEN_8 = io_chainIn_update ? regs_4 : _GEN_0; // @[JtagShifter.scala 173:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118389.6]
  assign _GEN_9 = io_chainIn_update ? regs_0 : _GEN_1; // @[JtagShifter.scala 173:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118389.6]
  assign _GEN_10 = io_chainIn_update ? regs_1 : _GEN_2; // @[JtagShifter.scala 173:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118389.6]
  assign _GEN_11 = io_chainIn_update ? regs_2 : _GEN_3; // @[JtagShifter.scala 173:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118389.6]
  assign _GEN_12 = io_chainIn_update ? regs_3 : _GEN_4; // @[JtagShifter.scala 173:35:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118389.6]
  assign _GEN_13 = io_chainIn_capture ? 1'h1 : _GEN_9; // @[JtagShifter.scala 168:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118374.4]
  assign _GEN_14 = io_chainIn_capture ? 1'h0 : _GEN_10; // @[JtagShifter.scala 168:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118374.4]
  assign _GEN_15 = io_chainIn_capture ? 1'h0 : _GEN_11; // @[JtagShifter.scala 168:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118374.4]
  assign _GEN_16 = io_chainIn_capture ? 1'h0 : _GEN_12; // @[JtagShifter.scala 168:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118374.4]
  assign _GEN_17 = io_chainIn_capture ? 1'h0 : _GEN_8; // @[JtagShifter.scala 168:29:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118374.4]
  assign _T_31 = io_chainIn_capture & io_chainIn_update; // @[JtagShifter.scala 185:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118407.4]
  assign _T_33 = _T_31 == 1'h0; // @[JtagShifter.scala 185:10:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118408.4]
  assign _T_34 = io_chainIn_capture & io_chainIn_shift; // @[JtagShifter.scala 186:31:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118409.4]
  assign _T_36 = _T_34 == 1'h0; // @[JtagShifter.scala 186:10:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118410.4]
  assign _T_37 = _T_33 & _T_36; // @[JtagShifter.scala 186:7:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118411.4]
  assign _T_38 = io_chainIn_update & io_chainIn_shift; // @[JtagShifter.scala 187:30:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118412.4]
  assign _T_40 = _T_38 == 1'h0; // @[JtagShifter.scala 187:10:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118413.4]
  assign _T_41 = _T_37 & _T_40; // @[JtagShifter.scala 187:7:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118414.4]
  assign _T_43 = _T_41 | reset; // @[JtagShifter.scala 185:9:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118416.4]
  assign _T_45 = _T_43 == 1'h0; // @[JtagShifter.scala 185:9:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118417.4]
  assign io_chainOut_data = regs_0;
  assign io_update_bits = updateBits;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{32'b0}};
  regs_0 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{32'b0}};
  regs_1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{32'b0}};
  regs_2 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{32'b0}};
  regs_3 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{32'b0}};
  regs_4 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (io_chainIn_capture) begin
      regs_0 <= 1'h1;
    end else begin
      if (!(io_chainIn_update)) begin
        if (io_chainIn_shift) begin
          regs_0 <= regs_1;
        end
      end
    end
    if (io_chainIn_capture) begin
      regs_1 <= 1'h0;
    end else begin
      if (!(io_chainIn_update)) begin
        if (io_chainIn_shift) begin
          regs_1 <= regs_2;
        end
      end
    end
    if (io_chainIn_capture) begin
      regs_2 <= 1'h0;
    end else begin
      if (!(io_chainIn_update)) begin
        if (io_chainIn_shift) begin
          regs_2 <= regs_3;
        end
      end
    end
    if (io_chainIn_capture) begin
      regs_3 <= 1'h0;
    end else begin
      if (!(io_chainIn_update)) begin
        if (io_chainIn_shift) begin
          regs_3 <= regs_4;
        end
      end
    end
    if (io_chainIn_capture) begin
      regs_4 <= 1'h0;
    end else begin
      if (!(io_chainIn_update)) begin
        if (io_chainIn_shift) begin
          regs_4 <= io_chainIn_data;
        end
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_45) begin
          $fwrite(32'h80000002,"Assertion failed\n    at JtagShifter.scala:185 assert(!(io.chainIn.capture && io.chainIn.update)\n"); // @[JtagShifter.scala 185:9:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118419.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_45) begin
          $fatal; // @[JtagShifter.scala 185:9:freechips.rocketchip.system.MivRV32ImaL1AhbConfig.fir@118420.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
