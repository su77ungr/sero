<div id="badges" align="center">
    <h1>
    DIY Samsung 'The Sero'
    <img src="https://media.giphy.com/media/hvRJCLFzcasrR4ia7z/giphy.gif" width="30px"/>
  </h1>  
  <a href="https://twitter.com/chialisp">
    <img src="https://img.shields.io/badge/Twitter-blue?style=for-the-badge&logo=twitter&logoColor=white" alt="Twitter Badge"/>
  </a>
  <a href="https://www.youtube.com/watch?v=43YDYoeRbvI">
    <img src="https://img.shields.io/badge/YouTube-red?style=for-the-badge&logo=youtube&logoColor=white" alt="Youtube Badge"/>
  </a>
</div>
  
   ![Profile View Counter](https://komarev.com/ghpvc/?username=su77ungr)
   [![Commits Badge](https://badges.pufler.dev/commits/monthly/su77ungr)](https://badges.pufler.dev)
    


<h1> But why? </h1>
<br>
Blog substitute for my project "DIY Samsung 'The Sero' ROTATING TV". I had to register to play Halo, so hi. 
<br>
"This is the kind of project worth setting up permanently, rather than recycling the components for future projects. It’s notably ingenuitive and shows that you don’t need name-brand hardware to get modern technology in your home." - Tom's Hardware
  
<br><br>

<h1> Prerequisites </h1>
<br>

- easy start with scrcpy https://github.com/Genymobile/scrcpy Android 10 or higher; OMX.google.h264.encoder my recommendation. 

- ADB (android debugging bridge) enabled and set up wireless connection https://www.xda-developers.com/install-adb-windows-macos-linux/


<br><br>
<h1> How to build </h1>
<br>

- build the backbone.sh script

- backbone.sh triggers rotation when current rotation of the smartphone changes (adb shell dumpsys window | grep "mCurRotation") and changes HDMI output orientation

- mechanical rotation is controlled by two .py scripts handling the GPIO outputs

- setup startup.service for the backbone.sh script to run on system start

<br>
![fritzing_schematics](https://user-images.githubusercontent.com/69374354/151350150-bf3c5ae8-dfdf-45f4-bf81-3773bc25ae13.png)

<br><br>

<h1> Demo </h1>
<br>
https://user-images.githubusercontent.com/69374354/151349687-2470cf6f-3642-402c-ae26-bd4f24fdbea9.mp4
<br><br>

<h1> Reach out to me </h1>
<br>
For anyone interested in the project hit me up at
  <a href="mailto:bricksofchia@gmail.com">
bricksofchia@gmail.com
  </a>
<br><br>
<!---
su77ungr/su77ungr is a special repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.
--->
