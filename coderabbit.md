**Actionable comments posted: 4**

<details>
<summary>🤖 Prompt for all review comments with AI agents</summary>

```
Verify each finding against current code. Fix only still-valid issues, skip the
rest with a brief reason, keep changes minimal, and validate.

Inline comments:
In `@apps/web/components/pages/create-form.tsx`:
- Around line 223-228: Update the field-type change handler using createField so
changing field.type initializes the new type’s defaults, rather than only
replacing type. Preserve shared values such as field.id and field.label while
replacing incompatible type-specific settings, including dropdown options and
rating/number constraints.
- Around line 61-65: Separate the default constraints for rating fields from
generic number fields in the form schema and initialization logic around the
numeric field definitions and creation flow. Make min, max, and step optional or
assign them only when the field represents a rating, so ordinary number inputs
accept values outside 0–5 while rating inputs retain their existing limits.

In `@packages/ui/src/components/snippets/registry.ts`:
- Around line 17-27: Update FormRenderer’s snippetRegistry lookup to narrow
element.type to a valid SnippetType before indexing. Use an appropriate
SnippetType guard or cast, and ensure invalid values continue through the
existing fallback path while valid values resolve from snippetRegistry.

In `@packages/ui/src/components/snippets/types.ts`:
- Line 41: Update NumberInputSnippetProps in
packages/ui/src/components/snippets/types.ts (line 41) to use number | null,
then update the number-input rendering and change handler in
packages/ui/src/components/snippets/number-input-snippet.tsx (lines 3-22) to
render value ?? "" and emit null when e.target.value is empty.
```

</details>

<details>
<summary>🪄 Autofix (Beta)</summary>

Fix all unresolved CodeRabbit comments on this PR:

- [ ] <!-- {"checkboxId": "4b0d0e0a-96d7-4f10-b296-3a18ea78f0b9"} --> Push a commit to this branch (recommended)
- [ ] <!-- {"checkboxId": "ff5b1114-7d8c-49e6-8ac1-43f82af23a33"} --> Create a new PR with the fixes

</details>

---

<details>
<summary>ℹ️ Review info</summary>

<details>
<summary>⚙️ Run configuration</summary>

**Configuration used**: Organization UI

**Review profile**: ASSERTIVE

**Plan**: Pro Plus

**Run ID**: `030830c4-8e42-44b5-94d7-730ca6156d0c`

</details>

<details>
<summary>📥 Commits</summary>

Reviewing files that changed from the base of the PR and between 6bee54430e82f401bf308b9c1623721bc5668703 and 2e40b993070742a919f0b9e9f98ef4a626a7f476.

</details>

<details>
<summary>📒 Files selected for processing (9)</summary>

* `apps/web/components/pages/create-form.tsx`
* `packages/ui/src/components/snippets/date-picker-snippet.tsx`
* `packages/ui/src/components/snippets/heading-snippet.tsx`
* `packages/ui/src/components/snippets/index.ts`
* `packages/ui/src/components/snippets/number-input-snippet.tsx`
* `packages/ui/src/components/snippets/paragraph-snippet.tsx`
* `packages/ui/src/components/snippets/registry.ts`
* `packages/ui/src/components/snippets/textarea-snippet.tsx`
* `packages/ui/src/components/snippets/types.ts`

</details>

<details>
<summary>💤 Files with no reviewable changes (4)</summary>

* packages/ui/src/components/snippets/heading-snippet.tsx
* packages/ui/src/components/snippets/date-picker-snippet.tsx
* packages/ui/src/components/snippets/textarea-snippet.tsx
* packages/ui/src/components/snippets/paragraph-snippet.tsx

</details>

</details>

<details>
<summary>📜 Review details</summary>

<details>
<summary>⏰ Context from checks skipped due to timeout. (1)</summary>

* GitHub Check: Analyze (javascript-typescript)

</details>

<details>
<summary>🧰 Additional context used</summary>

<details>
<summary>🧠 Learnings (1)</summary>

<details>
<summary>📚 Learning: 2026-07-05T05:43:54.329Z</summary>

```
Learnt from: Basharkhan7776
Repo: Openlabsops/Snap-form PR: 82
File: apps/web/app/_components/navbar-hero.tsx:8-43
Timestamp: 2026-07-05T05:43:54.329Z
Learning: In apps/web, prefer using `lucide-react` icon components (imported from `lucide-react`) instead of creating hand-written inline SVG icon components. When you introduce `lucide-react` usage, ensure `apps/web/package.json` includes `lucide-react` (add the dependency if it’s missing) so the code compiles and reviewers can rely on the icon library being available.
```

