#!/usr/bin/env bash
# This tells the system to use bash to interpret this script

# Safety flags - these make your script more robust:
set -euo pipefail
# -e: Exit immediately if any command fails (no silent failures)
# -u: Treat unset variables as errors (catch typos)
# -o pipefail: Ensure pipeline commands fail properly (detect failures in pipes)Why these  flags matter: Without these flags, your script might continue running even after errors occur, leading to inconsistent or corrupted results. This is especially critical for data processing scripts!

# Create  Directory structure
# Print status message to user
echo "[INFO] Preparing data directory structure..."

# Create data directory 
mkdir -p data
# -p flag: Create parent directories as needed, don't error if directory exists

# Download dataset by defining a variable for the file path, downloading the CSV using curl, and confirm success
RAW_FILE="data/iris.csv"
curl -L -o $RAW_FILE https://raw.githubusercontent.com/uiuc-cse/data-fa14/gh-pages/data/iris.csv
echo "[INFO] Downloaded sample dataset: $RAW_FILE"

# add custom row by appending (>>) new row to the end of the file
echo "custom,0.1,0.2,0.3,setosa" >> $RAW_FILE
echo "[INFO] Added one synthetic row."

# Report summary by counting the number of rows with `wc -l`
LINES=$(wc -l < $RAW_FILE)
echo "[REPORT] Dataset now has $LINES rows."
echo "[INFO] Done!"



