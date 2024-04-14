#!/bin/bash

echo "Starting SSH server..."
service ssh start


# Execute commands over SSH
echo "Executing commands over SSH..."
sshpass -p "raspberry" ssh tortoisebot@master 'bash -ic "noetic && roslaunch tortoisebot_firmware bringup.launch"'
echo "Command execution completed."
