  GNU nano 3.2                                                             motorccw.py                                                                       
import RPi.GPIO as GPIO
import time
in1 = 24
in2 = 23
en = 25
GPIO.cleanup()
GPIO.setmode(GPIO.BCM)
GPIO.setup(in1,GPIO.OUT)
GPIO.setup(in2,GPIO.OUT)
GPIO.setup(en,GPIO.OUT)
p=GPIO.PWM(en,1000)
p.start(20)
GPIO.output(in1,GPIO.LOW)
GPIO.output(in2,GPIO.LOW)
#time.sleep(0.1)
#GPIO.output(in1,GPIO.HIGH)
#GPIO.output(in2,GPIO.LOW)
time.sleep(0.3)
GPIO.cleanup()

#time.sleep(5)
#GPIO.output(in1,GPIO.LOW)
#GPIO.output(in2,GPIO.HIGH)
#time.sleep(0.5)
#GPIO.output(in1,GPIO.LOW)
#GPIO.output(in2,GPIO.LOW)
GPIO.cleanup()







