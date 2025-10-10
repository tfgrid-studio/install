# TFGrid Studio Install

**One-line installer for TFGrid Compose**

This repository hosts the installation script for [TFGrid Compose](https://github.com/tfgrid-studio/tfgrid-compose), the complete development platform for ThreeFold Grid.

---

## Quick Install

```bash
curl -sSL install.tfgrid.studio | sh
```

That's it! The script will:
1. Check prerequisites (git, make)
2. Clone tfgrid-compose repository
3. Install the CLI to your PATH
4. Verify the installation

---

## What Gets Installed

- **tfgrid-compose CLI** - Command-line tool for deploying to ThreeFold Grid
- **Installation location:** `~/.tfgrid/tfgrid-compose`
- **Binary location:** `/usr/local/bin/tfgrid-compose` (or `~/.local/bin`)

---

## Manual Installation

If you prefer to install manually:

```bash
# Clone the repository
git clone https://github.com/tfgrid-studio/tfgrid-compose
cd tfgrid-compose

# Run the installer
make install

# Verify installation
tfgrid-compose --version
```

---

## Requirements

- **git** - Version control system
- **make** - Build automation tool
- **bash** - Shell (already available on Linux/macOS)

---

## How It Works

This repository serves two files via GitHub Pages:

1. **`install.sh`** - The actual installation script
2. **`index.html`** - Pretty landing page at `install.tfgrid.studio`

When you run `curl -sSL install.tfgrid.studio | sh`, the custom domain redirects to serve the `install.sh` script directly.

---

## Custom Domain Setup

To enable `install.tfgrid.studio`:

1. **Enable GitHub Pages** in repository settings
   - Source: Deploy from `main` branch
   - Custom domain: `install.tfgrid.studio`

2. **Add DNS records** at your domain provider:
   ```
   Type: CNAME
   Name: install
   Value: tfgrid-studio.github.io
   ```

3. **Wait for DNS propagation** (usually 5-15 minutes)

4. **Enable HTTPS** in GitHub Pages settings

---

## Testing Locally

```bash
# Serve the script locally
python3 -m http.server 8000

# Test the installer
curl -sSL http://localhost:8000/install.sh | sh
```

---

## Links

- **Main Site:** [tfgrid.studio](https://tfgrid.studio)
- **Documentation:** [docs.tfgrid.studio](https://docs.tfgrid.studio)
- **TFGrid Compose:** [github.com/tfgrid-studio/tfgrid-compose](https://github.com/tfgrid-studio/tfgrid-compose)
- **Quick Start:** [docs.tfgrid.studio/getting-started/quickstart](https://docs.tfgrid.studio/getting-started/quickstart)

---

## License

Apache 2.0 License - see [LICENSE](../LICENSE) for details

---

**Made with 🔥 for the decentralized web**
