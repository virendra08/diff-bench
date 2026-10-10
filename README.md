# Diff Bench

A single-page code compare tool, like VS Code's "Compare" view, for checking two versions of code or two API responses side by side.

## Features
- **Side-by-side or inline diff** with word-level highlights inside changed lines, folded unchanged regions, and next/previous change navigation (`F7` / `Shift+F7`).
- **Beautify** JSON, JavaScript, TypeScript, HTML, XML, CSS, SCSS, YAML and Markdown (2 spaces, 4 spaces or tabs). Optional JSON key sorting so reordered responses line up.
- **Syntax errors** for invalid input: line and column, a plain-language message (trailing comma, missing quote, unclosed bracket…), the bad line highlighted, and a "Go to error" button. Beautify refuses invalid input.
- **Code folding** like VS Code: chevrons next to each block in the diff, "Fold all" / "Unfold all" (`Alt+[` / `Alt+]`), and a badge showing how many changes sit inside a folded block. Jumping to a change unfolds it.
- **Resizable panels**: drag the divider between Original and Modified (inputs and diff move together), double-click to reset, or use arrow keys on the divider. Editor heights stay in sync, and scrolling can be synced.
- **Auto-match order to Original (JSON)**: when you paste or open JSON, Modified's keys and array items are reordered to follow Original, so only real changes show. Array items are matched by an id-like field (`id`, `sku`, `key`, `name`…); new keys and items stay next to their neighbours. Press Ctrl+Z / Cmd+Z in the pane to undo, or turn it off and use "Match order" on demand.
- Language auto-detect, ignore-whitespace mode, open or drag-and-drop files, light/dark theme, remembers your last input in the browser.

## Run it
No build step. Open `index.html` in a browser (`open index.html` on a Mac). It needs internet the first time to load the libraries from CDNs.

To host it: GitHub repo → Settings → Pages → Deploy from a branch → `main` / `(root)`.

## Built with
- [jsdiff](https://github.com/kpdecker/jsdiff) for the line and word diff
- [Prettier](https://prettier.io) (standalone, loaded on demand) for formatting and syntax checks
- [highlight.js](https://highlightjs.org) for syntax colouring
- A hand-written strict JSON parser that reports exact error positions and keeps big numbers intact
