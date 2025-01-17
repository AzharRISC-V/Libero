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
module MIV_RV32IMAF_L1_AHB_C0_MIV_RV32IMAF_L1_AHB_C0_0_MIV_RV32IMAF_L1_AHB_QUEUE_10( // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5840.2]
  input         clock, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5841.4]
  input         reset, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5842.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5843.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5843.4]
  input         io_enq_bits_read, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5843.4]
  input  [23:0] io_enq_bits_index, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5843.4]
  input  [31:0] io_enq_bits_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5843.4]
  input  [3:0]  io_enq_bits_mask, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5843.4]
  input  [9:0]  io_enq_bits_extra, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5843.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5843.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5843.4]
  output        io_deq_bits_read, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5843.4]
  output [23:0] io_deq_bits_index, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5843.4]
  output [31:0] io_deq_bits_data, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5843.4]
  output [3:0]  io_deq_bits_mask, // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5843.4]
  output [9:0]  io_deq_bits_extra // @[:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5843.4]
);
  reg  ram_read [0:0]; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  reg [31:0] _RAND_0;
  wire  ram_read__T_42_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire  ram_read__T_42_addr; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire  ram_read__T_33_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire  ram_read__T_33_addr; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire  ram_read__T_33_mask; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire  ram_read__T_33_en; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  reg [23:0] ram_index [0:0] /* synthesis syn_ramstyle = "registers" */; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  reg [31:0] _RAND_1;
  wire [23:0] ram_index__T_42_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire  ram_index__T_42_addr; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire [23:0] ram_index__T_33_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire  ram_index__T_33_addr; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire  ram_index__T_33_mask; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire  ram_index__T_33_en; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  reg [31:0] ram_data [0:0] /* synthesis syn_ramstyle = "registers" */; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  reg [31:0] _RAND_2;
  wire [31:0] ram_data__T_42_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire  ram_data__T_42_addr; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire [31:0] ram_data__T_33_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire  ram_data__T_33_addr; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire  ram_data__T_33_mask; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire  ram_data__T_33_en; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  reg [3:0] ram_mask [0:0] /* synthesis syn_ramstyle = "registers" */; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  reg [31:0] _RAND_3;
  wire [3:0] ram_mask__T_42_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire  ram_mask__T_42_addr; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire [3:0] ram_mask__T_33_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire  ram_mask__T_33_addr; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire  ram_mask__T_33_mask; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire  ram_mask__T_33_en; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  reg [9:0] ram_extra [0:0] /* synthesis syn_ramstyle = "registers" */; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  reg [31:0] _RAND_4;
  wire [9:0] ram_extra__T_42_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire  ram_extra__T_42_addr; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire [9:0] ram_extra__T_33_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire  ram_extra__T_33_addr; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire  ram_extra__T_33_mask; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  wire  ram_extra__T_33_en; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  reg  maybe_full; // @[Decoupled.scala 214:35:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5846.4]
  reg [31:0] _RAND_5;
  wire  empty; // @[Decoupled.scala 217:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5848.4]
  wire  do_enq; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5851.4]
  wire  do_deq; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5854.4]
  wire  _T_36; // @[Decoupled.scala 229:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5867.4]
  wire  _GEN_8; // @[Decoupled.scala 229:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5868.4]
  wire  _T_38; // @[Decoupled.scala 233:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5871.4]
  assign ram_read__T_42_addr = 1'h0;
  assign ram_read__T_42_data = ram_read[ram_read__T_42_addr]; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  assign ram_read__T_33_data = io_enq_bits_read;
  assign ram_read__T_33_addr = 1'h0;
  assign ram_read__T_33_mask = do_enq;
  assign ram_read__T_33_en = do_enq;
  assign ram_index__T_42_addr = 1'h0;
  assign ram_index__T_42_data = ram_index[ram_index__T_42_addr]; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  assign ram_index__T_33_data = io_enq_bits_index;
  assign ram_index__T_33_addr = 1'h0;
  assign ram_index__T_33_mask = do_enq;
  assign ram_index__T_33_en = do_enq;
  assign ram_data__T_42_addr = 1'h0;
  assign ram_data__T_42_data = ram_data[ram_data__T_42_addr]; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  assign ram_data__T_33_data = io_enq_bits_data;
  assign ram_data__T_33_addr = 1'h0;
  assign ram_data__T_33_mask = do_enq;
  assign ram_data__T_33_en = do_enq;
  assign ram_mask__T_42_addr = 1'h0;
  assign ram_mask__T_42_data = ram_mask[ram_mask__T_42_addr]; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  assign ram_mask__T_33_data = io_enq_bits_mask;
  assign ram_mask__T_33_addr = 1'h0;
  assign ram_mask__T_33_mask = do_enq;
  assign ram_mask__T_33_en = do_enq;
  assign ram_extra__T_42_addr = 1'h0;
  assign ram_extra__T_42_data = ram_extra[ram_extra__T_42_addr]; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
  assign ram_extra__T_33_data = io_enq_bits_extra;
  assign ram_extra__T_33_addr = 1'h0;
  assign ram_extra__T_33_mask = do_enq;
  assign ram_extra__T_33_en = do_enq;
  assign empty = maybe_full == 1'h0; // @[Decoupled.scala 217:36:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5848.4]
  assign do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5851.4]
  assign do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 30:37:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5854.4]
  assign _T_36 = do_enq != do_deq; // @[Decoupled.scala 229:16:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5867.4]
  assign _GEN_8 = _T_36 ? do_enq : maybe_full; // @[Decoupled.scala 229:27:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5868.4]
  assign _T_38 = empty == 1'h0; // @[Decoupled.scala 233:19:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5871.4]
  assign io_enq_ready = empty;
  assign io_deq_valid = _T_38;
  assign io_deq_bits_read = ram_read__T_42_data;
  assign io_deq_bits_index = ram_index__T_42_data;
  assign io_deq_bits_data = ram_data__T_42_data;
  assign io_deq_bits_mask = ram_mask__T_42_data;
  assign io_deq_bits_extra = ram_extra__T_42_data;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  _RAND_0 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_read[initvar] = _RAND_0[0:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_index[initvar] = _RAND_1[23:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_data[initvar] = _RAND_2[31:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_mask[initvar] = _RAND_3[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_extra[initvar] = _RAND_4[9:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  maybe_full = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(ram_read__T_33_en & ram_read__T_33_mask) begin
      ram_read[ram_read__T_33_addr] <= ram_read__T_33_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
    end
    if(ram_index__T_33_en & ram_index__T_33_mask) begin
      ram_index[ram_index__T_33_addr] <= ram_index__T_33_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
    end
    if(ram_data__T_33_en & ram_data__T_33_mask) begin
      ram_data[ram_data__T_33_addr] <= ram_data__T_33_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
    end
    if(ram_mask__T_33_en & ram_mask__T_33_mask) begin
      ram_mask[ram_mask__T_33_addr] <= ram_mask__T_33_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
    end
    if(ram_extra__T_33_en & ram_extra__T_33_mask) begin
      ram_extra[ram_extra__T_33_addr] <= ram_extra__T_33_data; // @[Decoupled.scala 211:24:freechips.rocketchip.system.MivRV32ImafL1AhbConfig.fir@5845.4]
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else begin
      if (_T_36) begin
        maybe_full <= do_enq;
      end
    end
  end
endmodule
