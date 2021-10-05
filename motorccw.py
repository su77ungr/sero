import RPi.GPIO as GPIO
import time
in1 = 24
in2 = 23
en = 25
GPIO.setmode(GPIO.BCM)
GPIO.setup(in1,GPIO.OUT)
GPIO.setup(in2,GPIO.OUT)
GPIO.setup(en,GPIO.OUT)
p=GPIO.PWM(en,1000)
p.start(100)
GPIO.output(in1,GPIO.HIGH)
GPIO.output(in2,GPIO.LOW)
time.sleep(0.3)
GPIO.output(in1,GPIO.LOW)
GPIO.output(in2,GPIO.HIGH)
time.sleep(0.2)
GPIO.output(in1,GPIO.LOW)
GPIO.output(in2,GPIO.LOW)
time.sleep(0.2)
GPIO.cleanup()