**Applied to files:**
- `apps/web/components/pages/create-form.tsx`

</details>

</details>

</details>

<details>
<summary>🔇 Additional comments (4)</summary><blockquote>

<details>
<summary>apps/web/components/pages/create-form.tsx (1)</summary><blockquote>

`14-59`: LGTM!



Also applies to: 79-106, 110-222, 229-272, 314-380, 510-520, 617-625

<!-- cr-comment:v1:6a0905952ab2392d9300a77e -->

</blockquote></details>
<details>
<summary>packages/ui/src/components/snippets/types.ts (1)</summary><blockquote>

`14-24`: LGTM!

<!-- cr-comment:v1:b17d022e19c26776b72fad18 -->

</blockquote></details>
<details>
<summary>packages/ui/src/components/snippets/registry.ts (1)</summary><blockquote>

`4-16`: LGTM!



Also applies to: 28-29

<!-- cr-comment:v1:831ea8a619054e2dfb39a4cb -->

</blockquote></details>
<details>
<summary>packages/ui/src/components/snippets/index.ts (1)</summary><blockquote>

`6-6`: LGTM!



Also applies to: 10-10

<!-- cr-comment:v1:fb2e9235591880a98b9254d3 -->

</blockquote></details>

</blockquote></details>

</details>

<!-- This is an auto-generated comment by CodeRabbit for review status -->

1. apps/web/components/pages/create-form.tsx
_🎯 Functional Correctness_ | _🟠 Major_ | _⚡ Quick win_

**Do not apply rating defaults to every number input.**

Every new number field is currently constrained to `0–5`. Make number constraints optional or initialize them separately from the rating limit; otherwise valid negative values and values above five are rejected by default.






Also applies to: 107-109, 273-313

<details>
<summary>🤖 Prompt for AI Agents</summary>

```
Verify each finding against current code. Fix only still-valid issues, skip the
rest with a brief reason, keep changes minimal, and validate.

In `@apps/web/components/pages/create-form.tsx` around lines 61 - 65, Separate the
default constraints for rating fields from generic number fields in the form
schema and initialization logic around the numeric field definitions and
creation flow. Make min, max, and step optional or assign them only when the
field represents a rating, so ordinary number inputs accept values outside 0–5
while rating inputs retain their existing limits.
```

</details>

<!-- fingerprinting:phantom:medusa:sol -->

<!-- cr-indicator-types:potential_issue -->

<!-- cr-comment:v1:674f888795b222e2afe6cece -->

<!-- This is an auto-generated comment by CodeRabbit -->

2. _🎯 Functional Correctness_ | _🟠 Major_ | _⚡ Quick win_

**Initialize settings when the field type changes.**

Only replacing `type` preserves incompatible state. For example, changing text to dropdown produces zero options because the defaults in `createField` are bypassed; rating and number fields also inherit stale constraints. Apply type-specific defaults while preserving shared values such as ID and label.

<details>
<summary>🤖 Prompt for AI Agents</summary>

```
Verify each finding against current code. Fix only still-valid issues, skip the
rest with a brief reason, keep changes minimal, and validate.

In `@apps/web/components/pages/create-form.tsx` around lines 223 - 228, Update the
field-type change handler using createField so changing field.type initializes
the new type’s defaults, rather than only replacing type. Preserve shared values
such as field.id and field.label while replacing incompatible type-specific
settings, including dropdown options and rating/number constraints.
```

</details>

<!-- fingerprinting:phantom:medusa:sol -->

<!-- cr-indicator-types:potential_issue -->

<!-- cr-comment:v1:d17d8628587746d04ffdbd6e -->

<!-- This is an auto-generated comment by CodeRabbit -->

3. _🗄️ Data Integrity & Integration_ | _🔵 Trivial_ | _⚡ Quick win_

<details>
<summary>🧩 Analysis chain</summary>

🏁 Script executed:

