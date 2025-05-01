from machine import Pin
from machine import UART
import ice
#frequency=12 since a pll is used to increase to 25MHz 
fpga = ice.fpga(cdone=Pin(40), clock=Pin(21), creset=Pin(31), cram_cs=Pin(5), cram_mosi=Pin(4), cram_sck=Pin(6), frequency=12)
file = open("uart-echo-PipelineC.bin","br")
flash = ice.flash(miso=Pin(4), mosi=Pin(7), sck=Pin(6), cs=Pin(5))
fpga.start()
fpga.cram(file)
uart = UART(0, 115200)
uart.init(115200, bits=8, parity=None, stop=1, tx=28, rx=29) # init with given parameters
bufout = "abc"
print(bufout)
uart.write(bufout)
uart.readinto(bufin,3)
print(bufin)

