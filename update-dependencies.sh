#!/bin/sh -e

PROJECT_DIR="$1"
APP_ID="dev.zelikos.rollit"

if [ -z "${PROJECT_DIR}" ]; then
    echo "$0: Specify local rust project directory"
    exit 2
fi

./flatpak-builder-tools/cargo/flatpak-cargo-generator.py "${PROJECT_DIR}/Cargo.lock"
