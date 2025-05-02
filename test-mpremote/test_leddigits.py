from machine import Pin
import ice
file = open("top.bin","br")
flash = ice.flash(miso=Pin(4), mosi=Pin(7), sck=Pin(6), cs=Pin(5))
flash.write(file)
fpga = ice.fpga(cdone=Pin(ICE_DONE), clock=Pin(ICE_CLK), creset=Pin(ICE_RST), cram_cs=Pin(ICE_SS), cram_mosi=Pin(ICE_SI), cram_sck=Pin(ICE_SCK), frequency=48)

fpga.start()
