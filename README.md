# TFGrid Install Website

The official installation website for TFGrid Compose. Provides a beautiful, simple interface for users to install TFGrid Compose with a single command. Built with Astro and deployed to GitHub Pages.

## 🌐 Live Website

Visit [install.tfgrid.studio](https://install.tfgrid.studio) to install TFGrid Compose.

## 🚀 Features

- **One-Click Installation**: Simple copy-paste installation command
- **Copy to Clipboard**: Easy copying of the install command with visual feedback
- **Responsive Design**: Works beautifully on desktop and mobile
- **Ecosystem Overview**: Links to all TFGrid Studio services
- **Fast & Lightweight**: Static site with excellent performance

## 🛠️ Technology Stack

- **Framework**: [Astro](https://astro.build/) - Modern web framework
- **Styling**: [Tailwind CSS](https://tailwindcss.com/) - Utility-first CSS
- **Icons**: Custom SVG icons
- **Deployment**: GitHub Pages with automated CI/CD

## 📁 Project Structure

```
tfgrid-install/
├── public/                         # Static assets
│   ├── favicon.svg                # Site favicon
│   └── CNAME                      # Custom domain configuration
├── src/
│   └── pages/
│       └── index.astro           # Main install page
├── astro.config.mjs              # Astro configuration
├── tailwind.config.mjs           # Tailwind configuration
├── package.json                  # Dependencies and scripts
├── install.sh                    # The actual install script
└── README.md                     # This file
```

## 🏃‍♂️ Development

### Prerequisites

- Node.js 18+
- npm or yarn

### Local Development

1. **Clone the repository:**
   ```bash
   git clone https://github.com/tfgrid-studio/tfgrid-install.git
   cd tfgrid-install
   ```

2. **Install dependencies:**
   ```bash
   npm install
   ```

3. **Start development server:**
   ```bash
   npm run dev
   ```

4. **Open your browser** to `http://localhost:4321`

The development server supports hot reloading - changes will be reflected immediately.

### Build for Production

```bash
npm run build
```

This creates a `dist/` directory with the production build.

### Preview Production Build

```bash
npm run preview
```

Serves the production build locally for testing.

## 🚀 Deployment

### Automatic Deployment

The website is automatically deployed to GitHub Pages when changes are pushed to the `main` branch via GitHub Actions.

### Manual Deployment

```bash
# Build the site
npm run build

# The dist/ folder contains the built site ready for deployment
```

## 🔧 Configuration

### Custom Domain

The site is configured to deploy to `install.tfgrid.studio` via the `public/CNAME` file.

## 🎨 Design

The site features a beautiful purple gradient background with glassmorphism effects, using the TFGrid Studio brand colors.

- **Background**: Purple to indigo gradient
- **Accent Colors**: Indigo and purple tones
- **Typography**: Clean, modern fonts
- **Effects**: Backdrop blur and subtle animations

## 📊 Installation Command

The site provides the following installation command:

```bash
curl -sSL install.tfgrid.studio/install.sh | sh
```

This command:
- Downloads the install script from `install.tfgrid.studio`
- Pipes it to bash for execution
- Installs TFGrid Compose system-wide

## 🔗 Ecosystem Links

The site provides quick access to:
- **TFGrid Studio**: Main website ([tfgrid.studio](https://tfgrid.studio))
- **Registry**: Browse available tools ([registry.tfgrid.studio](https://registry.tfgrid.studio))
- **Documentation**: Guides and references ([docs.tfgrid.studio](https://docs.tfgrid.studio))

## 🤝 Contributing

### Code Contributions

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/new-feature`
3. Make your changes
4. Test locally: `npm run dev`
5. Commit and push your changes
6. Submit a pull request

### Content Updates

- Ensure the installation command remains accurate
- Keep ecosystem links up to date
- Maintain responsive design across all devices

## 📈 Performance

- **Lighthouse Score**: Targets 90+ on all metrics
- **Bundle Size**: Optimized with Astro's built-in optimizations
- **Loading Speed**: Fast initial page loads with minimal JavaScript

## 🐛 Troubleshooting

### Common Issues

**Build fails:**
```bash
# Clear cache and reinstall
rm -rf node_modules package-lock.json
npm install
```

### Getting Help

- **Issues**: [GitHub Issues](https://github.com/tfgrid-studio/tfgrid-install/issues)
- **Documentation**: [docs.tfgrid.studio](https://docs.tfgrid.studio)

## 📄 License

Licensed under the Apache License 2.0. See [LICENSE](../LICENSE) for details.

---

**Ready to install TFGrid Compose?** Visit [install.tfgrid.studio](https://install.tfgrid.studio) or run the command above!
