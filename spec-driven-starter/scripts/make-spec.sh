#!/usr/bin/env bash
# Scaffolds a new spec set from templates.
# Usage: ./scripts/make-spec.sh <feature-name>
# Example: ./scripts/make-spec.sh user-authentication
set -e

if [ -z "$1" ]; then
  echo "Usage: $0 <feature-name>"
  echo "Example: $0 user-authentication"
  exit 1
fi

FEATURE="$1"
DATE=$(date +%Y-%m-%d)

PRODUCT="specs/product/${FEATURE}.md"
ACCEPTANCE="specs/acceptance/${FEATURE}.md"

if [ -f "$PRODUCT" ]; then
  echo "Already exists: $PRODUCT"
  exit 1
fi

sed "s/\[Feature Name\]/${FEATURE}/g; s/YYYY-MM-DD/${DATE}/g" \
  specs/product/_template.md > "$PRODUCT"

sed "s/\[Feature Name\]/${FEATURE}/g; s/\[feature-name\]/${FEATURE}/g" \
  specs/acceptance/_template.md > "$ACCEPTANCE"

echo "Created: $PRODUCT"
echo "Created: $ACCEPTANCE"
echo ""
echo "Next: fill in intent, scope, and behavior in $PRODUCT"
