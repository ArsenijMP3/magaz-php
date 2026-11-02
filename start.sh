#!/bin/sh
cd "$(dirname "$0")"
command -v php >/dev/null || { echo "PHP не найден. Установите PHP (например: brew install php / apt install php-cli)."; exit 1; }
(sleep 1; (xdg-open http://localhost:8000/ || open http://localhost:8000/) >/dev/null 2>&1) &
echo "Сайт: http://localhost:8000/  (Ctrl+C для остановки)"
php -S localhost:8000
