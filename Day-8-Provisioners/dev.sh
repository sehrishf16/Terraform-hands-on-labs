#!/bin/bash

set -euo pipefail


echo "Starting Terraform Provisioners"


# Step 1: Create directory
sudo mkdir -p /opt/provisioner-demo

# Step 2: Copy file10
sudo cp /tmp/file10 /opt/provisioner-demo/file10

# Step 3: Copy file500
sudo cp /tmp/file500 /opt/provisioner-demo/file500

# Step 4: Set file permissions
sudo chmod 644 /opt/provisioner-demo/file10
sudo chmod 644 /opt/provisioner-demo/file500

# Step 5: Display file10 content
echo "File10 Content:"
cat /opt/provisioner-demo/file10

# Step 6: Display file500 content
echo "File500 Content:"
cat /opt/provisioner-demo/file500

echo "================================"
echo "Provisioning Completed!"
echo "================================"