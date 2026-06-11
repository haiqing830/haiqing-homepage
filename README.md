# Haiqing Xu — Academic Homepage

A minimal academic homepage built with the [Minimal theme](https://github.com/orderedlist/minimal), inspired by [jiaweizhou.me](https://jiaweizhou.me/).

## Preview locally

```bash
cd homepage
python3 -m http.server 8080
```

Open http://localhost:8080 in your browser.

## Deploy to GitHub Pages

1. Create a new GitHub repository (e.g. `haiqingxu.github.io` or `homepage`)
2. Push this folder:

```bash
cd homepage
git init
git add .
git commit -m "Initial academic homepage"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
git push -u origin main
```

3. In GitHub repo **Settings → Pages**, set source to `main` branch, root folder.

## Customize

- **Profile photo**: Replace `assets/profile.svg` with your photo as `assets/profile.jpg` and update `index.html`
- **Google Scholar**: Update the scholar link in `index.html` (search your profile ID)
- **CV**: Replace `assets/Haiqing_CV.pdf` when you update your resume
- **Project images**: Add images to `assets/img/` and reference them in highlighted work sections

## File structure

```
homepage/
├── index.html
├── stylesheets/styles.css
├── javascripts/scale.fix.js
├── assets/
│   ├── Haiqing_CV.pdf
│   └── profile.svg
└── README.md
```
