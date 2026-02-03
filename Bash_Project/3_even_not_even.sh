#!/bin/bash

# Запрашиваем число
read -p "Введите число: " number

# Проверяем чётность
if (( number % 2 == 0 )); then
        echo "Число $number - чётное"
    else
        echo "Число $number - нечётное"
fi

read