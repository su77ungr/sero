#!/bin/sh
vertikal1=0; horizontal1=1; horizontal2=3; i=1; z=1
while :
    do
    while [ $i = 1 ]
        do
         or=$(adb shell dumpsys window | grep "mCurRotation" | cut -c 18 | tail -1); i=$((i+1))
        done
    if [ $or = $vertikal1 ] && [ $i = 2 ]
     then
        i=$((i+1))
        xrandr -o right &
        konsole -e sudo python /home/pi/motorcw.py
        z=1
    else
        if [ $or = $horizontal1 ] && [ $z = 1 ] || [ $or = $horizontal2 ] && [ $z = 1 ]
        then
            xrandr -o normal
            konsole -e sudo python /home/pi/motorccw.py
            z=$((z+1))
        fi
        i=1
    fi
    done
    done
