# meridian-algo-string-scope

`meridian-algo-string-scope` is a OCaml project in algorithms. Its focus is to package an OCaml local lab for string analysis with negative fixtures, human-readable error snapshots, and documented operating limits.

## Why I Keep It Small

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Meridian Algo String Scope Review Notes

For a quick review, compare `input width` with `boundary pressure` before reading the middle cases.

## Included Behavior

- `fixtures/domain_review.csv` adds cases for input width and search depth.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/meridian-algo-string-walkthrough.md` walks through the case spread.
- The OCaml code includes a review path for `input width` and `boundary pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Internal Model

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The OCaml implementation avoids hidden state so fixture changes are easy to reason about.

## Try It Locally

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Validation

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Scope

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
