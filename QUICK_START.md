# Quick Start Guide

## Prerequisites

- Node.js 14+ and npm 6+
- Angular CLI 13+
- Git

## Installation

1. **Clone the repository**
   ```bash
   git clone <your-repository-url>
   cd angular-module-federation-mfe
   ```

2. **Install dependencies**
   ```bash
   npm run install:all
   ```

3. **Start development servers**
   ```bash
   npm start
   ```

This will start both applications:
- Shell App: http://localhost:4200
- Feature1 App: http://localhost:5000

## Available Scripts

- `npm start` - Start all applications in development mode
- `npm run build` - Build all applications for production
- `npm test` - Run tests for all applications
- `npm run lint` - Lint all applications
- `npm run setup` - Run the setup script to customize the project

## Next Steps

1. Open http://localhost:4200 in your browser
2. Navigate through the application to see the micro-frontend in action
3. Check the `README.md` for detailed documentation
4. Customize the project using `npm run setup`

## Troubleshooting

If you encounter any issues:

1. Make sure all dependencies are installed: `npm run install:all`
2. Clear cache and reinstall: `npm run clean && npm run install:all`
3. Check the ports 4200 and 5000 are available
4. Refer to the main README.md for detailed troubleshooting
