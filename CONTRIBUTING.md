# Contributing to Angular Micro-Frontend Template

We love your input! We want to make contributing to this Angular micro-frontend template as easy and transparent as possible, whether it's:

- Reporting a bug
- Discussing the current state of the code
- Submitting a fix
- Proposing new features
- Becoming a maintainer

## 🚀 Quick Start for Contributors

1. Fork the repository
2. Clone your fork: `git clone https://github.com/[your-username]/[your-repo-name].git`
3. Create a feature branch: `git checkout -b feature/amazing-feature`
4. Install dependencies: `npm run install:all`
5. Make your changes and test them: `npm start`
6. Commit your changes: `git commit -m 'Add some amazing feature'`
7. Push to the branch: `git push origin feature/amazing-feature`
8. Open a Pull Request

## 🐛 Reporting Bugs

**Great Bug Reports** tend to have:

- A quick summary and/or background
- Steps to reproduce
  - Be specific!
  - Give sample code if you can
- What you expected would happen
- What actually happens
- Notes (possibly including why you think this might be happening, or stuff you tried that didn't work)

**Use the bug report template** when creating issues.

## 💡 Suggesting Features

We track feature requests as GitHub issues. When creating a feature request:

- **Use a clear and descriptive title**
- **Provide a detailed description** of the suggested feature
- **Explain why this feature would be useful** to most users
- **List some other projects where this feature exists** (if applicable)

## 📝 Pull Request Process

1. **Update the README.md** with details of changes if applicable
2. **Add tests** for any new functionality
3. **Ensure all tests pass**: `npm test`
4. **Update documentation** for any changed functionality
5. **Follow the coding standards** outlined below
6. **Squash commits** if you have multiple commits for a single feature

### Pull Request Requirements

- [ ] Tests pass locally
- [ ] Code follows the style guidelines
- [ ] Self-review of code completed
- [ ] Documentation updated (if applicable)
- [ ] No merge conflicts

## 🎨 Code Style Guidelines

### TypeScript/Angular Standards

- Follow the [Angular Style Guide](https://angular.io/guide/styleguide)
- Use TypeScript strict mode
- Prefer `const` over `let`, avoid `var`
- Use meaningful variable and function names
- Add type annotations for all function parameters and return types

### File Organization

- Keep components small and focused
- Use barrel exports (`index.ts`) for clean imports
- Group related files in feature folders
- Follow Angular's recommended folder structure

### Naming Conventions

- **Files**: kebab-case (e.g., `my-component.ts`)
- **Classes**: PascalCase (e.g., `MyComponent`)
- **Variables/Functions**: camelCase (e.g., `myVariable`)
- **Constants**: SCREAMING_SNAKE_CASE (e.g., `MY_CONSTANT`)

### Code Formatting

We use Prettier and ESLint. Before committing:

```bash
npm run lint
npm run format  # if available
```

## 🧪 Testing Guidelines

- Write unit tests for all new components and services
- Aim for at least 80% code coverage
- Use meaningful test descriptions
- Mock external dependencies
- Test both success and error scenarios

### Running Tests

```bash
# Run all tests
npm test

# Run tests with coverage
npm run test:coverage

# Run tests in watch mode
npm run test:watch
```

## 📚 Documentation

- Update README.md for significant changes
- Add JSDoc comments for complex functions
- Include code examples in documentation
- Keep documentation up to date with code changes

## 🔧 Development Setup

### Prerequisites

- Node.js 14.x or higher
- npm 6.x or higher
- Git

### Local Development

```bash
# Clone the repository
git clone https://github.com/[your-username]/[your-repo-name].git
cd [your-repo-name]

# Install dependencies
npm run install:all

# Start development servers
npm start

# Run tests
npm test

# Run linting
npm run lint
```

### Project Structure

```
project/
├── shell-app/              # Main container application
├── feature1-app/           # Example micro-frontend
├── package.json            # Root package.json with scripts
├── README.md               # Main documentation
└── setup.sh                # Setup script
```

## 🤝 Community Guidelines

### Be Respectful

- Use welcoming and inclusive language
- Be respectful of differing viewpoints and experiences
- Gracefully accept constructive criticism
- Focus on what is best for the community

### Be Collaborative

- Help others learn and grow
- Share knowledge and resources
- Provide constructive feedback
- Support fellow contributors

## 📄 License

By contributing, you agree that your contributions will be licensed under the MIT License.

## 💬 Getting Help

- **Issues**: For bugs and feature requests
- **Discussions**: For questions and general discussion
- **Email**: For security-related issues (if applicable)

## 🎯 What We're Looking For

We're particularly interested in contributions that:

- Improve documentation and examples
- Add support for more frameworks (React, Vue.js micro-frontends)
- Enhance the development experience
- Add more deployment options
- Improve performance and bundle size
- Add comprehensive testing examples

## 📋 Issue Labels

- `bug`: Something isn't working
- `enhancement`: New feature or request
- `documentation`: Improvements or additions to documentation
- `good first issue`: Good for newcomers
- `help wanted`: Extra attention is needed
- `question`: Further information is requested

## 🏆 Recognition

Contributors will be recognized in:

- README.md contributors section
- Release notes for significant contributions
- GitHub contributors page

Thank you for contributing! 🎉
