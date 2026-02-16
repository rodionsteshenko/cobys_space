#!/bin/bash
# Validate blog posts for common issues
# Usage: ./scripts/validate-posts.sh [file.md]

POSTS_DIR="_posts"
IMAGES_DIR="assets/images"
ERRORS=0

validate_post() {
    local file="$1"
    local basename=$(basename "$file")
    
    echo "Checking: $basename"
    
    # Check for broken image syntax: ![text( instead of ![text](
    # Valid: ![alt text](url)
    # Invalid: ![alt text(url) — missing ]
    if grep -qE '!\[[^\]]*\([^)]*\)' "$file" && ! grep -qE '!\[[^\]]*\]\(' "$file"; then
        echo "  ❌ Broken image syntax (missing ] before ()"
        ERRORS=$((ERRORS + 1))
    fi
    
    # Also check for images where ] and ( aren't adjacent
    if grep -qE '!\[.*\][^(]' "$file" | head -1; then
        line=$(grep -nE '!\[.*\][^(]' "$file" | head -1)
        if [[ -n "$line" ]]; then
            echo "  ⚠️  Possible broken image syntax: $line"
        fi
    fi
    
    # Check that referenced images exist
    while IFS= read -r line; do
        img_path=$(echo "$line" | sed -n 's/.*](\({{ site.baseurl }}\)\{0,1\}\([^)]*\)).*/\2/p')
        if [[ -n "$img_path" && "$img_path" != http* ]]; then
            check_path=".${img_path}"
            if [[ ! -f "$check_path" ]]; then
                echo "  ⚠️  Image not found: $img_path"
            fi
        fi
    done < <(grep -E '!\[.*\]\(' "$file")
    
    # Check frontmatter
    if ! head -1 "$file" | grep -q '^---$'; then
        echo "  ❌ Missing frontmatter"
        ERRORS=$((ERRORS + 1))
    fi
    
    # Check for required frontmatter fields
    for field in title date author layout; do
        if ! grep -q "^${field}:" "$file"; then
            echo "  ❌ Missing frontmatter: $field"
            ERRORS=$((ERRORS + 1))
        fi
    done
    
    # Word count
    words=$(wc -w < "$file" | tr -d ' ')
    if [[ $words -gt 1000 ]]; then
        echo "  ⚠️  Long post: $words words (consider trimming)"
    else
        echo "  ✓ $words words"
    fi
    
    echo ""
}

cd "$(dirname "$0")/.." || exit 1

if [[ -n "$1" ]]; then
    validate_post "$1"
else
    for post in "$POSTS_DIR"/*.md; do
        validate_post "$post"
    done
fi

if [[ $ERRORS -gt 0 ]]; then
    echo "Found $ERRORS error(s)"
    exit 1
else
    echo "✅ All posts valid"
fi
