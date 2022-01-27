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
        xrandr -o left
        python /home/pi/motorcw.py
        z=1
    else
        if [ $or = $horizontal1 ] && [ $z = 1 ] || [ $or = $horizontal2 ] && [ $z = 1 ]
        then
            xrandr -o normal
            sudo python /home/pi/motorccw.py
            z=$((z+1))
        fi
        i=1
                while :
                 do
                        or=$(adb shell dumpsys window | grep "mCurRotation" | cut -c 18)
                        if [ $or = $horizontal1 ] || [ $or = $horizontal2 ]
                        then
                            break
                        fi
                done
    fi
    done
    done
