# Diff Bench

A single-page code compare tool, like VS Code's "Compare" view, for checking two versions of code or two API responses side by side.

## Features
- **Side-by-side or inline diff** with word-level highlights inside changed lines, folded unchanged regions, and next/previous change navigation (`F7` / `Shift+F7`).
- **Beautify** JSON, JavaScript, TypeScript, HTML, XML, CSS, SCSS, YAML and Markdown (2 spaces, 4 spaces or tabs). Optional JSON key sorting so reordered responses line up.
- **Syntax errors** for invalid input: line and column, a plain-language message (trailing comma, missing quote, unclosed bracket…), the bad line highlighted, and a "Go to error" button. Beautify refuses invalid input.
- Language auto-detect, ignore-whitespace mode, open or drag-and-drop files, light/dark theme, remembers your last input in the browser.

## Run it
No build step. Open `index.html` in a browser.

To host it: GitHub repo → Settings → Pages → Deploy from a branch → `main` / `(root)`.

## Built with
- [jsdiff](https://github.com/kpdecker/jsdiff) for the line and word diff
- [Prettier](https://prettier.io) (standalone, loaded on demand) for formatting and syntax checks
- [highlight.js](https://highlightjs.org) for syntax colouring
- A hand-written strict JSON parser that reports exact error positions and keeps big numbers intact
