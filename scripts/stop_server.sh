#!/bin/bash

# Stop the application gracefully
pkill -f "UserMgmtDemo.war" || true

# Wait for process to stop
sleep 3

# Force kill if still running
pkill -9 -f "UserMgmtDemo.war" || true

echo "Application stopped"