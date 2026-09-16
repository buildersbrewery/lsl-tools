# Upstream watch — secondlife/lsl-definitions

The Builders Brewery GitHub account watches Linden Lab's official language repo:

https://github.com/secondlife/lsl-definitions

That is why the GitHub mobile **Inbox** shows `secondlife / lsl-definitions` threads. Those messages are not Builders Brewery mail. They are notices from the official source of truth.

We do **not** have write access there. We read, then decide whether our practice pages need a sentence.

## Inbox items from 15 September 2026

Seen in the GitHub app (Focused / Unread on the official repo):

| Item | Status | Meaning for BB students |
|---|---|---|
| [Issue 22](https://github.com/secondlife/lsl-definitions/issues/22) Events are missing their IDs | Closed 12 Sep 2026 | Compiler/tooling detail. Event *names* students use did not change. |
| [PR 194](https://github.com/secondlife/lsl-definitions/pull/194) Assign event IDs, output builtins.txt in event order | Merged | Same. Helps LSL compilers stay compatible. |
| [PR 193](https://github.com/secondlife/lsl-definitions/pull/193) Export JsonOptions types | Merged | Typechecker nicety for `lljson` options. Our practice scripts already use `lljson.encode` / `decode`. |
| [PR / issue 192](https://github.com/secondlife/lsl-definitions/pull/192) Deprecate `ll.IntegerToBase64` | Merged into v0.7.0 | **Student-facing.** Prefer `llbase64.encode` in new SLua work. |
| Release [v0.7.0](https://github.com/secondlife/lsl-definitions/releases/tag/v0.7.0) (12 Sep 2026) | Published | Bundles the above plus Luau math constants, `const`, the `integer` library, and related docs. |

## What we tell students

- Keep writing `LLEvents:on("touch_start", ...)` and friends. Event IDs are for compilers, not classroom scripts.
- New SLua work should use `llbase64` instead of `ll.IntegerToBase64`.
- `math` constants in Luau are the direction of travel if an old LSL math constant starts looking deprecated in official data.
- Official pages still win: https://create.secondlife.com/script/

## What we do not do

- Do not open drive-by comments on Linden's repo from the BB account unless staff asked for a specific reply.
- Do not copy Linden's YAML into a hand-edited second list. Regenerate from official files.
