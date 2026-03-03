#!/usr/bin/env bash
set -euo pipefail

OUT_FILE="tor_exit_nodes.txt"
TMP_FILE="$(mktemp)"

# Источник Tor exits
curl -fsSL --connect-timeout 15 --max-time 120 \
  "https://check.torproject.org/torbulkexitlist" \
  | awk '/^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$/' \
  | sort -u > "$TMP_FILE"

# Простейшая валидация
COUNT="$(wc -l < "$TMP_FILE" | tr -d ' ')"
if [[ "${COUNT}" -lt 50 ]]; then
  echo "Too few entries (${COUNT}), aborting to avoid bad publish."
  exit 1
fi

mv "$TMP_FILE" "$OUT_FILE"
echo "Updated ${OUT_FILE}, entries=${COUNT}"
