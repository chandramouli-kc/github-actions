#!/bin/bash

echo $(pwd)
cd .github/workflows
pwdls ßlrt uideploy.yaml
# Path to the YAML file
YAML_FILE="uideploy.yaml"

# Check if file exists
if [ ! -f "$YAML_FILE" ]; then
  echo "Error: $YAML_FILE not found!"
  exit 1
fi

# Key-value pairs to update
# Format: sed -i -e 's|old_value|new_value|g' file.yaml
# Adjust the keys and values below as per your YAML file structure

echo "Updating YAML values in $YAML_FILE..."


sed -i 's|public|privatee|g' \ "$YAML_FILE"
       

echo "Update completed successfully."
cat "uideploy.yaml"