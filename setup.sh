#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo fallocate -l 16G /swapfile && sudo chmod 600 /swapfile && sudo mkswap /swapfile && sudo swapon /swapfile && sudo swapon --show && free -h
sudo apt install -y build-essential pkg-config libssl-dev git-all protobuf-compiler
source $HOME/.cargo/env
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
rustup target add riscv32i-unknown-none-elf
yes | curl -s https://cli.nexus.xyz/ | sh
