



Blog substitute for my project "DIY Samsung 'The Sero' ROTATING TV". I had to register to play Halo, so hi. 




- ADB (android debugging bridge) enabled and set up wireless connection https://www.xda-developers.com/install-adb-windows-macos-linux/

- easy start with scrcpy https://github.com/Genymobile/scrcpy Android 10 or higher; OMX.google.h264.encoder my recommendation. 

- build the backbone.sh script

- backbone.sh triggers rotation when current rotation of the smartphone changes (adb shell dumpsys window | grep "mCurRotation") and changes HDMI output orientation

- mechanical rotation is controlled by two .py scripts handling the GPIO outputs

- setup startup.service for the backbone.sh script to run on system start


For anyone interested in the project hit me up at s77ngr@gmail.com

https://user-images.githubusercontent.com/69374354/151349687-2470cf6f-3642-402c-ae26-bd4f24fdbea9.mp4





<!---
su77ungr/su77ungr is a special repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.
--->
