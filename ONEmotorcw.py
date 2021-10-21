NU nano 3.2                                                             motorcw.py                                                                        

import RPi.GPIO as GPIO
import time
GPIO.setwarnings(False)
#GPIO.cleanup()
in1 = 24
in2 = 23
en = 25
GPIO.setmode(GPIO.BCM)
GPIO.setup(in1,GPIO.OUT)
GPIO.setup(in2,GPIO.OUT)
GPIO.setup(en,GPIO.OUT)
p=GPIO.PWM(en,1000)
p.start(100)
while True:
#       u = subprocess.run(["echo 4"], capture_output=True)
#       for x in range(0, 9000000):

#GPIO.output(in1,GPIO.LOW)
#GPIO.output(in2,GPIO.LOW)
        GPIO.output(in1,GPIO.HIGH)
        GPIO.output(in2,GPIO.LOW)
        time.sleep(3)
#try:
  #  while 1:
#       time.sleep(2)

#except KeyboardInterrupt:
#       pass
#p.stop()
#GPIO.cleanup()
        #GPIO.output(in1,GPIO.HIGH)
        #GPIO.output(in2,GPIO.LOW)
        #GPIO.cleanup() #       time.sleep(5)
#finally:
        #GPIO.cleanup()
        #GPIO.output(in1,GPIO.HIGH)
        #GPIO.output(in2,GPIO.LOW)
        #GPIO.cleanup()
#output = subprocess.check_output('adb shell dumpsys window | grep "mCurRotation" | cut -c 18', shell=True, text=True)























