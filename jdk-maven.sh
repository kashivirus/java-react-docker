#!/bin/bash

# Install JDK 11
sudo apt-get update
sudo apt-get install openjdk-11-jdk

# Install Maven
sudo apt-get install maven

# Set environment variables
echo "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64" >> ~/.bashrc
echo "export PATH=$PATH:/usr/share/maven/bin" >> ~/.bashrc
source ~/.bashrc

# Verify installation
java -version
mvn -version
