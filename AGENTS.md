# Agent Notes

## Scope

This repository builds a WWIV BBS container image. Keep routine stewardship work focused on docs, validation, and Docker/script correctness.

## Validation

Run:

```bash
./scripts/validate.sh
```

The default validation path checks shell syntax and Dockerfile shape without cloning WWIV or building the full image.

## Conventions

- Do not run expensive full Docker builds during routine health slices unless explicitly needed.
- Keep `git_branch` and `git_refspec` Docker build arguments aligned with `clone-wwiv.sh`.
- Do not commit generated image artifacts or BBS runtime data.
