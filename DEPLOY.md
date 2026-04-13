# Deployment Guide

## Option 1: GitHub Pages

Recommended when you want the simplest free setup.

1. Create an empty GitHub repository named `garden` under `j2h30728`.
2. In the local repo, replace the origin if needed.
3. Push this repo to the `main` branch.
4. In GitHub repository settings, open **Pages** and set **Source** to **GitHub Actions**.
5. The workflow in `.github/workflows/deploy.yml` will publish to:
   - `https://j2h30728.github.io/garden`

If you change the repository name or use a custom domain, update `baseUrl` in `quartz.config.ts`.

## Option 2: Cloudflare Pages

Use this if you want easier custom domain handling.

Build settings:

- Framework preset: `None`
- Build command: `npx quartz build`
- Build output directory: `public`

If Cloudflare Pages uses shallow clone timestamps, change the build command to:

`git fetch --unshallow && npx quartz build`

## Local commands

```bash
cd /Users/jihyeon/Desktop/blog-obsidian
npm run dev
npm run build
```

## Publish from the vault

```bash
/Users/jihyeon/Desktop/blog-obsidian/scripts/publish-note.sh \
  "/Users/jihyeon/Library/CloudStorage/GoogleDrive-rachel2148072@gmail.com/내 드라이브/ObsidianVault/04 Posts/my-post.md"
```

Optional asset folder copy:

```bash
/Users/jihyeon/Desktop/blog-obsidian/scripts/publish-note.sh \
  "/Users/jihyeon/Library/CloudStorage/GoogleDrive-rachel2148072@gmail.com/내 드라이브/ObsidianVault/04 Posts/my-post.md" \
  "/Users/jihyeon/Library/CloudStorage/GoogleDrive-rachel2148072@gmail.com/내 드라이브/ObsidianVault/90 Assets/my-post"
```
