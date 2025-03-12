#!/bin/bash

# Set working directory
cd /home/azureuser/stage6

# Pull the latest changes from GitHub
git pull origin master

# Activate the virtual environment
source /home/azureuser/env/bin/activate

# Install required Python packages
pip install -r requirements.txt

# Restart services
sudo systemctl restart chatbot-backend
sudo systemctl restart chatbot-frontend

echo "Deployment completed successfully!"
