from fcntl import ioctl
from ctypes import *

IOC_READ = 0b10
IOC_WRITE = 0b01

# IOCTL to send 
# mode is IOC_WRITE or IOC_READ
# letter and number selects the IOCTL
# s is the C structure to send or receive
def send_ioctl(f, mode, letter, number, s):
    io_v = (mode & 0b11) << 30 | \
           (len(bytes(s)) & 0x3FFF) << 16 | \
           (ord(letter) & 0xFF) << 8 | \
           (number & 0xFF)
    ioctl(f, io_v, s)


#Structure C à envoyer
# equiv. :
# 	typedef struct {
#		size_t taille;
#		char * data;
#	} NewName;
# a = "coucou"
# elem = NewName(len(a), a.encode('utf-8'))
#
# equiv. :
# NewName elem = {.taille=6, .data="coucou"};
class NewName(Structure):
    _fields_ = [("taille", c_size_t), ("data", c_char_p)]


#char device file
char_dev = "/dev/tp_clb0"
lettre = 'x'
num = 0
#
with open(char_dev) as f:
    a = "TEST"
    elem = NewName(len(a), a.encode('utf-8'))
    send_ioctl(f, IOC_WRITE, lettre, num, elem)
