# Agent Guide

This repository hosts a GitHub Pages site built with Jekyll and the Cayman theme. Use this guide when making changes.

## Project overview
- Jekyll site source is in the root, with content in `docs/` and templates in `_layouts/` and `_includes/`.
- Styles live in `assets/css/style.scss` and `_sass/`.
- Generated output is in `_site/` (do not edit manually).

## Common tasks
### Update content pages
- Edit Markdown files in `docs/`.
- If a page needs a table layout, check `_includes/fancy-tables.liquid` and `_includes/capturehtml.liquid`.

### Update styles
- Prefer editing `assets/css/style.scss` and `_sass/*.scss`.
- Run the Jekyll build if you need local preview output.

### Data updates
- `assets/list.json` is used to populate tables and docs.
- If you modify `assets/list.json`, validate rendered tables in `docs/`.

## Build & preview
- Jekyll uses the configuration in `_config.yml`.
- Scripts are in `script/` (PowerShell and shell helpers).

## Conventions
- Keep edits in source files, not in `_site/`.
- Preserve existing formatting and front matter in Markdown files.
- Prefer small, focused changes.

## Key files
- `index.md`
- `_config.yml`
- `_layouts/default.html`
- `_includes/*.liquid`
- `assets/css/style.scss`
- `assets/list.json`
- `docs/*.md`
