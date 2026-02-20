#!/bin/bash
# Счётчик строк

echo "Введите имя файла:"
read filename

# Cчитаем строки
lines=$(wc -l < "$filename")

echo "В файле $lines строк(и)"

read