#!/bin/bash

# Конфигурация
SOURCE_REPO_PATH="/c/Users/Vedear/Documents/MFUA_Projects/rurewa/mfua" # Путь к репозиторию, откуда пуллим
DEST_REPO_PATH="/c/Users/Vedear/Documents/MFUA_Projects/GitPRJCT" # Путь к репозиторию, куда пушим
DEST_BRANCH="main" # Ветка для пуша (main или master)

CURRENT_DATE=$(date +"%Y-%m-%d")
COMMIT_MESSAGE="autoupdate from teacher $CURRENT_DATE"

log_message() {
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] $1"
}

# Проверка путей
if [ ! -d "$SOURCE_REPO_PATH" ] || [ ! -d "$DEST_REPO_PATH" ]; then
    log_message "ОШИБКА: Один из путей не существует"
    exit 1
fi

# Git pull в исходном репозитории
cd "$SOURCE_REPO_PATH" || exit 1
log_message "Выполняем git pull..."
git pull || exit 1

# Копирование файлов (исключая .git)
log_message "Копируем файлы..."
cd "$SOURCE_REPO_PATH" || exit 1

# Копируем все из исходной папки кроме .git в целевую
find . -not -path "./.git*" -not -path "." -exec cp -r --parents {} "$DEST_REPO_PATH/" \;

if [ $? -eq 0 ]; then
    log_message "Файлы успешно скопированы"
else
    log_message "ОШИБКА: Не удалось скопировать файлы"
    exit 1
fi

# Git операции в целевом репозитории
cd "$DEST_REPO_PATH" || exit 1

log_message "Выполняем git add ."
git add .

if ! git diff --cached --quiet; then
    git commit -m "$COMMIT_MESSAGE"
    git push origin "$DEST_BRANCH"
    log_message "Git push успешно выполнен"
else
    log_message "Нет изменений для коммита"
fi

log_message "Скрипт успешно завершен!"

read -p "Нажмите Enter для закрытия"