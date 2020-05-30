#!/bin/bash
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
NC='\033[0m'

sudo apt update
sudo apt install python3-pip
sudo apt install python-pip

sudo -H pip3 install --upgrade pip
sudo -H pip2 install --upgrade pip

echo "${PURPLE}install vim${NC}"
sudo apt-get install libncurses5-dev libncursesw5-dev
sudo apt install git
sudo apt install make
sudo apt install build-essential

echo "${GREEN}[OK]finished installing vim${NC}"
echo "${PURPLE}start to install vi${NC}"

sudo git clone https://github.com/vim/vim.git
cd vim/src
sudo make
sudo make install

#echo "vim --version $(vim --version)"

echo -e "${GREEN}[OK]install virtualenv${NC}"
pip3 install virtualenv

sudo killall -9 apt apt-get
sudo rm /var/lib/dpkg/lock
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock

sudo dpkg -configure -a
sudo apt-get update

sudo apt-get install python3-venv
echo y | command

echo -e "${PURPLE}build python venv${NC}"
virtualenv venv
python -m venv venv

echo "${PURPLE}source the venv${NC}"
source ./venv/bin/activate

echo "${PURPLE}install vscode${NC}"
sudo apt update
sudo apt install software-properties-common apt-transport-https wget

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

sudo apt update
sudo apt install code

echo "${GREEN}[OK]finished installing vscode${NC}"

sudo pip3 install -r requirements.txt
sudo pip install -r requirements.txt

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-get update
sudo apt-get install ros-kinetic-desktop-full

echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
sudo apt install python-rosdep
sudo rosdep init
rosdep update


sudo apt-get install ros-kinetic-driver-base ros-kinetic-move-base-msgs ros-kinetic-octomap ros-kinetic-octomap-msgs ros-kinetic-humanoid-msgs ros-kinetic-humanoid-nav-msgs ros-kinetic-camera-info-manager ros-kinetic-camera-info-manager-py
sudo apt-get install ros-kinetic-pepper-.*

mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
git clone https://github.com/ros-naoqi/naoqi_driver.git
rosdep install -i -y --from-paths ./naoqi_driver

source /opt/ros/kinetic/setup.sh
cd ../ && catkin_make


git clone https://github.com/pjreddie/darknet
cd darknet
make
wget https://pjreddie.com/media/files/yolov3.weights
./darknet detect cfg/yolov3.cfg yolov3.weights data/dog.jpg
wget https://pjreddie.com/media/files/yolov3-tiny.weights
./darknet detect cfg/yolov3-tiny.cfg yolov3-tiny.weights data/dog.jpg
# webcam
#./darknet detector demo cfg/coco.data cfg/yolov3.cfg yolov3.weights

# video
# ./darknet detector demo cfg/coco.data cfg/yolov3.cfg yolov3.weights <video file>

sudo apt-get install python-opencv

if [ -f "/home/applejenny66/jenny/PepperSDK_2.5.5/Linux/pynaoqi-python2.7-2.5.5.5-linux64.tar.gz" ]; then
    tar zxvf "/home/applejenny66/jenny/PepperSDK_2.5.5/Linux/pynaoqi-python2.7-2.5.5.5-linux64.tar.gz"
else
    echo "extracted or no file existed"
fi

export PYTHONPATH=${PYTHONPATH}:/home/applejenny66/jenny/PepperSDK_2.5.5/Linux/pynaoqi-python2.7-2.5.5.5-linux64/lib/python2.7/site-packages
