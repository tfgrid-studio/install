#!/bin/bash
# TFGrid Compose Installer
# Usage: curl -sSL install.tfgrid.studio | sh

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Repository details
REPO_URL="https://github.com/tfgrid-studio/tfgrid-compose"
INSTALL_DIR="${HOME}/.tfgrid"
REPO_DIR="${INSTALL_DIR}/tfgrid-compose"

echo -e "${BLUE}╔════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║   TFGrid Compose Installer v2.0.0     ║${NC}"
echo -e "${BLUE}╔════════════════════════════════════════╗${NC}"
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo -e "${RED}✗ Error: git is not installed${NC}"
    echo "Please install git first:"
    echo "  Ubuntu/Debian: sudo apt-get install git"
    echo "  macOS: brew install git"
    echo "  Fedora: sudo dnf install git"
    exit 1
fi

# Check if make is installed
if ! command -v make &> /dev/null; then
    echo -e "${RED}✗ Error: make is not installed${NC}"
    echo "Please install make first:"
    echo "  Ubuntu/Debian: sudo apt-get install build-essential"
    echo "  macOS: xcode-select --install"
    echo "  Fedora: sudo dnf groupinstall 'Development Tools'"
    exit 1
fi

echo -e "${GREEN}✓ Prerequisites check passed${NC}"
echo ""

# Create install directory
echo -e "${BLUE}→ Creating installation directory...${NC}"
mkdir -p "${INSTALL_DIR}"

# Clone or update repository
if [ -d "${REPO_DIR}" ]; then
    echo -e "${YELLOW}→ Repository already exists, updating...${NC}"
    cd "${REPO_DIR}"
    git fetch origin
    git reset --hard origin/main
else
    echo -e "${BLUE}→ Cloning tfgrid-compose repository...${NC}"
    git clone "${REPO_URL}" "${REPO_DIR}"
    cd "${REPO_DIR}"
fi

echo -e "${GREEN}✓ Repository ready${NC}"
echo ""

# Run installation
echo -e "${BLUE}→ Installing tfgrid-compose CLI...${NC}"
make install

echo ""
echo -e "${GREEN}╔════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║  ✓ Installation Complete!             ║${NC}"
echo -e "${GREEN}╔════════════════════════════════════════╗${NC}"
echo ""
echo -e "Run: ${BLUE}tfgrid-compose --version${NC} to verify installation"
echo -e "Get started: ${BLUE}tfgrid-compose --help${NC}"
echo ""
echo -e "Documentation: ${BLUE}https://docs.tfgrid.studio${NC}"
echo -e "Quick Start: ${BLUE}https://docs.tfgrid.studio/getting-started/quickstart${NC}"
echo ""
