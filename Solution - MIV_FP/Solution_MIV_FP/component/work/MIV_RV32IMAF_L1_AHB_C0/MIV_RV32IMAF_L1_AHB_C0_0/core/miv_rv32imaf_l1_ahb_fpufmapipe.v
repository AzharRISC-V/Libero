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
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_FPUFMAPIPE( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107914.2]
  input         clock, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107915.4]
  input         reset, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107916.4]
  input         io_in_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107917.4]
  input         io_in_bits_ren3, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107917.4]
  input         io_in_bits_swap23, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107917.4]
  input  [2:0]  io_in_bits_rm, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107917.4]
  input  [1:0]  io_in_bits_fmaCmd, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107917.4]
  input  [32:0] io_in_bits_in1, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107917.4]
  input  [32:0] io_in_bits_in2, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107917.4]
  input  [32:0] io_in_bits_in3, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107917.4]
  output [32:0] io_out_bits_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107917.4]
  output [4:0]  io_out_bits_exc // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107917.4]
);
  
  reg  valid; // @[FPU.scala 616:18:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107922.4]
  reg [31:0] _RAND_0;
  reg [2:0] in_rm; // @[FPU.scala 617:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107924.4]
  reg [31:0] _RAND_1;
  reg [1:0] in_fmaCmd; // @[FPU.scala 617:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107924.4]
  reg [31:0] _RAND_2;
  reg [32:0] in_in1; // @[FPU.scala 617:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107924.4]
  reg [63:0] _RAND_3;
  reg [32:0] in_in2; // @[FPU.scala 617:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107924.4]
  reg [63:0] _RAND_4;
  reg [32:0] in_in3; // @[FPU.scala 617:15:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107924.4]
  reg [63:0] _RAND_5;
  wire  fma_clock; // @[FPU.scala 628:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107940.4]
  wire  fma_reset; // @[FPU.scala 628:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107940.4]
  wire  fma_io_validin; // @[FPU.scala 628:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107940.4]
  wire [1:0] fma_io_op; // @[FPU.scala 628:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107940.4]
  wire [32:0] fma_io_a; // @[FPU.scala 628:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107940.4]
  wire [32:0] fma_io_b; // @[FPU.scala 628:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107940.4]
  wire [32:0] fma_io_c; // @[FPU.scala 628:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107940.4]
  wire [2:0] fma_io_roundingMode; // @[FPU.scala 628:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107940.4]
  wire [32:0] fma_io_out; // @[FPU.scala 628:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107940.4]
  wire [4:0] fma_io_exceptionFlags; // @[FPU.scala 628:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107940.4]
  wire [32:0] _T_15; // @[FPU.scala 620:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107927.6]
  wire [32:0] _T_18; // @[FPU.scala 620:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107929.6]
  wire [32:0] _GEN_0; // @[FPU.scala 624:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107931.6]
  wire  _T_19; // @[FPU.scala 625:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107934.6]
  wire  _T_21; // @[FPU.scala 625:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107935.6]
  wire [32:0] _GEN_1; // @[FPU.scala 625:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107936.6]
  wire [2:0] _GEN_18; // @[FPU.scala 618:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107925.4]
  wire [1:0] _GEN_19; // @[FPU.scala 618:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107925.4]
  wire [32:0] _GEN_21; // @[FPU.scala 618:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107925.4]
  wire [32:0] _GEN_22; // @[FPU.scala 618:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107925.4]
  wire [32:0] _GEN_23; // @[FPU.scala 618:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107925.4]
  wire [32:0] res_data; // @[FPU.scala 637:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107951.4]
  wire [4:0] res_exc; // @[FPU.scala 637:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107951.4]
  MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_MUL_ADD_REC_FNPIPE fma ( // @[FPU.scala 628:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107940.4]
    .clock(fma_clock),
    .reset(fma_reset),
    .io_validin(fma_io_validin),
    .io_op(fma_io_op),
    .io_a(fma_io_a),
    .io_b(fma_io_b),
    .io_c(fma_io_c),
    .io_roundingMode(fma_io_roundingMode),
    .io_out(fma_io_out),
    .io_exceptionFlags(fma_io_exceptionFlags)
  );
  assign _T_15 = io_in_bits_in1 ^ io_in_bits_in2; // @[FPU.scala 620:32:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107927.6]
  assign _T_18 = _T_15 & 33'h100000000; // @[FPU.scala 620:50:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107929.6]
  assign _GEN_0 = io_in_bits_swap23 ? 33'h80000000 : io_in_bits_in2; // @[FPU.scala 624:23:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107931.6]
  assign _T_19 = io_in_bits_ren3 | io_in_bits_swap23; // @[FPU.scala 625:21:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107934.6]
  assign _T_21 = _T_19 == 1'h0; // @[FPU.scala 625:11:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107935.6]
  assign _GEN_1 = _T_21 ? _T_18 : io_in_bits_in3; // @[FPU.scala 625:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107936.6]
  assign _GEN_18 = io_in_valid ? io_in_bits_rm : in_rm; // @[FPU.scala 618:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107925.4]
  assign _GEN_19 = io_in_valid ? io_in_bits_fmaCmd : in_fmaCmd; // @[FPU.scala 618:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107925.4]
  assign _GEN_21 = io_in_valid ? io_in_bits_in1 : in_in1; // @[FPU.scala 618:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107925.4]
  assign _GEN_22 = io_in_valid ? _GEN_0 : in_in2; // @[FPU.scala 618:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107925.4]
  assign _GEN_23 = io_in_valid ? _GEN_1 : in_in3; // @[FPU.scala 618:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107925.4]
  assign res_data = fma_io_out; // @[FPU.scala 637:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107951.4]
  assign res_exc = fma_io_exceptionFlags; // @[FPU.scala 637:17:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@107951.4]
  assign io_out_bits_data = res_data;
  assign io_out_bits_exc = res_exc;
  assign fma_clock = clock;
  assign fma_reset = reset;
  assign fma_io_validin = valid;
  assign fma_io_op = in_fmaCmd;
  assign fma_io_a = in_in1;
  assign fma_io_b = in_in2;
  assign fma_io_c = in_in3;
  assign fma_io_roundingMode = in_rm;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  valid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  in_rm = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  in_fmaCmd = _RAND_2[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{$random}};
  in_in1 = _RAND_3[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{$random}};
  in_in2 = _RAND_4[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{$random}};
  in_in3 = _RAND_5[32:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    valid <= io_in_valid;
    if (io_in_valid) begin
      in_rm <= io_in_bits_rm;
    end
    if (io_in_valid) begin
      in_fmaCmd <= io_in_bits_fmaCmd;
    end
    if (io_in_valid) begin
      in_in1 <= io_in_bits_in1;
    end
    if (io_in_valid) begin
      if (io_in_bits_swap23) begin
        in_in2 <= 33'h80000000;
      end else begin
        in_in2 <= io_in_bits_in2;
      end
    end
    if (io_in_valid) begin
      if (_T_21) begin
        in_in3 <= _T_18;
      end else begin
        in_in3 <= io_in_bits_in3;
      end
    end
  end
endmodule
