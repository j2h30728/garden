# Start Here

## Vault

Private vault path:

`/Users/jihyeon/Library/CloudStorage/GoogleDrive-rachel2148072@gmail.com/내 드라이브/ObsidianVault`

## Repo

Quartz repo path:

`/Users/jihyeon/Desktop/blog-obsidian`

## Local preview

```bash
cd /Users/jihyeon/Desktop/blog-obsidian
npm run dev
```

Then open <http://localhost:8080>.

## Publish rule

Only move public-ready notes and assets into this repo.

## Files to know

- `quartz.config.ts`: site title, theme, locale, base URL
- `content/posts`: publishable markdown files
- `public/images`: published images
- `scripts/publish-note.sh`: copy a note from the private vault into the public repo
- `DEPLOY.md`: GitHub Pages and Cloudflare Pages setup
