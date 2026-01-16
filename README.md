# CSSTextLib

Atomic CSS文本工具库 - 600+单一用途类，让您在几秒内完成文本样式设计。

> 一个Sass文件 → 编译后**< 4 kB压缩版**  
> 导入即可，无需再为文本样式编写新代码。

---

## ⚡ 快速开始

1. 下载 `csstextlib.min.css`
2. 放入 `<head>` 中

```html
<link rel="stylesheet" href="https://raw.githubusercontent.com/EndlessPixel/CSSTextLib/refs/heads/main/version/3.0/csstextlib.min.css">
```

3. 在您的标记中使用类：

```html
<p class="text-color-blue text-bold text-size-large">
  蓝色、粗体、大号文本 - 搞定。
</p>
```

---

## 🎨 功能概览

### 版本 3.0 (完整功能版)

| 类别 | 示例类 | 数量 |
| --- | --- | --- |
| **颜色** | `.text-color-blue`, `.text-color-light-green` | 22 |
| **高亮背景** | `.text-highlight-yellow`, `.text-highlight-black` | 22 |
| **字体大小** | `.text-size-small` → `.text-size-xxxlarge` | 10 |
| **透明度** | `.text-opacity-0` → `.text-opacity-100` (5%间隔) | 21 |
| **字重** | `.text-weight-thin` → `.text-weight-black` (9档) | 9 |
| **文本阴影** | `.text-shadow-small`, `.text-shadow-glow-white` | 5 |
| **对齐** | `.text-align-center`, `.text-align-justify` | 4 |
| **装饰线** | `.text-underline`, `.text-line-through` | 6 |
| **字体族** | `.text-font-monospace`, `.text-font-ui-rounded` | 11 |
| **间距** | `.text-letter-spacing-large`, `.text-word-spacing-small` | 4 |
| **行高** | `.text-line-height-small`, `.text-line-height-large` | 3 |
| **文本溢出** | `.text-overflow-ellipsis`, `.text-overflow-ellipsis-2` | 4 |
| **光标样式** | `.text-cursor-pointer`, `.text-cursor-not-allowed` | 4 |
| **文本选择** | `.text-select-none`, `.text-select-all` | 3 |
| **换行控制** | `.text-nowrap`, `.text-pre-wrap` | 4 |
| **垂直对齐** | `.text-align-baseline`, `.text-align-super` | 5 |
| **装饰线样式** | `.text-underline-dashed`, `.text-underline-wavy` | 4 |
| **交互效果** | `.text-hover-bold`, `.text-hover-color-black` | 4 |
| **特殊排版** | `.text-writing-mode-vertical`, `.text-orientation-upright` | 4 |
| **暗色模式** | 通过 `@media (prefers-color-scheme: dark)` 自动切换 | ✔ |
| **响应式** | `.text-hide-sm`, `.text-show-lg` | 8 |
| **动画** | `.text-animate-fade`, `.text-animate-scale`, `.text-animate-blink` | 3 |
| **打印优化** | 自动优化打印样式 | ✔ |

**总计 ≈ 600+ 类** - 全部从一个Sass文件生成。

---

## 🔄 版本对比

### 版本 1.0 (基础版)
- **文件**: `text.css`
- **大小**: ~2kB (压缩后)
- **功能**: 基础文本样式、颜色、大小、对齐、装饰
- **适合**: 简单项目，只需要基础文本样式

### 版本 2.0 (增强版)
- **文件**: `csstextlib.scss` / `csstextlib.min.css`
- **大小**: ~3kB (压缩后)
- **新增**: SCSS变量、暗色模式、响应式类、基础动画
- **适合**: 现代Web应用，需要响应式和暗色模式支持

### 版本 3.0 (完整版) **推荐**
- **文件**: `csstextlib.scss` / `csstextlib.min.css`
- **大小**: ~4kB (压缩后)
- **新增**: 多档位字重、文本阴影预设、多行省略、交互效果、光标样式、特殊排版等
- **适合**: 专业项目，需要完整文本样式控制和高级功能

---

## 🛠 自行构建

### 方法一：使用Sass编译
```bash
# 安装dart-sass（只需一次）
npm install -g sass

# 生成扩展版和压缩版
sass csstextlib.scss csstextlib.css --style=expanded
sass csstextlib.scss csstextlib.min.css --style=compressed
```

### 方法二：使用构建脚本
仓库包含构建脚本，只需运行：

- **Windows**: 双击 `build.bat`
- **macOS/Linux**: 运行 `./build.sh`

---

## 🧩 自定义配置

编辑 `csstextlib.scss` 文件中的 **变量映射**：

```scss
// 添加自定义颜色
$color-map: (
  'brand': #ff4757,   // 添加品牌色
  'accent': #00d1b2,  // 添加强调色
  'gray':  #6c757d,
);

// 添加自定义字体大小
$font-sizes: (
  'tiny': 10px,
  'huge': 48px,
  // 原有大小保持不变
);

// 添加自定义字重
$font-weights: (
  'extrablack': 950,  // 超黑体
  'ultralight': 50,   // 超细体
);
```

重新编译后，新类如 `.text-color-brand`、`.text-size-huge`、`.text-weight-extrablack` 将自动生成。

---

## 🚀 高级用法示例

### 多行文本省略
```html
<p class="text-overflow-ellipsis-2" style="width: 300px;">
  这是两行文本省略示例，当文本超过两行时显示省略号...
</p>
```

### 交互效果
```html
<p class="text-color-blue text-hover-bold text-cursor-pointer">
  悬停时变粗体（尝试悬停）
</p>
```

### 特殊排版
```html
<p class="text-writing-mode-vertical text-color-purple">
  垂直排版的文本
</p>
```

### 动画文本
```html
<p class="text-animate-fade text-color-orange">
  淡入动画文本
</p>
<p class="text-animate-blink text-color-red">
  闪烁动画文本
</p>
```

---

## 📄 许可证

Eclipse Public License 2.0  
(详见 [LICENSE](LICENSE) 文件)

---

## 🤝 贡献指南

欢迎提交PR！请在提交前运行构建脚本，确保 `.css` 和 `.min.css` 文件保持同步。

### 贡献步骤：
1. Fork 本仓库
2. 创建功能分支 (`git checkout -b feature/新功能`)
3. 运行构建脚本 (`./build.sh` 或 `build.bat`)
4. 提交更改 (`git commit -m '添加新功能'`)
5. 推送到分支 (`git push origin feature/新功能`)
6. 创建Pull Request

### 注意事项：
- 保持向后兼容性
- 添加新功能时同时更新文档
- 确保所有测试通过

---

## 📚 详细文档

查看完整文档和示例：  
[CSSTextLib 详细文档](https://endlesspixel.github.io/CSSTextLib/)