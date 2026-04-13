#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="/Users/jihyeon/Desktop/blog-obsidian"
CONTENT_DIR="$REPO_ROOT/content/posts"
IMAGE_DIR="$REPO_ROOT/public/images"

usage() {
  echo "Usage: $0 <source-note.md> [asset-dir]"
  echo "Example: $0 \"/path/to/ObsidianVault/04 Posts/my-post.md\" \"/path/to/assets/my-post\""
}

if [ "$#" -lt 1 ] || [ "$#" -gt 2 ]; then
  usage
  exit 1
fi

SOURCE_NOTE="$1"
ASSET_SOURCE="${2:-}"

if [ ! -f "$SOURCE_NOTE" ]; then
  echo "Source note not found: $SOURCE_NOTE" >&2
  exit 1
fi

mkdir -p "$CONTENT_DIR" "$IMAGE_DIR"
cp "$SOURCE_NOTE" "$CONTENT_DIR/$(basename "$SOURCE_NOTE")"

echo "Copied note to $CONTENT_DIR/$(basename "$SOURCE_NOTE")"

if [ -n "$ASSET_SOURCE" ]; then
  if [ ! -d "$ASSET_SOURCE" ]; then
    echo "Asset directory not found: $ASSET_SOURCE" >&2
    exit 1
  fi

  TARGET_ASSET_DIR="$IMAGE_DIR/$(basename "$ASSET_SOURCE")"
  rm -rf "$TARGET_ASSET_DIR"
  mkdir -p "$TARGET_ASSET_DIR"
  cp -R "$ASSET_SOURCE"/. "$TARGET_ASSET_DIR/"
  echo "Copied assets to $TARGET_ASSET_DIR"
fi
