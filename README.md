# Eye blink Detection
## Read me

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

There are 2 versions of the Eye_blink detection

Normal python script but dependencies inside the requirements.txt file included in the github should be installed

The other version is a dockerized image, you have to have docker installed in order to run the image

## Requirements

* Only one person should be in the video

* The face of the person should cover at least 1/3 of the frame

* Minimum resolution should be 480p using the (4:3) Standard

* Increments the number of blinks [upper-left corner]

* If the eyes are closed for more than 2 seconds, a message "Alert!" appears in red



## Running the script locally:

How to run with the normal script inside a terminal:
To use the live camera use the following command while inside the folder of the script:
```sh
python detect_blinks.py
```


To use a video file use the following command:
```sh
python detect_blinks.py --video "Path to the file"
```

To use the test video file use the following command:
```sh
python detect_blinks.py --video VID_20210426_220221_01.mp4
```

## Docker

To install the docker image use the following command:

```sh
docker pull mhegazy15/eyeblink_101:eye_v2
```

This will create the eye blink detection image and pull in the necessary dependencies.


Once done, to run the docker image:
To use the live camera along with the docker image use the following command:

```sh
xhost +
```
```sh
docker run  -it --rm --privileged -e DISPLAY=$IP:0 --device=/dev/video0:/dev/video0 -v /tmp/.X11-unix:/tmp/.X11-unix mhegazy15/eyeblink_101:eye_v2
```
```sh
xhost -
```

To use the test video along with the docker image use the following command:
```sh
xhost +
```
```sh
docker run  -it --rm --privileged -e DISPLAY=$IP:0 --device=/dev/video0:/dev/video0 -v /tmp/.X11-unix:/tmp/.X11-unix mhegazy15/eyeblink_101:eye_v2 --video VID_20210426_220221_01.mp4
```
```sh
xhost -
```
![test sample](https://github.com/phoenixfury/EyeBlink_Detection/blob/master/Sample/outpy.gif)
