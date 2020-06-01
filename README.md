# Build your system for robot Pepper

----
## Description
I am a robot killer. 

Unfortunately, when I tried to use any robot-related equipment, I always broke some devices. Hence, I'd like to write down all the steps I need to do so that I can directly run a bash file when I crash my computer either while using ROS to control the robot Pepper.

This repository is built due to the above-mentioned reason.

----
## System
* Ubuntu 16.04
* Pepper
* ROS - kinetic

----
## Usage
After you finished installing **ubuntu 16.04**, you can directly run the script file **'init.sh'** to build a system being able to control the robot Pepper. 
    
    git clone https://github.com/applejenny66/robot_install.git
    cd robot_install
    sudo chmod +x init.sh
    sudo ./init.sh

After finished the installation, you can test whether the ROS is installed successfully by running
    
    roscore

And, open another terminal to test the Pepper

    chmod +x run.sh
    chmod +x pepper_driver.sh
    sudo ./run.sh
    sudo ./pepper_driver.sh

Moreover, you should be able to run rviz in the terminal to see your robot by running

    rviz


----
## What is done in the script "init.sh"?
1. Install and upgrade pip / pip3
2. Install vim
3. Install and build virtualenv for python
4. Install [visual studio code](https://packages.microsoft.com/repos/vscode)
5. Install requirements.txt
6. Install [ROS - kinetic](http://wiki.ros.org/kinetic/Installation/Ubuntu)
7. Install [ROS pepper-driver](http://wiki.ros.org/pepper/Tutorial_kinetic)
8. clone [naoqi-driver](https://github.com/ros-naoqi/naoqi_driver.git)
9. clone [darknet](https://github.com/pjreddie/darknet)
10. Download [yolov3](https://pjreddie.com/darknet/yolo/)
11. Install opencv
12. Check for having the "pynaoqi-python2.7-2.5.5.5-linux64" or not

## Next
you can develop your robot Pepper now!

### Future
>I will keep updating the code if there's any problem and make it more flexible and convenient for people.

----
## Changelog
* 1-Jun-2020 by Quintina

----
## Thanks
* ACL team
