#!/bin/bash

# Проверяем доступность порта
PORT=80
if ! nc -z localhost $PORT; then
  echo "Порт $PORT недоступен"
  exit 1
fi

# Проверяем существование файла index.html
FILE="/var/www/html/index.html"
if [ ! -f "$FILE" ]; then
  echo "Файл $FILE не существует"
  exit 2
fi

echo "Все проверки пройдены успешно"
exit 0
