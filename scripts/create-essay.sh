#!/usr/bin/env bash

set -euo pipefail

# ============================================================
# NoeticLayer Essay Creator
# ------------------------------------------------------------
# Creates a canonical essay scaffold inside essays/.
#
# Philosophy:
# - reduce cognitive friction
# - preserve operational lineage
# - keep writing structure calm and repeatable
# ============================================================

ESSAYS_DIR="essays"
AUTHOR="Alex Otero"

echo ""
echo "Create NoeticLayer essay"
echo ""

read -rp "Essay title: " TITLE

if [[ -z "${TITLE}" ]]; then
  echo "Error: essay title is required."
  exit 1
fi

read -rp "Series name (optional): " SERIES
read -rp "Subtitle (optional): " SUBTITLE

DATE="$(date +%Y-%m-%d)"

SLUG="$(echo "$TITLE" \
  | tr '[:upper:]' '[:lower:]' \
  | sed -E 's/[^a-z0-9]+/-/g' \
  | sed -E 's/^-+|-+$//g')"

FILE_PATH="${ESSAYS_DIR}/${SLUG}.md"

if [[ -f "${FILE_PATH}" ]]; then
  echo "Error: essay already exists:"
  echo "${FILE_PATH}"
  exit 1
fi

mkdir -p "${ESSAYS_DIR}"

cat > "${FILE_PATH}" <<EOF
---
title: "${TITLE}"
subtitle: "${SUBTITLE}"
author: "${AUTHOR}"
date: "${DATE}"
series: "${SERIES}"
status: "draft"
---

# ${TITLE}

EOF

if [[ -n "${SUBTITLE}" ]]; then
  cat >> "${FILE_PATH}" <<EOF
## ${SUBTITLE}

EOF
fi

cat >> "${FILE_PATH}" <<'EOF'
## Summary

TODO

---

## Essay

TODO

---

## Key Ideas

- TODO

---

## Notes

- TODO
EOF

echo ""
echo "Essay scaffold created:"
echo "${FILE_PATH}"
echo ""
echo "Next:"
echo "  open ${FILE_PATH}"
echo ""