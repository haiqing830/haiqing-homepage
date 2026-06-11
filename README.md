# Haiqing Xu — Academic Homepage

Minimal academic homepage inspired by [jiaweizhou.me](https://jiaweizhou.me/), built with the [Minimal theme](https://github.com/orderedlist/minimal).

## Preview locally

```bash
cd homepage
python3 -m http.server 8080
```

Open http://localhost:8080

## Publish (方案 B — new GitHub repo)

### 1. Create repository on GitHub

1. Open https://github.com/new
2. Repository name: **`haiqing-homepage`**
3. Visibility: **Public**
4. Do **not** add README, .gitignore, or license
5. Click **Create repository**

### 2. Upload files (browser — no git required)

1. Open https://github.com/haiqing830/haiqing-homepage
2. Click **Add file → Upload files**
3. Upload everything from this folder:
   - `index.html`
   - `.nojekyll`
   - `assets/` (folder)
   - `javascripts/` (folder)
   - `stylesheets/` (folder)
4. Commit message: `Initial minimal homepage`
5. Click **Commit changes**

Or upload the zip: `../haiqing-homepage.zip` (extract first, then upload contents).

### 3. Enable GitHub Pages

1. **Settings → Pages**
2. Source: **Deploy from a branch**
3. Branch: **main**, folder **/ (root)**
4. Save

### 4. Live URL

After 1–3 minutes:

**https://haiqing830.github.io/haiqing-homepage/**

Hard refresh: `Cmd + Shift + R`

## Customize

- **Photo:** replace `assets/profile.svg` with `assets/profile.jpg`, update `index.html`
- **CV:** replace `assets/Haiqing_CV.pdf`
- **Custom domain (optional):** Settings → Pages → Custom domain
