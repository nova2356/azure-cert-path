# GitHub Pages Setup

Quick setup to host the tracker and cheat sheet as live web pages.

## 1. Create the repo on GitHub

- Name: `azure-cert-path` (or whatever you prefer)
- Visibility: **Public** (required for free GitHub Pages on personal accounts)
- Don't initialize with README — we have one

## 2. Push from local

```bash
cd azure-cert-path
git init
git add .
git commit -m "Initial commit: Azure certification path"
git branch -M main
git remote add origin https://github.com/YOUR-USERNAME/azure-cert-path.git
git push -u origin main
```

## 3. Enable GitHub Pages

- Go to repo → **Settings** → **Pages**
- Under "Build and deployment":
  - Source: **Deploy from a branch**
  - Branch: **main**, folder: **/ (root)**
- Click **Save**

## 4. Wait ~1 minute, then access

- Tracker: `https://YOUR-USERNAME.github.io/azure-cert-path/azure_cert_tracker.html`
- Cheat sheet: `https://YOUR-USERNAME.github.io/azure-cert-path/aws_to_azure_cheatsheet.html`

## 5. Bookmark these on phone + laptop

Open in browser, "Add to home screen" (mobile) or bookmark (desktop).

## Important note about localStorage

The tracker stores progress in your browser's localStorage. This means:
- ✓ Progress persists across browser sessions on the same device + browser
- ✗ Progress does **not** sync between devices
- ✗ Clearing browser data wipes progress

**If you want cross-device sync**, manually export your localStorage state once a week and commit it. Or just commit to using one primary device for tracking.

## Custom domain (optional)

If you own a domain, you can use `azurecerts.yourdomain.com` instead of the github.io URL:
- Add a CNAME file with your subdomain
- Point a DNS CNAME record to `YOUR-USERNAME.github.io`
- In repo Pages settings, add the custom domain

Not necessary, but a nice touch if you want to put the URL on a resume.
