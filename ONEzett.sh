#!/bin/sh
vertikal1=0; horizontal1=1; horizontal2=3; i=1; z=1
while :
    do
    while [ $i = 1 ]
        do
            sleep 1
            or=$(adb shell dumpsys window | grep "mCurRotation" | cut -c 18); i=$((i+1))
        done
  if [ $or = $horizontal1 ] && [ $z = 1 ] || [ $or = $horizontal2 ] && [ $z = 1 ]
        then
            konsole -e sudo pkill python
            sudo pkill -9 -f /home/pi/motorcw.py
            sleep 1
            echo Aktion2
            xrandr -o normal
            python /home/pi/motorccw.py
            z=$((z+1))
  else
        break
  fi
        i=1
done
