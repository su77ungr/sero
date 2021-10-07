#!/bin/sh
vertikal1=0; horizontal1=1; horizontal2=3; i=1; z=1
while :
    do
    while [ $i = 1 ]
        do
         or=$(adb shell dumpsys window | grep "mCurRotation" | cut -c 18); i=$((i+1))
        done
    if [ $or = $horizontal1 ] && [ $i = 2 ] || [ $or = $horizontal2 ] && [ $i = 2 ]
     then
                        echo Aktion2
                        sudo pkill -9 -f /home/pi/motorcw.py
                        xrandr -o normal
                        konsole -e python /home/pi/motorccw.py
#        i=$((i+1))
        while :
                do
                 if  [ $or = $horizontal1 ] || [ $or = $horizontal2 ]
                        then
                                break
                 fi
        done
        i=$((i+1))
    else
    i=1
    while [ $or = $vertikal1 ] && [ $z = 1 ]
         do
                        if [ $or = $vertikal1 ] #&& [ $z = 1 ]
                                then
                                        echo Aktion 1
                                        xrandr -o left
                                        konsole -e python /home/pi/motorcw.py
                                        z=$((z+1))
                        fi
         z=$((z+1))
       done
    fi
    done
