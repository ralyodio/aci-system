#!/usr/bin/env bash
# Fetch prebuilt Mathlib and build every library in this project.
# Needs elan: https://github.com/leanprover/elan
set -euo pipefail
cd "$(dirname "$0")"

lake exe cache get
lake build
