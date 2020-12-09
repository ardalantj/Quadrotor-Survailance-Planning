#!/bin/sh

DESTDIR=/home/ardalan/catkin_ws/build/nlopt/nlopt_install make install

cp -r /home/ardalan/catkin_ws/build/nlopt/nlopt_install//home/ardalan/catkin_ws/install/* /home/ardalan/catkin_ws/devel/
