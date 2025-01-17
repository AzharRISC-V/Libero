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
// Description:
//
// SVN Revision Information:
// SVN $Revision: 29484 $
// SVN $Date: 2017-03-31 09:57:25 +0100 (Fri, 31 Mar 2017) $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
`define RANDOMIZE
`timescale 1ns/10ps
module CORERISCV_AXI4_C0_CORERISCV_AXI4_C0_0_CORERISCV_AXI4_BASIC_BUS_3(
  input   clk,
  input   reset,
  output  io_in_0_ready,
  input   io_in_0_valid,
  input  [1:0] io_in_0_bits_header_src,
  input  [1:0] io_in_0_bits_header_dst,
  input  [2:0] io_in_0_bits_payload_addr_beat,
  input   io_in_0_bits_payload_client_xact_id,
  input  [1:0] io_in_0_bits_payload_manager_xact_id,
  input   io_in_0_bits_payload_is_builtin_type,
  input  [3:0] io_in_0_bits_payload_g_type,
  input  [63:0] io_in_0_bits_payload_data,
  output  io_in_1_ready,
  input   io_in_1_valid,
  input  [1:0] io_in_1_bits_header_src,
  input  [1:0] io_in_1_bits_header_dst,
  input  [2:0] io_in_1_bits_payload_addr_beat,
  input   io_in_1_bits_payload_client_xact_id,
  input  [1:0] io_in_1_bits_payload_manager_xact_id,
  input   io_in_1_bits_payload_is_builtin_type,
  input  [3:0] io_in_1_bits_payload_g_type,
  input  [63:0] io_in_1_bits_payload_data,
  output  io_in_2_ready,
  input   io_in_2_valid,
  input  [1:0] io_in_2_bits_header_src,
  input  [1:0] io_in_2_bits_header_dst,
  input  [2:0] io_in_2_bits_payload_addr_beat,
  input   io_in_2_bits_payload_client_xact_id,
  input  [1:0] io_in_2_bits_payload_manager_xact_id,
  input   io_in_2_bits_payload_is_builtin_type,
  input  [3:0] io_in_2_bits_payload_g_type,
  input  [63:0] io_in_2_bits_payload_data,
  output  io_in_3_ready,
  input   io_in_3_valid,
  input  [1:0] io_in_3_bits_header_src,
  input  [1:0] io_in_3_bits_header_dst,
  input  [2:0] io_in_3_bits_payload_addr_beat,
  input   io_in_3_bits_payload_client_xact_id,
  input  [1:0] io_in_3_bits_payload_manager_xact_id,
  input   io_in_3_bits_payload_is_builtin_type,
  input  [3:0] io_in_3_bits_payload_g_type,
  input  [63:0] io_in_3_bits_payload_data,
  input   io_out_0_ready,
  output  io_out_0_valid,
  output [1:0] io_out_0_bits_header_src,
  output [1:0] io_out_0_bits_header_dst,
  output [2:0] io_out_0_bits_payload_addr_beat,
  output  io_out_0_bits_payload_client_xact_id,
  output [1:0] io_out_0_bits_payload_manager_xact_id,
  output  io_out_0_bits_payload_is_builtin_type,
  output [3:0] io_out_0_bits_payload_g_type,
  output [63:0] io_out_0_bits_payload_data,
  input   io_out_1_ready,
  output  io_out_1_valid,
  output [1:0] io_out_1_bits_header_src,
  output [1:0] io_out_1_bits_header_dst,
  output [2:0] io_out_1_bits_payload_addr_beat,
  output  io_out_1_bits_payload_client_xact_id,
  output [1:0] io_out_1_bits_payload_manager_xact_id,
  output  io_out_1_bits_payload_is_builtin_type,
  output [3:0] io_out_1_bits_payload_g_type,
  output [63:0] io_out_1_bits_payload_data,
  input   io_out_2_ready,
  output  io_out_2_valid,
  output [1:0] io_out_2_bits_header_src,
  output [1:0] io_out_2_bits_header_dst,
  output [2:0] io_out_2_bits_payload_addr_beat,
  output  io_out_2_bits_payload_client_xact_id,
  output [1:0] io_out_2_bits_payload_manager_xact_id,
  output  io_out_2_bits_payload_is_builtin_type,
  output [3:0] io_out_2_bits_payload_g_type,
  output [63:0] io_out_2_bits_payload_data,
  input   io_out_3_ready,
  output  io_out_3_valid,
  output [1:0] io_out_3_bits_header_src,
  output [1:0] io_out_3_bits_header_dst,
  output [2:0] io_out_3_bits_payload_addr_beat,
  output  io_out_3_bits_payload_client_xact_id,
  output [1:0] io_out_3_bits_payload_manager_xact_id,
  output  io_out_3_bits_payload_is_builtin_type,
  output [3:0] io_out_3_bits_payload_g_type,
  output [63:0] io_out_3_bits_payload_data
);
  wire  arb_clk;
  wire  arb_reset;
  wire  arb_io_in_0_ready;
  wire  arb_io_in_0_valid;
  wire [1:0] arb_io_in_0_bits_header_src;
  wire [1:0] arb_io_in_0_bits_header_dst;
  wire [2:0] arb_io_in_0_bits_payload_addr_beat;
  wire  arb_io_in_0_bits_payload_client_xact_id;
  wire [1:0] arb_io_in_0_bits_payload_manager_xact_id;
  wire  arb_io_in_0_bits_payload_is_builtin_type;
  wire [3:0] arb_io_in_0_bits_payload_g_type;
  wire [63:0] arb_io_in_0_bits_payload_data;
  wire  arb_io_in_1_ready;
  wire  arb_io_in_1_valid;
  wire [1:0] arb_io_in_1_bits_header_src;
  wire [1:0] arb_io_in_1_bits_header_dst;
  wire [2:0] arb_io_in_1_bits_payload_addr_beat;
  wire  arb_io_in_1_bits_payload_client_xact_id;
  wire [1:0] arb_io_in_1_bits_payload_manager_xact_id;
  wire  arb_io_in_1_bits_payload_is_builtin_type;
  wire [3:0] arb_io_in_1_bits_payload_g_type;
  wire [63:0] arb_io_in_1_bits_payload_data;
  wire  arb_io_in_2_ready;
  wire  arb_io_in_2_valid;
  wire [1:0] arb_io_in_2_bits_header_src;
  wire [1:0] arb_io_in_2_bits_header_dst;
  wire [2:0] arb_io_in_2_bits_payload_addr_beat;
  wire  arb_io_in_2_bits_payload_client_xact_id;
  wire [1:0] arb_io_in_2_bits_payload_manager_xact_id;
  wire  arb_io_in_2_bits_payload_is_builtin_type;
  wire [3:0] arb_io_in_2_bits_payload_g_type;
  wire [63:0] arb_io_in_2_bits_payload_data;
  wire  arb_io_in_3_ready;
  wire  arb_io_in_3_valid;
  wire [1:0] arb_io_in_3_bits_header_src;
  wire [1:0] arb_io_in_3_bits_header_dst;
  wire [2:0] arb_io_in_3_bits_payload_addr_beat;
  wire  arb_io_in_3_bits_payload_client_xact_id;
  wire [1:0] arb_io_in_3_bits_payload_manager_xact_id;
  wire  arb_io_in_3_bits_payload_is_builtin_type;
  wire [3:0] arb_io_in_3_bits_payload_g_type;
  wire [63:0] arb_io_in_3_bits_payload_data;
  wire  arb_io_out_ready;
  wire  arb_io_out_valid;
  wire [1:0] arb_io_out_bits_header_src;
  wire [1:0] arb_io_out_bits_header_dst;
  wire [2:0] arb_io_out_bits_payload_addr_beat;
  wire  arb_io_out_bits_payload_client_xact_id;
  wire [1:0] arb_io_out_bits_payload_manager_xact_id;
  wire  arb_io_out_bits_payload_is_builtin_type;
  wire [3:0] arb_io_out_bits_payload_g_type;
  wire [63:0] arb_io_out_bits_payload_data;
  wire [1:0] arb_io_chosen;
  wire  GEN_0;
  wire  GEN_1;
  wire  GEN_2;
  wire  GEN_3;
  wire  T_1483;
  wire  T_1484;
  wire  T_1486;
  wire  T_1487;
  wire  T_1489;
  wire  T_1490;
  wire  T_1492;
  wire  T_1493;
  CORERISCV_AXI4_C0_CORERISCV_AXI4_C0_0_CORERISCV_AXI4_LOCKING_RR_ARBITER_3 arb (
    .clk(arb_clk),
    .reset(arb_reset),
    .io_in_0_ready(arb_io_in_0_ready),
    .io_in_0_valid(arb_io_in_0_valid),
    .io_in_0_bits_header_src(arb_io_in_0_bits_header_src),
    .io_in_0_bits_header_dst(arb_io_in_0_bits_header_dst),
    .io_in_0_bits_payload_addr_beat(arb_io_in_0_bits_payload_addr_beat),
    .io_in_0_bits_payload_client_xact_id(arb_io_in_0_bits_payload_client_xact_id),
    .io_in_0_bits_payload_manager_xact_id(arb_io_in_0_bits_payload_manager_xact_id),
    .io_in_0_bits_payload_is_builtin_type(arb_io_in_0_bits_payload_is_builtin_type),
    .io_in_0_bits_payload_g_type(arb_io_in_0_bits_payload_g_type),
    .io_in_0_bits_payload_data(arb_io_in_0_bits_payload_data),
    .io_in_1_ready(arb_io_in_1_ready),
    .io_in_1_valid(arb_io_in_1_valid),
    .io_in_1_bits_header_src(arb_io_in_1_bits_header_src),
    .io_in_1_bits_header_dst(arb_io_in_1_bits_header_dst),
    .io_in_1_bits_payload_addr_beat(arb_io_in_1_bits_payload_addr_beat),
    .io_in_1_bits_payload_client_xact_id(arb_io_in_1_bits_payload_client_xact_id),
    .io_in_1_bits_payload_manager_xact_id(arb_io_in_1_bits_payload_manager_xact_id),
    .io_in_1_bits_payload_is_builtin_type(arb_io_in_1_bits_payload_is_builtin_type),
    .io_in_1_bits_payload_g_type(arb_io_in_1_bits_payload_g_type),
    .io_in_1_bits_payload_data(arb_io_in_1_bits_payload_data),
    .io_in_2_ready(arb_io_in_2_ready),
    .io_in_2_valid(arb_io_in_2_valid),
    .io_in_2_bits_header_src(arb_io_in_2_bits_header_src),
    .io_in_2_bits_header_dst(arb_io_in_2_bits_header_dst),
    .io_in_2_bits_payload_addr_beat(arb_io_in_2_bits_payload_addr_beat),
    .io_in_2_bits_payload_client_xact_id(arb_io_in_2_bits_payload_client_xact_id),
    .io_in_2_bits_payload_manager_xact_id(arb_io_in_2_bits_payload_manager_xact_id),
    .io_in_2_bits_payload_is_builtin_type(arb_io_in_2_bits_payload_is_builtin_type),
    .io_in_2_bits_payload_g_type(arb_io_in_2_bits_payload_g_type),
    .io_in_2_bits_payload_data(arb_io_in_2_bits_payload_data),
    .io_in_3_ready(arb_io_in_3_ready),
    .io_in_3_valid(arb_io_in_3_valid),
    .io_in_3_bits_header_src(arb_io_in_3_bits_header_src),
    .io_in_3_bits_header_dst(arb_io_in_3_bits_header_dst),
    .io_in_3_bits_payload_addr_beat(arb_io_in_3_bits_payload_addr_beat),
    .io_in_3_bits_payload_client_xact_id(arb_io_in_3_bits_payload_client_xact_id),
    .io_in_3_bits_payload_manager_xact_id(arb_io_in_3_bits_payload_manager_xact_id),
    .io_in_3_bits_payload_is_builtin_type(arb_io_in_3_bits_payload_is_builtin_type),
    .io_in_3_bits_payload_g_type(arb_io_in_3_bits_payload_g_type),
    .io_in_3_bits_payload_data(arb_io_in_3_bits_payload_data),
    .io_out_ready(arb_io_out_ready),
    .io_out_valid(arb_io_out_valid),
    .io_out_bits_header_src(arb_io_out_bits_header_src),
    .io_out_bits_header_dst(arb_io_out_bits_header_dst),
    .io_out_bits_payload_addr_beat(arb_io_out_bits_payload_addr_beat),
    .io_out_bits_payload_client_xact_id(arb_io_out_bits_payload_client_xact_id),
    .io_out_bits_payload_manager_xact_id(arb_io_out_bits_payload_manager_xact_id),
    .io_out_bits_payload_is_builtin_type(arb_io_out_bits_payload_is_builtin_type),
    .io_out_bits_payload_g_type(arb_io_out_bits_payload_g_type),
    .io_out_bits_payload_data(arb_io_out_bits_payload_data),
    .io_chosen(arb_io_chosen)
  );
  assign io_in_0_ready = arb_io_in_0_ready;
  assign io_in_1_ready = arb_io_in_1_ready;
  assign io_in_2_ready = arb_io_in_2_ready;
  assign io_in_3_ready = arb_io_in_3_ready;
  assign io_out_0_valid = T_1484;
  assign io_out_0_bits_header_src = arb_io_out_bits_header_src;
  assign io_out_0_bits_header_dst = arb_io_out_bits_header_dst;
  assign io_out_0_bits_payload_addr_beat = arb_io_out_bits_payload_addr_beat;
  assign io_out_0_bits_payload_client_xact_id = arb_io_out_bits_payload_client_xact_id;
  assign io_out_0_bits_payload_manager_xact_id = arb_io_out_bits_payload_manager_xact_id;
  assign io_out_0_bits_payload_is_builtin_type = arb_io_out_bits_payload_is_builtin_type;
  assign io_out_0_bits_payload_g_type = arb_io_out_bits_payload_g_type;
  assign io_out_0_bits_payload_data = arb_io_out_bits_payload_data;
  assign io_out_1_valid = T_1487;
  assign io_out_1_bits_header_src = arb_io_out_bits_header_src;
  assign io_out_1_bits_header_dst = arb_io_out_bits_header_dst;
  assign io_out_1_bits_payload_addr_beat = arb_io_out_bits_payload_addr_beat;
  assign io_out_1_bits_payload_client_xact_id = arb_io_out_bits_payload_client_xact_id;
  assign io_out_1_bits_payload_manager_xact_id = arb_io_out_bits_payload_manager_xact_id;
  assign io_out_1_bits_payload_is_builtin_type = arb_io_out_bits_payload_is_builtin_type;
  assign io_out_1_bits_payload_g_type = arb_io_out_bits_payload_g_type;
  assign io_out_1_bits_payload_data = arb_io_out_bits_payload_data;
  assign io_out_2_valid = T_1490;
  assign io_out_2_bits_header_src = arb_io_out_bits_header_src;
  assign io_out_2_bits_header_dst = arb_io_out_bits_header_dst;
  assign io_out_2_bits_payload_addr_beat = arb_io_out_bits_payload_addr_beat;
  assign io_out_2_bits_payload_client_xact_id = arb_io_out_bits_payload_client_xact_id;
  assign io_out_2_bits_payload_manager_xact_id = arb_io_out_bits_payload_manager_xact_id;
  assign io_out_2_bits_payload_is_builtin_type = arb_io_out_bits_payload_is_builtin_type;
  assign io_out_2_bits_payload_g_type = arb_io_out_bits_payload_g_type;
  assign io_out_2_bits_payload_data = arb_io_out_bits_payload_data;
  assign io_out_3_valid = T_1493;
  assign io_out_3_bits_header_src = arb_io_out_bits_header_src;
  assign io_out_3_bits_header_dst = arb_io_out_bits_header_dst;
  assign io_out_3_bits_payload_addr_beat = arb_io_out_bits_payload_addr_beat;
  assign io_out_3_bits_payload_client_xact_id = arb_io_out_bits_payload_client_xact_id;
  assign io_out_3_bits_payload_manager_xact_id = arb_io_out_bits_payload_manager_xact_id;
  assign io_out_3_bits_payload_is_builtin_type = arb_io_out_bits_payload_is_builtin_type;
  assign io_out_3_bits_payload_g_type = arb_io_out_bits_payload_g_type;
  assign io_out_3_bits_payload_data = arb_io_out_bits_payload_data;
  assign arb_clk = clk;
  assign arb_reset = reset;
  assign arb_io_in_0_valid = io_in_0_valid;
  assign arb_io_in_0_bits_header_src = io_in_0_bits_header_src;
  assign arb_io_in_0_bits_header_dst = io_in_0_bits_header_dst;
  assign arb_io_in_0_bits_payload_addr_beat = io_in_0_bits_payload_addr_beat;
  assign arb_io_in_0_bits_payload_client_xact_id = io_in_0_bits_payload_client_xact_id;
  assign arb_io_in_0_bits_payload_manager_xact_id = io_in_0_bits_payload_manager_xact_id;
  assign arb_io_in_0_bits_payload_is_builtin_type = io_in_0_bits_payload_is_builtin_type;
  assign arb_io_in_0_bits_payload_g_type = io_in_0_bits_payload_g_type;
  assign arb_io_in_0_bits_payload_data = io_in_0_bits_payload_data;
  assign arb_io_in_1_valid = io_in_1_valid;
  assign arb_io_in_1_bits_header_src = io_in_1_bits_header_src;
  assign arb_io_in_1_bits_header_dst = io_in_1_bits_header_dst;
  assign arb_io_in_1_bits_payload_addr_beat = io_in_1_bits_payload_addr_beat;
  assign arb_io_in_1_bits_payload_client_xact_id = io_in_1_bits_payload_client_xact_id;
  assign arb_io_in_1_bits_payload_manager_xact_id = io_in_1_bits_payload_manager_xact_id;
  assign arb_io_in_1_bits_payload_is_builtin_type = io_in_1_bits_payload_is_builtin_type;
  assign arb_io_in_1_bits_payload_g_type = io_in_1_bits_payload_g_type;
  assign arb_io_in_1_bits_payload_data = io_in_1_bits_payload_data;
  assign arb_io_in_2_valid = io_in_2_valid;
  assign arb_io_in_2_bits_header_src = io_in_2_bits_header_src;
  assign arb_io_in_2_bits_header_dst = io_in_2_bits_header_dst;
  assign arb_io_in_2_bits_payload_addr_beat = io_in_2_bits_payload_addr_beat;
  assign arb_io_in_2_bits_payload_client_xact_id = io_in_2_bits_payload_client_xact_id;
  assign arb_io_in_2_bits_payload_manager_xact_id = io_in_2_bits_payload_manager_xact_id;
  assign arb_io_in_2_bits_payload_is_builtin_type = io_in_2_bits_payload_is_builtin_type;
  assign arb_io_in_2_bits_payload_g_type = io_in_2_bits_payload_g_type;
  assign arb_io_in_2_bits_payload_data = io_in_2_bits_payload_data;
  assign arb_io_in_3_valid = io_in_3_valid;
  assign arb_io_in_3_bits_header_src = io_in_3_bits_header_src;
  assign arb_io_in_3_bits_header_dst = io_in_3_bits_header_dst;
  assign arb_io_in_3_bits_payload_addr_beat = io_in_3_bits_payload_addr_beat;
  assign arb_io_in_3_bits_payload_client_xact_id = io_in_3_bits_payload_client_xact_id;
  assign arb_io_in_3_bits_payload_manager_xact_id = io_in_3_bits_payload_manager_xact_id;
  assign arb_io_in_3_bits_payload_is_builtin_type = io_in_3_bits_payload_is_builtin_type;
  assign arb_io_in_3_bits_payload_g_type = io_in_3_bits_payload_g_type;
  assign arb_io_in_3_bits_payload_data = io_in_3_bits_payload_data;
  assign arb_io_out_ready = GEN_0;
  assign GEN_0 = GEN_3;
  assign GEN_1 = 2'h1 == arb_io_out_bits_header_dst ? io_out_1_ready : io_out_0_ready;
  assign GEN_2 = 2'h2 == arb_io_out_bits_header_dst ? io_out_2_ready : GEN_1;
  assign GEN_3 = 2'h3 == arb_io_out_bits_header_dst ? io_out_3_ready : GEN_2;
  assign T_1483 = arb_io_out_bits_header_dst == 2'h0;
  assign T_1484 = arb_io_out_valid & T_1483;
  assign T_1486 = arb_io_out_bits_header_dst == 2'h1;
  assign T_1487 = arb_io_out_valid & T_1486;
  assign T_1489 = arb_io_out_bits_header_dst == 2'h2;
  assign T_1490 = arb_io_out_valid & T_1489;
  assign T_1492 = arb_io_out_bits_header_dst == 2'h3;
  assign T_1493 = arb_io_out_valid & T_1492;
endmodule
