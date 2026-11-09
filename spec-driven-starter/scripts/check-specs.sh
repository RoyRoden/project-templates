#!/usr/bin/env bash
# Validates that required spec directories exist and JSON Schema files are valid JSON.
set -e

REQUIRED_DIRS=(
  "specs/product"
  "specs/api"
  "specs/schemas"
  "specs/acceptance"
)

ERRORS=0

for dir in "${REQUIRED_DIRS[@]}"; do
  if [ ! -d "$dir" ]; then
    echo "MISSING: $dir"
    ERRORS=$((ERRORS + 1))
  else
    echo "OK:      $dir"
  fi
done

if [ -f specs/STATUS.md ]; then
  echo "OK:      specs/STATUS.md"
else
  echo "MISSING: specs/STATUS.md (copy it from spec-driven-starter)"
  ERRORS=$((ERRORS + 1))
fi

for f in specs/schemas/*.json; do
  [ -e "$f" ] || continue
  if python3 -c "import json, sys; json.load(open('$f'))" 2>/dev/null; then
    echo "OK:      $f (valid JSON)"
  else
    echo "INVALID: $f (not valid JSON)"
    ERRORS=$((ERRORS + 1))
  fi
done

if [ "$ERRORS" -gt 0 ]; then
  echo ""
  echo "check-specs: $ERRORS error(s) found."
  exit 1
else
  echo ""
  echo "check-specs: all checks passed."
fi
