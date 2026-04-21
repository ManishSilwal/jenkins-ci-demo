#!/bin/bash

echo "App Version: $APP_VERSION"
echo "Build Timestamp: $BUILD_TS"

echo "Hostname: $(hostname)"
echo "Date: $(date)"

echo "System Info:"
echo "OS: $(uname -o)"
echo "Kernel: $(uname -r)"
echo "CPU: $(lscpu | grep 'Model name' | cut -d ':' -f2 | xargs)"
echo "Memory: $(free -h | grep Mem | awk '{print $2}')"

exit 0
