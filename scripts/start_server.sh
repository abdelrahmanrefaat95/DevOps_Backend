#!/bin/bash

cd /opt/app

# Set JAVA_HOME
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH

# Kill any existing process
pkill -f "UserMgmtDemo.war" || true

# Start the application in background
nohup java -jar target/UserMgmtDemo.war > /var/log/app/application.log 2>&1 &

# Wait a moment and check if process started
sleep 5
if pgrep -f "UserMgmtDemo.war" > /dev/null; then
    echo "Application started successfully"
else
    echo "Failed to start application"
    exit 1
fi