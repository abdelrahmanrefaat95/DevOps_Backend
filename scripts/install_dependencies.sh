#!/bin/bash

# Update package list
apt-get update

# Install Java 8 if not already installed
if ! java -version 2>&1 | grep -q "1.8"; then
    echo "Installing OpenJDK 8..."
    apt-get install -y openjdk-8-jdk
fi

# Set JAVA_HOME
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> /etc/environment

# Create application directory
mkdir -p /opt/app
chown ubuntu:ubuntu /opt/app

# Create log directory
mkdir -p /var/log/app
chown ubuntu:ubuntu /var/log/app

echo "Dependencies installed successfully"