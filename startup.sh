#!/bin/sh
cd
z=192.168.2.141
adb tcpip 5555
adb connect $z
sleep 3
ask=$(adb devices | tail -c 3)
connected="e" #connection etablished
x=5
if [ $ask = $connected ]
        then
                echo "sucess"
                konsole -e sudo  /snap/bin/scrcpy -f --always-on-top --max-fps 10 &
                konsole -e sudo  /home/pi/backbone.sh
else
        while [ $x = 5 ]
         do sleep 10;adb tcpip 5555; adb connect $z; ask=$(adb devices | tail -c 3)
          if [ $ask = $connected ]
                then
                echo "sucess2"
                konsole -e sudo  /snap/bin/scrcpy -f --always-on-top --max-fps 10 &
                konsole -e sudo  /home/pi/backbone.sh
                x=$((x+1))
          fi
        done
fi
