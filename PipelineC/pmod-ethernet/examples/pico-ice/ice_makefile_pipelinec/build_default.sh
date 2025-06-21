#!/bin/bash
make clean all BOARD=PICO2 PIPELINEC_TOP_FILE=ethernet_top.c PLL_CLK_MHZ=16.0 NEXTPNR_ARGS="--pre-pack eth_clocks.py"
bin2uf2 -o gateware.uf2 gateware.bin

