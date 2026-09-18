#!/bin/bash
USERNAME="$1"
if [ -z "$USERNAME" ]; then
echo "Использование: ./script.sh имя_пользователя" >&2
exit 1
fi
TARGET_DIR="$HOME/managed-users/$USERNAME"
mkdir -p "$TARGET_DIR"
echo "# настройки $USERNAME" > "$TARGET_DIR/.bashrc"
echo "Добро пожаловать, $USERNAME!"
echo "$(date): создан пользовательский каталог для $USERNAME" >> setup.log
