#!/bin/sh
cd
z=192.168.2.141
adb tcpip 5555
adb connect $z
sleep 3
ask=$(adb devices | tail -c 3)
connected="e"
x=5
if [ $ask = $connected ]
        then
                echo "sucess"
                konsole -e sudo  /snap/bin/scrcpy --fullscreen --encoder 'OMX.google.h264.encoder' --always-on-top &
                sudo /home/pi/y.sh &
                sudo /home/pi/backbone.sh &
                bluetoothctl pair D4:11:A3:22:1C:68
else
       while [ $x = 5 ]
        do sleep 10;adb tcpip 5555; adb connect $z; ask=$(adb devices | tail -c 3)
        if [ $ask = $connected ]
               then
               echo "sucess2"
               konsole -e sudo  /snap/bin/scrcpy  scrcpy --fullscreen --encoder 'OMX.google.h264.encoder' --always-on-top &
               sudo  /home/pi/backbone.sh
               x=$((x+1))
               bluetoothctl pair D4:11:A3:22:1C:68
          fi
        done
fi