```shell
#!/bin/bash
set -eu

renderer="$(fd -a '^form-renderer\.tsx$' packages/ui/src/components/snippets | head -n1)"
test -n "$renderer"

ast-grep outline "$renderer" --items all --view expanded
rg -n -C4 '\bsnippetRegistry\s*\[' packages/ui/src/components/snippets
rg -n -C3 '\b(FormElementType|SnippetType|numberInput)\b' \
  packages/ui/src/components/snippets
```

Repository: Openlabsops/Snap-form

Length of output: 3887

---

🏁 Script executed:

```shell
#!/bin/bash
set -eu

printf '\n-- snippets/types.ts --\n'
cat -n packages/ui/src/components/snippets/types.ts

printf '\n-- shared form types --\n'
rg -n -C3 'type FormDefinition|interface FormDefinition|type FormElementType|interface FormElementType|numberInput|email|dropdown|multipleChoice|checkbox|rating|textInput' packages -g '!**/node_modules/**'

printf '\n-- registry + renderer references --\n'
rg -n -C3 'snippetRegistry\s*\[' packages/ui/src/components/snippets packages -g '!**/node_modules/**'
```

Repository: Openlabsops/Snap-form

Length of output: 50377

---

🏁 Script executed:

```shell
#!/bin/bash
set -eu

printf '\n-- registry.ts --\n'
cat -n packages/ui/src/components/snippets/registry.ts

printf '\n-- form-renderer.tsx --\n'
cat -n packages/ui/src/components/snippets/form-renderer.tsx
```

Repository: Openlabsops/Snap-form

Length of output: 4174

---



</details>

**Narrow `element.type` before indexing `snippetRegistry`** — `FormRenderer` still passes the shared `element.type` through directly, so add a `SnippetType` guard or cast before lookup to keep the registry type and fallback path aligned.

<details>
<summary>🤖 Prompt for AI Agents</summary>

```
Verify each finding against current code. Fix only still-valid issues, skip the
rest with a brief reason, keep changes minimal, and validate.

In `@packages/ui/src/components/snippets/registry.ts` around lines 17 - 27, Update
FormRenderer’s snippetRegistry lookup to narrow element.type to a valid
SnippetType before indexing. Use an appropriate SnippetType guard or cast, and
ensure invalid values continue through the existing fallback path while valid
values resolve from snippetRegistry.
```

</details>

<!-- fingerprinting:phantom:medusa:sol -->

<!-- cr-indicator-types:nitpick -->

<!-- cr-comment:v1:f01a27cf29b7a05c2d86136f -->

<!-- This is an auto-generated comment by CodeRabbit -->

4. _🗄️ Data Integrity & Integration_ | _🟠 Major_ | _⚡ Quick win_

**Model empty number input values explicitly.** The current contract forces blank state into either `0` or `NaN`.

- `packages/ui/src/components/snippets/types.ts#L41-L41`: change the value type to `number | null`.
- `packages/ui/src/components/snippets/number-input-snippet.tsx#L3-L22`: render `value ?? ""` and emit `null` when `e.target.value === ""`.

<details>
<summary>📍 Affects 2 files</summary>

- `packages/ui/src/components/snippets/types.ts#L41-L41` (this comment)
- `packages/ui/src/components/snippets/number-input-snippet.tsx#L3-L22`

</details>

<details>
<summary>🤖 Prompt for AI Agents</summary>

```
Verify each finding against current code. Fix only still-valid issues, skip the
rest with a brief reason, keep changes minimal, and validate.

In `@packages/ui/src/components/snippets/types.ts` at line 41, Update
NumberInputSnippetProps in packages/ui/src/components/snippets/types.ts (line
41) to use number | null, then update the number-input rendering and change
handler in packages/ui/src/components/snippets/number-input-snippet.tsx (lines
3-22) to render value ?? "" and emit null when e.target.value is empty.
```

</details>

<!-- consolidated_sites_start -->
<!--
<consolidated_sites>
<site>
<role>anchor</role>
<file>packages/ui/src/components/snippets/types.ts</file>
<line_range>41-41</line_range>
</site>
<site>
<role>sibling</role>
<file>packages/ui/src/components/snippets/number-input-snippet.tsx</file>
<line_range>3-22</line_range>
</site>
</consolidated_sites>
-->
<!-- consolidated_sites_end -->

<!-- fingerprinting:phantom:medusa:sol -->

<!-- cr-indicator-types:potential_issue -->

<!-- cr-comment:v1:f16346fc54218413b717ce07 -->

<!-- This is an auto-generated comment by CodeRabbit -->