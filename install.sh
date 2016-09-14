#!/bin/sh

# Install launchagent files and load them

TARGET_DIR=~/Library/LaunchAgents

for FILE in *.plist; do
  echo "Adding $FILE to launchd"
  cp $FILE $TARGET_DIR
  launchctl load $TARGET_DIR/$FILE
done
