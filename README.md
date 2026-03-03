# 🧅 tor-exit-feed

Публичный feed с актуальным списком Tor Exit Node IP-адресов для использования в firewall/ipset.

## 📄 Файл

- `tor_exit_nodes.txt` — один IPv4-адрес на строку.

Raw URL:
- `https://raw.githubusercontent.com/helloworld401/tor-exit-feed/refs/heads/main/tor_exit_nodes.txt`

## 🔄 Обновление

Список обновляется автоматически через **GitHub Actions**:
- по расписанию (cron),
- и вручную через **Run workflow**.

## ⚙️ Для чего использовать

Можно напрямую подключать в серверные скрипты:
- загрузка списка по Raw URL,
- импорт в `ipset` (например `tor_exit_src`),
- блокировка Tor Exit Node трафика в `iptables`.

## 📌 Формат данных

- plain text
- один IPv4 на строку
- без JSON/CSV

## ✅ Проверка

После запуска workflow:
1. Убедиться, что run в Actions зелёный (`Success`).
2. Проверить, что `tor_exit_nodes.txt` обновился.
3. Открыть `Raw` и убедиться, что URL доступен извне.

## 🛡️ Примечание

Репозиторий содержит только технический список IP-адресов и не включает приватные данные.
