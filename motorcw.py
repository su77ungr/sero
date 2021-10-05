import RPi.GPIO as GPIO
import time
import subprocess
GPIO.setwarnings(False)
GPIO.cleanup()
in1 = 24
in2 = 23
en = 25
GPIO.setmode(GPIO.BCM)
GPIO.setup(in1,GPIO.OUT)
GPIO.setup(in2,GPIO.OUT)
GPIO.setup(en,GPIO.OUT)
p=GPIO.PWM(en,1000)
p.start(100)
GPIO.output(in1,GPIO.LOW)
GPIO.output(in2,GPIO.LOW)
GPIO.output(in1,GPIO.LOW)
GPIO.output(in2,GPIO.HIGH)
time.sleep(30)
GPIO.cleanup()
# except (RuntimeWarning):
 # GPIO.cleanup()
  #quit()
#output = subprocess.check_output('adb shell dumpsys window | grep "mCurRotation" | cut -c 18', shell=True, text=True)
