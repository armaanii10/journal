#!/bin/bash

echo "🚀 Building and Deploying Journal..."

# Create dist directory
mkdir -p dist

# Copy main files
echo "📁 Copying files..."
cp index.html dist/
cp -r data dist/ 2>/dev/null || echo "ℹ️  No data directory found"

# Optional: Minify HTML (if html-minifier is installed)
if command -v html-minifier &> /dev/null; then
    echo "🗜️  Minifying HTML..."
    html-minifier --remove-comments --collapse-whitespace --minify-css --minify-js index.html -o dist/index.html
fi

# Git operations
echo "📝 Committing changes..."
git add .
git commit -m "Deploy journal - $(date '+%Y-%m-%d %H:%M:%S')" || echo "ℹ️  No changes to commit"

echo "🌐 Pushing to GitHub..."
git push origin main

echo "✅ Deployment complete!"
echo "🔗 Your journal will be live at: https://armaanii10.github.io/journal/"
echo "⏱️  GitHub Pages typically takes 1-5 minutes to update"

