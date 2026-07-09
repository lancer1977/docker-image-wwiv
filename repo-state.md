# Repo State

Last reviewed: 2026-07-03

## Status

docker-image-wwiv is a Docker image project for running a WWIV BBS in a container.

## Validation

- `./scripts/validate.sh`
- GitHub Actions runs the same script on `ubuntu-latest`.

## Steward Notes

- Documentation spine restored.
- Existing validation script preserved and extended to catch stale Docker build argument references.
- `Dockerfile` now passes `git_refspec` to `clone-wwiv.sh`.
