#!/usr/bin/env bash

set -euo pipefail

# ============================================================
# NoeticLayer Bootstrap
# ------------------------------------------------------------
# Initializes the public NoeticLayer repository structure.
#
# Philosophy:
# - explicit over magical
# - observable over hidden
# - composable over complex
# - operational calm over orchestration chaos
# ============================================================

echo ""
echo "Initializing NoeticLayer repository structure..."
echo ""

# ------------------------------------------------------------
# Safety check: run from repo root
# ------------------------------------------------------------

if [[ ! -d ".git" ]]; then
  echo "Warning: .git directory not found."
  echo "Run this script from the root of the noeticlayer repository."
  echo ""
fi

# ------------------------------------------------------------
# Core directories
# ------------------------------------------------------------

DIRECTORIES=(
  "scripts"
  "essays"
  "philosophy"
  "frameworks"
  "diagrams"
  "notes"
)

for dir in "${DIRECTORIES[@]}"; do
  mkdir -p "$dir"
  touch "$dir/.gitkeep"
done

# ------------------------------------------------------------
# README.md
# ------------------------------------------------------------

cat > README.md <<'EOF'
# NoeticLayer

Documenting the transition from AI applications to governed cognition infrastructure.

NoeticLayer explores:

- operational calm
- orchestration governance
- cognition infrastructure
- memory systems
- agent interoperability
- runtime architecture
- portable AI systems

This repository contains essays, frameworks, diagrams, and field notes from rebuilding AI infrastructure in real time.

The focus is not hype or tooling.

The focus is durable systems thinking for the next generation of AI infrastructure.

---

## Repository Structure

```text
essays/       -> Long-form infrastructure essays
philosophy/   -> Core systems thinking and principles
frameworks/   -> Operational and architectural models
diagrams/     -> Visual infrastructure concepts
notes/        -> Short-form field observations
scripts/      -> Explicit operational scaffolding utilities