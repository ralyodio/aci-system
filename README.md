# aci-system

Lean 4 formalizations for the ACI system, built against Mathlib.

| File | What it proves |
| --- | --- |
| `MyProject.lean` | A clamped linear update on ℚ²¹ is a contraction (k = 0.85) and every trajectory converges to 0 |
| `AntaresCategory.lean` | System transitions compose into a category (identity and associativity laws) |
| `Manifold21.lean` | The 21-domain registry and the unification/closure checks |
| `AWM21.lean` | Axiom, governance and state structures for AWM21 |
| `PhysicsCore.lean` | Lawson criterion check and triple-product positivity |
| `Optimus7.lean` | Density operators under projective measurement. **Not built yet**: it needs porting to the current Mathlib API |

## Build

Install [elan](https://github.com/leanprover/elan), then:

```sh
./mathlib_setup.sh   # lake exe cache get && lake build
```

The toolchain is pinned in `lean-toolchain` and Mathlib in `lake-manifest.json`.
`lake exe cache get` downloads prebuilt Mathlib, so the build takes a few minutes
instead of hours.

`aci_phase3.py` runs `lake env lean MyProject.lean` and records the result in
`aci_knowledge_state.json`.
