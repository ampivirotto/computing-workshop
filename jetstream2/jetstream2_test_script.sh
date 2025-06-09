#!/bin/bash
echo "Testing Jetstream2 environment..."

# Update package list (safe, quick)
sudo apt update -y

# Check Python and pip
python3 --version
pip3 --version

# Create and run a small Python script
echo "print('Hello from Jetstream2!')" > test.py
python3 test.py

# Install and use a Python package
pip3 install --user requests
python3 -c "import requests; print('requests version:', requests.__version__)"

echo "Test complete. Jetstream2 is working!"