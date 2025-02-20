#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo fallocate -l 16G /swapfile && sudo chmod 600 /swapfile && sudo mkswap /swapfile && sudo swapon /swapfile && sudo swapon --show && free -h
sudo apt install -y build-essential pkg-config libssl-dev git-all protobuf-compiler
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
rustup target add riscv32i-unknown-none-elf
tmux new -d -s nexus "curl https://cli.nexus.xyz/ | sh" && tmux a -t nexus
