#!/bin/bash
USERNAME="$1"
TARGET_DIR="$HOME/managed-users/$USERNAME"
mkdir -p "$TARGET_DIR"
echo "# настройки $USERNAME" > "$TARGET_DIR/.bashrc"
echo "Добро пожаловать, $USERNAME!"
echo "$(date): создан пользовательский каталог для $USERNAME" >> setup.log
