# CSSTextLib

Atomic CSS text utility library – 500+ single-purpose classes that let you style text in seconds.

> One Sass file → compile to **< 3 kB minified**  
> Drop it in and forget about writing new text styles ever again.

---

## ⚡ Quick Start

1. Download `csstextlib.min.css`
2. Put it in `<head>`

```
<link rel="stylesheet" href="cssttextlib.min.css">
```

3. Use classes in your markup:

```
<p class="text-color-red text-bold text-size-large">
  Red, bold, large text – done.
</p>
```

---

## 🎨 What You Get

| Category | Example Classes | Count |
| --- | --- | --- |
| **Color** | `.text-color-blue`, `.text-color-light-green` | 22 |
| **Highlight** | `.text-highlight-yellow`, `.text-highlight-black` | 22 |
| **Size** | `.text-size-small` → `.text-size-xxxlarge` | 10 |
| **Opacity** | `.text-opacity-0` → `.text-opacity-100` (5-step) | 21 |
| **Align** | `.text-align-center`, `.text-align-justify` | 4 |
| **Decoration** | `.text-underline`, `.text-line-through` | 6 |
| **Font** | `.text-font-monospace`, `.text-font-ui-rounded` | 7 |
| **Spacing** | `.text-letter-spacing-large`, `.text-word-spacing-small` | 4 |
| **Dark Mode** | auto switch via `@media (prefers-color-scheme: dark)` | ✔ |
| **Responsive** | `.text-hide-sm`, `.text-show-lg` | 8 |
| **Animation** | `.text-animate-fade` | 1 |

**Total ≈ 500+ classes** – all generated from a single Sass file.

---

## 🛠 Build Yourself

```bash
# install dart-sass once
npm i -g sass        # or use standalone zip

# generate both expanded & minified
sass csstextlib.scss csstextlib.css       --style=expanded
sass csstextlib.scss csstextlib.min.css   --style=compressed
```

> Windows? Use the included `build.bat` – double-click done.

---

## 🧩 Customise

Edit the **variables map** inside `csstextlib.scss`:

```scss
$color-map: (
  'brand': #ff4757,   // add your brand colour
  'gray':  #6c757d,
);
```

Re-compile – new classes `.text-color-brand` / `.text-highlight-brand` are auto-generated.

---

## 📄 License

Eclipse Public License 2.0  
(see [LICENSE](LICENSE) file)
---

## 🤝 Contributing

PRs welcome! Please run `build.bat` before commit so both `.css` & `.min.css` stay in sync.
