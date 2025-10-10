# Setup Guide for install.tfgrid.studio

This guide walks through setting up the installer website with GitHub Pages.

---

## Step 1: Push to GitHub

```bash
git add .
git commit -m "feat: Initial install script and landing page"
git push origin main
```

---

## Step 2: Enable GitHub Pages

1. Go to repository settings: `https://github.com/tfgrid-studio/install/settings/pages`
2. Under "Build and deployment":
   - **Source:** Deploy from a branch
   - **Branch:** `main`
   - **Folder:** `/ (root)`
3. Click **Save**

---

## Step 3: Configure Custom Domain

1. In the same GitHub Pages settings:
   - **Custom domain:** `install.tfgrid.studio`
   - Click **Save**

2. Add DNS records at your domain provider (e.g., Cloudflare, Route53):
   ```
   Type: CNAME
   Name: install
   Value: tfgrid-studio.github.io
   TTL: Auto
   ```

3. Wait for DNS propagation (5-15 minutes)
   - Check status: `dig install.tfgrid.studio`

---

## Step 4: Enable HTTPS

1. After DNS propagates, return to GitHub Pages settings
2. Check **Enforce HTTPS** (may take a few minutes to become available)

---

## Step 5: Test the Installation

Once DNS is live, test it:

```bash
# Test the landing page
curl -I https://install.tfgrid.studio
# Should return: HTTP/2 200

# Test the installer script
curl -sSL https://install.tfgrid.studio/install.sh | head -n 5
# Should show the script content

# Test full installation (if you want)
curl -sSL https://install.tfgrid.studio/install.sh | sh
```

---

## Alternate: Direct Script Access

The installer can be accessed two ways:

1. **Via root domain** (recommended for curl):
   ```bash
   curl -sSL install.tfgrid.studio | sh
   ```
   This needs special configuration (see below)

2. **Via explicit path** (always works):
   ```bash
   curl -sSL install.tfgrid.studio/install.sh | sh
   ```

### Making Root Domain Serve install.sh

To make `install.tfgrid.studio` (without `/install.sh`) work:

**Option A:** Rename `install.sh` to `index.html` (not ideal for scripting)

**Option B:** Use a redirect in `index.html`:
```html
<script>
  if (window.location.pathname === '/' && 
      navigator.userAgent.includes('curl')) {
    window.location.href = '/install.sh';
  }
</script>
```

**Option C:** Use GitHub Actions to serve script at root (recommended)

For now, use: `curl -sSL install.tfgrid.studio/install.sh | sh`

---

## Verification Checklist

- [ ] Repository pushed to GitHub
- [ ] GitHub Pages enabled
- [ ] DNS CNAME record added
- [ ] DNS propagated (`dig install.tfgrid.studio`)
- [ ] HTTPS enabled
- [ ] Landing page loads at `https://install.tfgrid.studio`
- [ ] Script downloads at `https://install.tfgrid.studio/install.sh`
- [ ] Installation works: `curl -sSL install.tfgrid.studio/install.sh | sh`

---

## Troubleshooting

**DNS not resolving:**
- Wait longer (can take up to 48 hours, usually 15 min)
- Check DNS: `dig install.tfgrid.studio`
- Verify CNAME points to `tfgrid-studio.github.io`

**404 errors:**
- Ensure GitHub Pages is enabled
- Check branch is `main` and folder is `/`
- Verify files are committed and pushed

**HTTPS not available:**
- Wait for DNS to fully propagate
- Can take 10-15 minutes after DNS is live
- GitHub needs to provision SSL certificate

---

## Next Steps

Once live, update:

1. **tfgrid-www** - Change install command to one-liner
2. **tfgrid-docs** - Update installation docs
3. **tfgrid-compose README** - Add one-line installer

Enjoy your professional installer! 🚀
