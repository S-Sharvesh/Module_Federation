# Security Policy

## Supported Versions

We provide security updates for the following versions:

| Version | Supported          |
| ------- | ------------------ |
| 1.x.x   | :white_check_mark: |
| < 1.0   | :x:                |

## Reporting a Vulnerability

We take security seriously. If you discover a security vulnerability, please follow these steps:

### 🔒 Private Disclosure

**DO NOT** open a public GitHub issue for security vulnerabilities.

Instead, please report security vulnerabilities by:

1. **Email**: Send details to [your-email@domain.com] (replace with your email)
2. **Include**:
   - Description of the vulnerability
   - Steps to reproduce
   - Potential impact
   - Any suggested fixes (if you have them)

### 📋 What to Include

- **Clear description** of the vulnerability
- **Steps to reproduce** the issue
- **Versions affected**
- **Potential impact** and severity
- **Any relevant logs** or screenshots
- **Your contact information** for follow-up

### ⏱️ Response Timeline

- **Acknowledgment**: Within 24 hours
- **Initial assessment**: Within 72 hours
- **Resolution timeline**: Depends on severity and complexity

### 🛡️ Security Best Practices

When using this template, consider these security practices:

#### For Development

- **Keep dependencies updated**: Regularly run `npm audit` and update packages
- **Use environment variables**: Never commit sensitive data like API keys
- **Validate inputs**: Always validate data from remote sources
- **Use HTTPS**: Ensure all remote module federation URLs use HTTPS in production

#### For Deployment

- **Content Security Policy**: Configure proper CSP headers
- **CORS Configuration**: Set appropriate CORS policies for your micro-frontends
- **Authentication**: Implement proper authentication across all micro-frontends
- **Monitoring**: Set up security monitoring and logging

#### Module Federation Security

- **Trusted Sources**: Only load micro-frontends from trusted domains
- **Runtime Validation**: Validate loaded modules before execution
- **Error Boundaries**: Implement proper error handling to prevent crashes
- **Isolation**: Ensure proper isolation between micro-frontends

### 🔧 Security Configuration Examples

#### Environment Variables (.env)

```bash
# Example - DO NOT commit real values
API_URL=https://api.yourdomain.com
MFE_REMOTE_URL=https://mfe.yourdomain.com
AUTH_SECRET=your-secret-key
```

#### Content Security Policy

```html
<meta
  http-equiv="Content-Security-Policy"
  content="default-src 'self'; 
               script-src 'self' https://trusted-domain.com; 
               style-src 'self' 'unsafe-inline';"
/>
```

#### CORS Configuration

```javascript
// Express.js example
app.use(
  cors({
    origin: ["https://yourdomain.com", "https://mfe.yourdomain.com"],
    credentials: true,
  })
);
```

### 🚨 Known Security Considerations

1. **Module Federation Risks**

   - Remote modules execute in the same context as the shell
   - Malicious remotes can access the entire application scope
   - Always load remotes from trusted sources

2. **Cross-Origin Resource Sharing**

   - Configure CORS properly to prevent unauthorized access
   - Use allowlists for trusted domains

3. **State Management**
   - Be careful with shared state between micro-frontends
   - Sanitize data passed between applications

### 📚 Security Resources

- [OWASP Top 10](https://owasp.org/www-project-top-ten/)
- [Angular Security Guide](https://angular.io/guide/security)
- [Module Federation Security Best Practices](https://webpack.js.org/concepts/module-federation/)

### 🏆 Security Champions

We appreciate security researchers and contributors who help keep our project safe:

- Report responsibly
- Work with us on fixes
- Get recognized in our security acknowledgments

### 📝 Security Updates

Security updates will be:

- **Released promptly** for critical issues
- **Documented** in release notes
- **Communicated** via GitHub releases and security advisories

### ⚖️ Responsible Disclosure

We follow responsible disclosure practices:

- **90-day disclosure timeline** for non-critical issues
- **Immediate disclosure** for critical vulnerabilities after fixes are available
- **Coordination** with security researchers on disclosure timing

---

Thank you for helping keep our project and community safe! 🔒
