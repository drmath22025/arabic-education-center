# 🌐 نشر صفحة GitHub Pages

## إعداد GitHub Pages للمشروع

### الخطوة 1: رفع المشروع إلى GitHub

```bash
# إنشاء repository جديد
git init
git add .
git commit -m "Initial commit: Arabic Education Center"

# ربط بـ GitHub (استبدل username بالاسم الخاص بك)
git remote add origin https://github.com/username/arabic-education-center.git
git branch -M main
git push -u origin main
```

### الخطوة 2: تفعيل GitHub Pages

1. اذهب إلى repository في GitHub
2. انقر على **Settings**
3. اذهب إلى **Pages** في القائمة الجانبية
4. في **Source** اختر **Deploy from a branch**
5. اختر **main** branch
6. اختر **/ (root)** folder
7. انقر **Save**

### الخطوة 3: تحديث الروابط

عدل الروابط في `index.html`:

```html
<!-- استبدل yourusername باسم المستخدم الخاص بك -->
<a href="https://github.com/yourusername/arabic-education-center" target="_blank">
    <i class="fab fa-github"></i> GitHub Repository
</a>

<!-- إذا كان لديك demo مباشر -->
<a href="https://yourusername.github.io/arabic-education-center" target="_blank">
    <i class="fas fa-external-link-alt"></i> Live Demo
</a>
```

## 📁 هيكل الملفات لـ GitHub Pages

```
arabic-education-center/
├── index.html              # الصفحة الرئيسية لـ GitHub Pages
├── README.md               # وصف المشروع
├── FEATURES.md             # قائمة المميزات
├── SETUP-GUIDE.md          # دليل الإعداد
├── VS-CODE-GUIDE.md        # دليل VS Code
├── DEPLOYMENT.md           # دليل النشر
├── src/                    # ملفات Next.js
├── database/               # ملفات قاعدة البيانات
└── .github/                # إعدادات GitHub
    └── workflows/          # GitHub Actions (اختياري)
```

## 🎨 تخصيص صفحة GitHub

### إضافة صور للمشروع:

1. أنشئ مجلد `images/` في الجذر
2. أضف لقطات شاشة من المشروع
3. حدث `index.html`:

```html
<div class="screenshot-placeholder">
    <img src="images/homepage-screenshot.png" alt="الصفحة الرئيسية" style="width: 100%; height: 100%; object-fit: cover;">
</div>
```

### إضافة فيديو توضيحي:

```html
<div class="video-container">
    <iframe width="560" height="315" 
            src="https://www.youtube.com/embed/YOUR_VIDEO_ID" 
            title="عرض توضيحي لمركز التعليم العربي"
            frameborder="0" allowfullscreen>
    </iframe>
</div>
```

## 🔧 إعدادات متقدمة

### إضافة Google Analytics:

```html
<!-- في head section -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

### إضافة Meta Tags للشبكات الاجتماعية:

```html
<!-- Open Graph -->
<meta property="og:title" content="مركز التعليم العربي - نظام الحجز">
<meta property="og:description" content="نظام حجز احترافي ومتجاوب للمراكز التعليمية العربية">
<meta property="og:image" content="https://yourusername.github.io/arabic-education-center/images/og-image.png">
<meta property="og:url" content="https://yourusername.github.io/arabic-education-center">

<!-- Twitter Card -->
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="مركز التعليم العربي">
<meta name="twitter:description" content="نظام حجز احترافي للمراكز التعليمية">
<meta name="twitter:image" content="https://yourusername.github.io/arabic-education-center/images/twitter-card.png">
```

## 🚀 GitHub Actions للنشر التلقائي

أنشئ ملف `.github/workflows/deploy.yml`:

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  deploy:
    runs-on: ubuntu-latest
    
    steps:
    - uses: actions/checkout@v3
    
    - name: Setup Node.js
      uses: actions/setup-node@v3
      with:
        node-version: '18'
        
    - name: Install dependencies
      run: npm install
      
    - name: Build project
      run: npm run build
      
    - name: Deploy to GitHub Pages
      uses: peaceiris/actions-gh-pages@v3
      with:
        github_token: ${{ secrets.GITHUB_TOKEN }}
        publish_dir: ./out
```

## 📊 إضافة شارات (Badges)

أضف في `README.md`:

```markdown
![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Live-brightgreen)
![Next.js](https://img.shields.io/badge/Next.js-14+-black)
![TypeScript](https://img.shields.io/badge/TypeScript-5+-blue)
![Arabic](https://img.shields.io/badge/Language-Arabic-green)
![RTL](https://img.shields.io/badge/RTL-Supported-orange)
```

## 🔗 روابط مفيدة

- **GitHub Pages Docs**: https://docs.github.com/en/pages
- **Custom Domain**: https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site
- **GitHub Actions**: https://docs.github.com/en/actions

## 📱 اختبار الصفحة

بعد النشر:

1. اذهب إلى `https://yourusername.github.io/arabic-education-center`
2. اختبر على أجهزة مختلفة
3. تأكد من عمل جميع الروابط
4. اختبر الأداء باستخدام Lighthouse

## 🎯 نصائح للتحسين

### تحسين الأداء:
- ضغط الصور
- تصغير CSS و JavaScript
- استخدام CDN للمكتبات

### تحسين SEO:
- إضافة sitemap.xml
- تحسين Meta descriptions
- استخدام Structured Data

### إمكانية الوصول:
- إضافة alt text للصور
- استخدام semantic HTML
- اختبار مع screen readers

---

**الآن صفحة GitHub Pages جاهزة لعرض مشروع مركز التعليم العربي للعالم! 🌍**
