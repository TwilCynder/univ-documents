import serial
import time
import sys

sp = serial.Serial()
sp.port = '/dev/ttyACM0'
sp.baudrate = 57600
sp.parity = serial.PARITY_NONE
sp.bytesize = serial.EIGHTBITS
sp.stopbits = serial.STOPBITS_ONE
sp.dtr = 0
sp.open()

appkey = "0123456789ABCDEF0123456789ABCDEF"
appeui = "DEAD25DEAD25DEAD"  
deveui = "DEADDEAD00090001" 
dr = 2

retry_delay = 10


def send(data):
   sp.write((data+"\x0d\x0a").encode())
   data.rstrip()
   time.sleep(2)
   rdata=sp.read_all()
   rdata=rdata.decode("utf-8")
   return rdata


def join_network() -> str:

    for i in range(1, 4):
        print("Joining ...")
        print(send("mac join otaa"))

        res = sp.read_all().decode("utf-8").rstrip()
        while not res:
            time.sleep(1)
            res = sp.read_all().decode("utf-8").rstrip()

        if res == "accepted":
            print("Successfully joined")
            return True
        
        print(f"Error: Failed to join network. Reason : ${res}. Waiting {retry_delay} ...")

        time.sleep(retry_delay)
    return False

def send_message(data):
    print("Sending : ", data)

    for i in range(1, 4):
        res = send("mac tx cnf 220 " + str(data)).rstrip()

        if (res == "$ok"):
            answer = sp.read_all().decode("utf-8").rstrip()

            while not res:
                answer = sp.read_all().decode("utf-8").rstrip()
                time.sleep(1)

            if answer == "mac_tx_ok":
                print("Successfully sent")
                return
            else:
                print(f"Message sent but refused by lora with error : ${answer}")

        else:
            print(f"Could not send the message. Reason : ${res}")

        print(f"Error: Failed to transmit the message. Reason : ${res}. Waiting {retry_delay} ...")
        time.sleep(retry_delay)

def init_lora():
    print("Resetting device : ")
    print(send("sys reset"))
    time.sleep(5)

    print("Setting the appkey : " + appkey)
    print(send("mac set appkey " + appkey))

    print("Setting the appeui : " + appeui)
    print(send("mac set appeui " + appeui))

    print("Setting the deveui : " + deveui)
    print(send("mac set deveui " + deveui))

    print("Setting the data-rate : " + str(dr))
    print(send("mac set dr " + str(dr)))

    print("Saving mac settings")
    print(send("mac save"))

    if not join_network():
        sys.exit(1)

def clear_recv():
    sp.read_all()