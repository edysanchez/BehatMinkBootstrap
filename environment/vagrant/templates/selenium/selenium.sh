#!/bin/bash
export DISPLAY=:10
Xvfb :10 -screen 0 1366x768x24 -ac &
java -jar /opt/selenium/selenium.jar
