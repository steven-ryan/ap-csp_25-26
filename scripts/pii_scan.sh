#!/usr/bin/env bash
set -euo pipefail
echo "Scanning for potential PII (emails, phone numbers, actual join codes/AP IDs)…"

# Exclude common dirs and this script itself
exclude=(
  --hidden --glob=!node_modules --glob=!.git
  --glob=!AP-Private --glob=!screenshots --glob=!student-submissions/**/assets
  --glob=!scripts/pii_scan.sh
)

# Only flag when a value is present after a label like "Join code:" or "AP ID:"
patterns=(
  # Emails
  '[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}'
  # Phone-like numbers (10+ digits with separators)
  '(?i)(\+?\d[ )-]?){10,}'
  # Join code: require a colon and an uppercase/alnum token (6+)
  '(?i)\bjoin\s+codes?\s*:\s*[A-Z0-9-]{6,}\b'
  # AP ID: require a colon and 6–10 digits
  '(?i)\bAP[ _-]?ID\s*:\s*\d{6,10}\b'
)

found=0
for p in "${patterns[@]}"; do
  if rg -n "${exclude[@]}" -e "$p" .; then found=1; fi
done

if (( found != 0 )); then
  echo "Potential PII found. Move private info to AP-Private/ or redact."
  exit 1
fi
echo "No PII matches."