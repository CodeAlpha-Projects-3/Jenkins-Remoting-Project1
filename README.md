# Jenkins Remoting and Distributed Architecture

## Project Objective
The goal of this project is to set up a Jenkins Master-Agent architecture to distribute build loads and enhance security via node isolation. This ensures that the Jenkins Controller remains stable while heavy workloads are executed on dedicated remote nodes.

## Implementation Details

### 1. Agent Setup Script (setup-agent.sh)
This script automates the installation of Java 17 and retrieves the Jenkins remoting binary:

#!/bin/bash
sudo apt update && sudo apt install openjdk-17-jdk -y
curl -sO http://localhost:8080/jnlpJars/agent.jar

### 2. Connectivity Command
The agent establishes a secure connection to the controller using JNLP and WebSockets:

java -jar agent.jar -url http://localhost:8080/ -secret <YOUR_SECRET_KEY> -name "My-Remote-Node" -webSocket -workDir "/home/apnalinux123/jenkins-agent"

### 3. Verification Log
The following console output confirms that the build was successfully delegated to the remote node:

Started by user Muhammad Ahmed
Building remotely on My-Remote-Node (remote-worker) in workspace /home/apnalinux123/jenkins-agent/workspace/Verification-Job
+ whoami
Current User: apnalinux123
+ hostname
Running on Node: DESKTOP-4NHPUO6
Finished: SUCCESS

## Project Features
- Distributed Builds: Offloading execution from the Controller to Agents.
- Node Isolation: Improved security by running builds in a dedicated workspace.
- Scalability: Ability to add multiple worker nodes for parallel processing.
