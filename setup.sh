#!/bin/bash

# Angular Micro-frontend Template Setup Script
echo "🚀 Welcome to Angular Micro-frontend Template Setup!"
echo "This script will help you customize the template for your project."
echo ""

# Check if we're on macOS or Linux for sed compatibility
if [[ "$OSTYPE" == "darwin"* ]]; then
    SED_INPLACE="sed -i ''"
else
    SED_INPLACE="sed -i"
fi

# Get user input with validation
while [[ -z "$PROJECT_NAME" ]]; do
    read -p "Enter your project name: " PROJECT_NAME
    if [[ -z "$PROJECT_NAME" ]]; then
        echo "Project name cannot be empty. Please try again."
    fi
done

while [[ -z "$AUTHOR_NAME" ]]; do
    read -p "Enter your name/organization: " AUTHOR_NAME
    if [[ -z "$AUTHOR_NAME" ]]; then
        echo "Author name cannot be empty. Please try again."
    fi
done

while [[ -z "$GITHUB_USERNAME" ]]; do
    read -p "Enter your GitHub username: " GITHUB_USERNAME
    if [[ -z "$GITHUB_USERNAME" ]]; then
        echo "GitHub username cannot be empty. Please try again."
    fi
done

read -p "Enter repository name (or press Enter to use project name): " REPO_NAME

# Set default repo name if not provided
if [[ -z "$REPO_NAME" ]]; then
    REPO_NAME=$(echo "$PROJECT_NAME" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')
fi

echo ""
echo "📝 Updating project files..."

# Function to safely update files
update_file() {
    local file="$1"
    local search="$2"
    local replace="$3"
    
    if [[ -f "$file" ]]; then
        if [[ "$OSTYPE" == "darwin"* ]]; then
            sed -i '' "s|$search|$replace|g" "$file"
        else
            sed -i "s|$search|$replace|g" "$file"
        fi
        echo "  ✓ Updated $file"
    else
        echo "  ⚠ Warning: $file not found"
    fi
}

# Update root package.json
update_file "package.json" "\[Your Name\]" "$AUTHOR_NAME"
update_file "package.json" "yourusername" "$GITHUB_USERNAME"
update_file "package.json" "angular-microfrontend-template" "$REPO_NAME"

# Update shell-app package.json
update_file "shell-app/package.json" "\[Your Name\]" "$AUTHOR_NAME"

# Update feature1-app package.json
update_file "feature1-app/package.json" "\[Your Name\]" "$AUTHOR_NAME"

# Update LICENSE
current_year=$(date +%Y)
update_file "LICENSE" "\[Year\]" "$current_year"
update_file "LICENSE" "\[Your Name\]" "$AUTHOR_NAME"

# Update README
update_file "README.md" "Angular Micro-frontend Template" "$PROJECT_NAME"
update_file "README.md" "\[your-username\]" "$GITHUB_USERNAME"
update_file "README.md" "\[your-repo-name\]" "$REPO_NAME"

# Update package.json files
update_file "package.json" "angular-microfrontend-template" "$REPO_NAME"
update_file "package.json" "\[your-username\]" "$GITHUB_USERNAME"
update_file "package.json" "\[your-repo-name\]" "$REPO_NAME"

echo ""
echo "✅ Project setup complete!"
echo ""
echo "📋 Summary:"
echo "  Project Name: $PROJECT_NAME"
echo "  Author: $AUTHOR_NAME"
echo "  GitHub Username: $GITHUB_USERNAME"
echo "  Repository Name: $REPO_NAME"
echo ""
echo "🎯 Next steps:"
echo "  1. Run 'npm run install:all' to install dependencies"
echo "  2. Run 'npm start' to start development servers"
echo "  3. Start building your micro-frontend architecture!"
echo ""
echo "📚 All documentation is in README.md"
echo ""
echo "🔗 URLs after starting:"
echo "  • Shell App: http://localhost:4200"
echo "  • Feature1 App: http://localhost:5000"
echo ""
echo "Happy coding! 🎉"
