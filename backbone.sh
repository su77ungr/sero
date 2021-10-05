vertikal1=0; horizontal1=1; horizontal2=3; i=1; z=1
while :
    do
    while [ $i = 1 ]
        do
         or=$(adb shell dumpsys window | grep "mCurRotation" | cut -c 18); i=$((i+1))
        done
    if [ $or = $vertikal1 ] && [ $i = 2 ]
     then
        i=$((i+1))
        echo Aktion1
        xrandr -o left
        sleep 1
        python /home/pi/motorcw.py
        z=1
    else
        if [ $or = $horizontal1 ] && [ $z = 1 ] || [ $or = $horizontal2 ] && [ $z = 1 ]
        then
            echo Aktion2
           # sudo pkill -9 -f /home/pi/motorcw.py
           # sleep 1
           # sudo pkill -9 -f /home/pi/motorcw.py
           # sudo pkill -9 -f /home/pi/motorcw.py
            xrandr -o normal
            sleep 1
            sudo python /home/pi/motorccw.py
            z=$((z+1))
        fi
        i=1
                while :
                 do
                        or=$(adb shell dumpsys window | grep "mCurRotation" | cut -c 18); sleep 1
                        if [ $or = $horizontal1 ] || [ $or = $horizontal2 ]
                        then
                            break
                        fi
                done
    fi
    done
    done
