#!/usr/bin/env bash
set -euo pipefail

bash -n build-wwiv.sh clone-wwiv.sh entrypoint.sh install-wwiv.sh patch-wwiv.sh
python3 - <<'PY'
from pathlib import Path

for path in ("Dockerfile", "Dockerfile-Slim"):
    text = Path(path).read_text(encoding="utf-8")
    if "FROM " not in text:
        raise SystemExit(f"{path} is missing a FROM instruction")
    if "git_revision" in text:
        raise SystemExit(f"{path} references obsolete git_revision build argument")
print("Dockerfile and shell syntax checks passed")
PY
