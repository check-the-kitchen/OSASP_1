#!/bin/bash
# первый аргумент ($1) - имя файла для записи результата
# второй ($2) - директория, в которой ищем файлы
# третий ($3) - расширение искомых файлов (в формате txt, т.е. без точки)
if [[ ! -d "$2" ]]; then
    echo "Директория "$2" не найдена"
else
    files=$(find "$2" -type f -name "*.$3")
    echo "${files}" > "$1"
fi
exit 0
