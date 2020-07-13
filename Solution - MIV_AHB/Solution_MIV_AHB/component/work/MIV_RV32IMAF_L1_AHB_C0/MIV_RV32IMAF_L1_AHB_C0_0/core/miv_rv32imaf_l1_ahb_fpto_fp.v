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
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_FPTO_FP( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108944.2]
  input         clock, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108945.4]
  input         reset, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108946.4]
  input         io_in_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108947.4]
  input         io_in_bits_wflags, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108947.4]
  input  [2:0]  io_in_bits_rm, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108947.4]
  input  [32:0] io_in_bits_in1, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108947.4]
  input  [32:0] io_in_bits_in2, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108947.4]
  output [32:0] io_out_bits_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108947.4]
  output [4:0]  io_out_bits_exc, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108947.4]
  input         io_lt // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108947.4]
);
  reg  in_valid; // @[Valid.scala 47:22:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108952.4]
  reg [31:0] _RAND_0;
  reg  in_bits_wflags; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108954.4]
  reg [31:0] _RAND_1;
  reg [2:0] in_bits_rm; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108954.4]
  reg [31:0] _RAND_2;
  reg [32:0] in_bits_in1; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108954.4]
  reg [63:0] _RAND_3;
  reg [32:0] in_bits_in2; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108954.4]
  reg [63:0] _RAND_4;
  reg [32:0] _T_77_data; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109039.4]
  reg [63:0] _RAND_5;
  reg [4:0] _T_77_exc; // @[Reg.scala 11:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109039.4]
  reg [31:0] _RAND_6;
  wire [32:0] _GEN_1; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108955.4]
  wire [32:0] _GEN_2; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108955.4]
  wire [2:0] _GEN_5; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108955.4]
  wire  _GEN_6; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108955.4]
  wire  _T_22; // @[FPU.scala 494:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108983.4]
  wire [32:0] _T_23; // @[FPU.scala 494:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108984.4]
  wire  _T_24; // @[FPU.scala 494:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108985.4]
  wire [32:0] _T_25; // @[FPU.scala 494:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108986.4]
  wire [32:0] _T_26; // @[FPU.scala 494:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108987.4]
  wire [32:0] signNum; // @[FPU.scala 494:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108988.4]
  wire  _T_27; // @[FPU.scala 495:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108989.4]
  wire [31:0] _T_28; // @[FPU.scala 495:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108990.4]
  wire [32:0] fsgnj; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108991.4]
  wire [2:0] _T_31; // @[FPU.scala 185:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108997.6]
  wire [2:0] _T_32; // @[FPU.scala 185:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108998.6]
  wire  _T_34; // @[FPU.scala 185:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108999.6]
  wire [2:0] _T_35; // @[FPU.scala 185:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109000.6]
  wire [2:0] _T_36; // @[FPU.scala 185:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109001.6]
  wire  _T_38; // @[FPU.scala 185:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109002.6]
  wire  _T_43; // @[FPU.scala 186:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109006.6]
  wire  _T_45; // @[FPU.scala 186:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109007.6]
  wire  _T_46; // @[FPU.scala 186:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109008.6]
  wire  _T_51; // @[FPU.scala 186:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109012.6]
  wire  _T_53; // @[FPU.scala 186:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109013.6]
  wire  _T_54; // @[FPU.scala 186:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109014.6]
  wire  _T_55; // @[FPU.scala 504:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109015.6]
  wire  _T_56; // @[FPU.scala 505:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109016.6]
  wire  _T_58; // @[FPU.scala 506:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109018.6]
  wire  _T_60; // @[FPU.scala 506:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109019.6]
  wire  _T_61; // @[FPU.scala 506:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109020.6]
  wire  _T_62; // @[FPU.scala 506:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109021.6]
  wire [4:0] _GEN_26; // @[FPU.scala 507:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109022.6]
  wire [4:0] _T_63; // @[FPU.scala 507:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109022.6]
  wire [32:0] _T_65; // @[FPU.scala 508:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109024.6]
  wire [32:0] _T_66; // @[FPU.scala 508:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109025.6]
  wire [4:0] fsgnjMux_exc; // @[FPU.scala 501:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108996.4]
  wire [32:0] fsgnjMux_data; // @[FPU.scala 501:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108996.4]
  wire [4:0] _GEN_24; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109040.4]
  wire [32:0] _GEN_25; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109040.4]
  assign _GEN_1 = io_in_valid ? io_in_bits_in2 : in_bits_in2; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108955.4]
  assign _GEN_2 = io_in_valid ? io_in_bits_in1 : in_bits_in1; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108955.4]
  assign _GEN_5 = io_in_valid ? io_in_bits_rm : in_bits_rm; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108955.4]
  assign _GEN_6 = io_in_valid ? io_in_bits_wflags : in_bits_wflags; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108955.4]
  assign _T_22 = in_bits_rm[1]; // @[FPU.scala 494:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108983.4]
  assign _T_23 = in_bits_in1 ^ in_bits_in2; // @[FPU.scala 494:48:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108984.4]
  assign _T_24 = in_bits_rm[0]; // @[FPU.scala 494:77:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108985.4]
  assign _T_25 = ~ in_bits_in2; // @[FPU.scala 494:82:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108986.4]
  assign _T_26 = _T_24 ? _T_25 : in_bits_in2; // @[FPU.scala 494:66:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108987.4]
  assign signNum = _T_22 ? _T_23 : _T_26; // @[FPU.scala 494:20:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108988.4]
  assign _T_27 = signNum[32]; // @[FPU.scala 495:26:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108989.4]
  assign _T_28 = in_bits_in1[31:0]; // @[FPU.scala 495:45:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108990.4]
  assign fsgnj = {_T_27,_T_28}; // @[Cat.scala 30:58:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108991.4]
  assign _T_31 = in_bits_in1[31:29]; // @[FPU.scala 185:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108997.6]
  assign _T_32 = ~ _T_31; // @[FPU.scala 185:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108998.6]
  assign _T_34 = _T_32 == 3'h0; // @[FPU.scala 185:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108999.6]
  assign _T_35 = in_bits_in2[31:29]; // @[FPU.scala 185:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109000.6]
  assign _T_36 = ~ _T_35; // @[FPU.scala 185:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109001.6]
  assign _T_38 = _T_36 == 3'h0; // @[FPU.scala 185:56:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109002.6]
  assign _T_43 = in_bits_in1[22]; // @[FPU.scala 186:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109006.6]
  assign _T_45 = _T_43 == 1'h0; // @[FPU.scala 186:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109007.6]
  assign _T_46 = _T_34 & _T_45; // @[FPU.scala 186:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109008.6]
  assign _T_51 = in_bits_in2[22]; // @[FPU.scala 186:39:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109012.6]
  assign _T_53 = _T_51 == 1'h0; // @[FPU.scala 186:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109013.6]
  assign _T_54 = _T_38 & _T_53; // @[FPU.scala 186:34:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109014.6]
  assign _T_55 = _T_46 | _T_54; // @[FPU.scala 504:49:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109015.6]
  assign _T_56 = _T_34 & _T_38; // @[FPU.scala 505:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109016.6]
  assign _T_58 = _T_24 != io_lt; // @[FPU.scala 506:41:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109018.6]
  assign _T_60 = _T_34 == 1'h0; // @[FPU.scala 506:54:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109019.6]
  assign _T_61 = _T_58 & _T_60; // @[FPU.scala 506:51:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109020.6]
  assign _T_62 = _T_38 | _T_61; // @[FPU.scala 506:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109021.6]
  assign _GEN_26 = {{4'd0}, _T_55}; // @[FPU.scala 507:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109022.6]
  assign _T_63 = _GEN_26 << 4; // @[FPU.scala 507:31:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109022.6]
  assign _T_65 = _T_62 ? in_bits_in1 : in_bits_in2; // @[FPU.scala 508:53:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109024.6]
  assign _T_66 = _T_56 ? 33'he0400000 : _T_65; // @[FPU.scala 508:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109025.6]
  assign fsgnjMux_exc = in_bits_wflags ? _T_63 : 5'h0; // @[FPU.scala 501:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108996.4]
  assign fsgnjMux_data = in_bits_wflags ? _T_66 : fsgnj; // @[FPU.scala 501:25:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@108996.4]
  assign _GEN_24 = in_valid ? fsgnjMux_exc : _T_77_exc; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109040.4]
  assign _GEN_25 = in_valid ? fsgnjMux_data : _T_77_data; // @[Reg.scala 12:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@109040.4]
  assign io_out_bits_data = _T_77_data;
  assign io_out_bits_exc = _T_77_exc;
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
  _RAND_3 = {2{$random}};
  in_bits_in1 = _RAND_3[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{$random}};
  in_bits_in2 = _RAND_4[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{$random}};
  _T_77_data = _RAND_5[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  _T_77_exc = _RAND_6[4:0];
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
      in_bits_in1 <= io_in_bits_in1;
    end
    if (io_in_valid) begin
      in_bits_in2 <= io_in_bits_in2;
    end
    if (in_valid) begin
      if (in_bits_wflags) begin
        if (_T_56) begin
          _T_77_data <= 33'he0400000;
        end else begin
          if (_T_62) begin
            _T_77_data <= in_bits_in1;
          end else begin
            _T_77_data <= in_bits_in2;
          end
        end
      end else begin
        _T_77_data <= fsgnj;
      end
    end
    if (in_valid) begin
      if (in_bits_wflags) begin
        _T_77_exc <= _T_63;
      end else begin
        _T_77_exc <= 5'h0;
      end
    end
  end
endmodule
