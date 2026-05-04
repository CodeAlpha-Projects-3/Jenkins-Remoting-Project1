#!/bin/bash
echo "Updating and installing Java..."
sudo apt update && sudo apt install openjdk-17-jdk -y
echo "Downloading Jenkins Agent Jar..."
curl -sO http://localhost:8080/jnlpJars/agent.jar
echo "Setup Complete."
