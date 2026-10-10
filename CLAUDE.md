# diff-bench — context

Single-file web tool (`index.html`, no build) to compare two code snippets / API responses like VS Code's diff view, with beautify and syntax-error reporting.

- Repo: private `virendra08/diff-bench` (created by `./publish.sh` on first run).
- Also published as a Claude artifact: https://claude.ai/artifact/15pcZ1zBjquz4ytQEG3nBg
- Libraries come from CDNs (jsdiff 5.2.0, highlight.js 11.9.0, Prettier 3.3.3 loaded on demand) → needs internet when opened.
- JSON validation/formatting uses the custom parser inside `index.html` (`parseJSON` / `printJSON`); other languages use Prettier; XML uses DOMParser.
- Task context: `~/iOS/Context/tasks/diff-bench.md`.
