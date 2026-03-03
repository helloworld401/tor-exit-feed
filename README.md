# Tor Exit Feed (auto-updated)

Этот репозиторий публикует актуальный список Tor exit IP-адресов в виде plain-text файла для автоматического использования на серверах/фаерволах.

## Файл

- `tor_exit_nodes.txt` — один IPv4-адрес на строку.

Raw URL:
- `https://raw.githubusercontent.com/helloworld401/tor-exit-feed/refs/heads/main/tor_exit_nodes.txt`

## Обновление

Список обновляется автоматически через GitHub Actions по расписанию и может быть запущен вручную из вкладки **Actions**.

## Использование

Подставьте raw URL в ваш скрипт/сервис, который обновляет ipset или firewall blacklist.

Пример:
- скачивание файла по URL;
- импорт IP-адресов в ваш blacklist set.

## Примечание

Репозиторий предназначен как публичный источник данных (feed) и не содержит приватной инфраструктурной информации.
