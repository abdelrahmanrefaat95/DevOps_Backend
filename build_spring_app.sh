#!/bin/bash

# Variables
PROJECT_DIR="/home/shorouk/DevOps/DevOps_MVN_Server" # Replace with the path to your project directory
MVN_CMD="mvn"                      # Maven command (ensure it's in PATH or provide full path)
LOG_FILE="build.log"               # Log file location

# Navigate to the project directory
if [ ! -d "$PROJECT_DIR" ]; then
  echo "Error: Project directory $PROJECT_DIR does not exist!"
  exit 1
fi

cd "$PROJECT_DIR" || exit 1

# Clean and package the application
echo "Building Spring Boot application..."
$MVN_CMD clean package > "$LOG_FILE" 2>&1

# Check if the build succeeded
if [ $? -eq 0 ]; then
  echo "Build successful. JAR file is located in the 'target' directory."
else
  echo "Error: Build failed. Check the log file $LOG_FILE for details."
  exit 1
fi
