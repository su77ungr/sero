Hi, I’m @su77ungr. He hates Emoticons.

Blog substitute for my project "DIY Samsung 'The Sero' ROTATING TV" 

This will be listed in several steps. 

Hardware point______________

- raspberry pi 4 ( or other potent substitute with hdmi support ) 
- motor driver ( I used the L298N board ) 
- be sure your power supply has enough voltage to power your motor 
- create your own mounting but I used the end of a vesa wall mount to bolt it to the force feedback wheel
- Android Smartphone or Tablet ( Android 10 or higher ) 
- TV that fits you ( might be physical limited to 10kg in case your reproducing mine ) 
-
Software point______________

- everything on vanilla raspian os 
- create a startup.service 
- create the main running script 
- be sure to establish wifi & bluetooth connection within the boot sequence
- build the gpio script that powers the motor ( motorcw.py & motorccw.py ) 
- I used a slightly modified version of scrcpy but for the sake of time scrcpy works just fine
- 
Step to Step guide _________


<!---
su77ungr/su77ungr is a special repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.
--->
