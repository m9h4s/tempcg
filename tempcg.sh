#!/bin/bash

# Colors for more beauty
RESET='\033[0m'
BOLD='\033[1m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
RED='\033[0;31m'

# Threshold for temperature (in Celsius)
CPU_THRESHOLD=80
GPU_THRESHOLD=85

# Function to check temperature and print warnings
check_temp() {
    local temp=$1
    local threshold=$2
    if [ "$temp" -ge "$threshold" ]; then
        echo -e "${RED}Warning: Temperature is too high! ${RESET}"
    fi
}

# Using 'watch' to display information continuously every 1 second
watch -n 1 "echo '------ CPU Temperature: ------' && sensors | grep 'Core' && echo '\n------ GPU Information: ------' && nvidia-smi --query-gpu=pci.bus_id,name,temperature.gpu,utilization.gpu --format=csv,noheader && \
    echo '\n___ Script by Mohammad Hossein Soleymani ___'"










