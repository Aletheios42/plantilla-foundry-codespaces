#!/usr/bin/env bash
set -euo pipefail
curl -L https://foundry.paradigm.xyz | bash
foundryup

[ -d contracts ] || forge init contracts
[ -d frontend ] || { npm create vite@latest frontend -- --template vanilla --no-interactive; (cd frontend && npm i && npm i ethers@^6); }

cat > contracts/foundry.toml <<'TOML'
[profile.default]
src = "src"
out = "out"
libs = ["lib"]

[rpc_endpoints]
sepolia = "${SEPOLIA_RPC_URL}"
TOML

forge --version; cast --version; anvil --version
(cd contracts && forge test)
