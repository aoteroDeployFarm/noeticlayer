#!/usr/bin/env bash

set -euo pipefail

# ============================================================
# NoeticLayer Foundation Initialization
# ------------------------------------------------------------
# Creates:
# - foundational philosophy document
# - canonical transition essay
#
# Philosophy:
# - explicit operational lineage
# - observable repository evolution
# - calm infrastructure mutation
# ============================================================

echo ""
echo "Initializing NoeticLayer foundational documents..."
echo ""

# ------------------------------------------------------------
# Create Operational Calm philosophy document
# ------------------------------------------------------------

cat > philosophy/operational-calm.md <<'EOF'
# Operational Calm

Operational Calm is a systems philosophy for building governed cognition infrastructure.

The goal is not maximal autonomy.

The goal is durable, observable, and explainable systems that remain understandable under operational pressure.

Operational Calm favors:

- explicit orchestration
- deterministic infrastructure
- bounded cognition
- observable execution
- reversible system mutation
- governed retrieval
- composable tooling

Over time, AI systems are becoming operational infrastructure rather than isolated applications.

As that transition accelerates, complexity management becomes more important than orchestration novelty.

Operational Calm exists to keep infrastructure understandable as cognition systems evolve.
EOF

echo "Created philosophy/operational-calm.md"

# ------------------------------------------------------------
# Create canonical transition essay
# ------------------------------------------------------------

cat > essays/ai-agents-changed-the-conversation.md <<'EOF'
# AI Agents Changed the Conversation

## I Realized I Had to Rebuild My Infrastructure

For the last two years, most AI systems were built around prompts.

Input → response → output.

That architecture worked when AI behaved like a tool.

But agents changed the model completely.

Now AI systems:
- call tools
- maintain memory
- orchestrate workflows
- interact with APIs
- chain reasoning across systems
- execute tasks autonomously

That changes the infrastructure requirements underneath everything.

And honestly?

It forced me to rethink how I was building.

---

The future is no longer about a single model.

It is about interoperable orchestration.

The model becomes replaceable.

The infrastructure becomes the asset.
EOF

echo "Created essays/ai-agents-changed-the-conversation.md"

# ------------------------------------------------------------
# Final output
# ------------------------------------------------------------

echo ""
echo "NoeticLayer foundational layer initialized."
echo ""
echo "Created:"
echo " - philosophy/operational-calm.md"
echo " - essays/ai-agents-changed-the-conversation.md"
echo ""
echo "Operational lineage preserved."
echo ""