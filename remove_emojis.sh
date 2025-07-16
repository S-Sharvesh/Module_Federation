#!/bin/bash

# Script to remove all emojis from project files
echo "Removing emojis from project files..."

# List of files to process
files=(
    "./setup.sh"
    "./CHANGELOG.md"
    "./README.md"
    "./CONTRIBUTING.md"
    "./GITHUB_READY.md" 
    "./QUICK_START.md"
    "./SECURITY.md"
    "./.github/workflows/ci-cd.yml"
    "./.github/pull_request_template.md"
    "./.github/ISSUE_TEMPLATE/feature_request.md"
    "./.github/ISSUE_TEMPLATE/bug_report.md"
    "./.github/ISSUE_TEMPLATE/question.md"
    "./shell-app/src/app/app.component.html"
    "./shell-app/src/app/error-page/error-page.component.html"
    "./feature1-app/src/app/app.component.html"
    "./feature1-app/src/app/mfe1/mfe1.component.html"
)

# Comprehensive list of emojis to remove
emoji_pattern='s/🚀//g; s/🎯//g; s/✅//g; s/🏗️//g; s/📋//g; s/📝//g; s/⭐//g; s/💡//g; s/🔧//g; s/⚠️//g; s/🔍//g; s/📚//g; s/🌟//g; s/⚡//g; s/🛡️//g; s/🎉//g; s/📊//g; s/🔄//g; s/💻//g; s/📱//g; s/🌐//g; s/🎨//g; s/🔥//g; s/💪//g; s/🚨//g; s/📢//g; s/🎊//g; s/✨//g; s/🌈//g; s/🔗//g; s/💼//g; s/📦//g; s/🎭//g; s/🏆//g; s/👨‍💻//g; s/⚙️//g; s/♻️//g; s/❓//g; s/❌//g; s/⏱️//g; s/⚖️//g; s/❗//g'

# Process each file
for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        echo "Processing: $file"
        sed -i '' "$emoji_pattern" "$file"
    else
        echo "File not found: $file"
    fi
done

echo "Emoji removal complete!"
