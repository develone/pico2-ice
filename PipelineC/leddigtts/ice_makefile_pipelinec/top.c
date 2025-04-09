#include "top.h"
#include "top1.h"
#define N 22
#define count_t uint23_t

#pragma MAIN_MHZ blinky_main 12.0
void blinky_main(){
  static count_t counter;
  led_r = 1;
  led_g = 1;
  led_b = counter >> N;
  counter += 1;
}

#pragma MAIN_MHZ uart_main 12.0
void uart_main(){
  // Default loopback connect
  uart_tx_mac_word_in = uart_rx_mac_word_out;
  uart_rx_mac_out_ready = uart_tx_mac_in_ready;

  // Override .data to do case change demo
  char in_char = uart_rx_mac_word_out.data;
  char out_char = in_char;
  uint8_t case_diff = 'a' - 'A';
  if(in_char >= 'a' && in_char <= 'z'){
    out_char = in_char - case_diff;
  }else if(in_char >= 'A' && in_char <= 'Z'){
    out_char = in_char + case_diff;
  }
  uart_tx_mac_word_in.data = out_char;
}

// TODO move this `#define LED_8SSD_` stuff into 
// pipelinec include library for eight digit seven segment display?
//#include "leds/leds_8ssd.h" ? like leds/rgb_led

// Configure PMOD ports to be used for LED demo
// if pmod is moved, change pmod name used here
#define LED_8SSD_D7 pmod_1b_o4 // ice_28
#define LED_8SSD_D0 pmod_1a_o1 // ice_43
#define LED_8SSD_D5 pmod_1b_o3 // ice_32
#define LED_8SSD_D6 pmod_1a_o4 // ice_31
#define LED_8SSD_D2 pmod_1a_o2 // ice_38
#define LED_8SSD_D3 pmod_1b_o2 // ice_36
#define LED_8SSD_D1 pmod_1b_o1 // ice_42
#define LED_8SSD_D4 pmod_1a_o3 // ice_34

#pragma MAIN_MHZ led_8ssd_main 12.0
void led_8ssd_main(){
  // Match verilog names
  uint1_t d0;
  uint1_t d1;
  uint1_t d2;
  uint1_t d3;
  uint1_t d4;
  uint1_t d5;
  uint1_t d6;
  uint1_t d7;
  // TODO just make array?
  // ?? uint1_t d[8];

  // TODO insert code here to correctly drive the display
  static uint1_t toggle_dummy_signal; // *See note below
  d0 = toggle_dummy_signal;
  d1 = toggle_dummy_signal;
  d2 = toggle_dummy_signal;
  d3 = toggle_dummy_signal;
  d4 = toggle_dummy_signal;
  d5 = toggle_dummy_signal;
  d6 = toggle_dummy_signal;
  d7 = toggle_dummy_signal;
  toggle_dummy_signal = ~toggle_dummy_signal;

  // Drive the top level pin outputs connect to pmod
  LED_8SSD_D0 = d0;
  LED_8SSD_D1 = d1;
  LED_8SSD_D2 = d2;
  LED_8SSD_D3 = d3;
  LED_8SSD_D4 = d4;
  LED_8SSD_D5 = d5;
  LED_8SSD_D6 = d6;
  LED_8SSD_D7 = d7;
}

// * GHDL BUG?
// When driving an output port with a constant, ex. d0 = 0;
// GHDL says:
//signal assignment not allowed here
//for
//signal port <= variable;
//then says
//warning: no assignment for port [-Wnowrite]
//WEIRD?

