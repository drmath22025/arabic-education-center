# 📤 رفع المشروع إلى GitHub

## 🚀 خطوات سريعة لرفع المشروع

### الخطوة 1: إنشاء Repository في GitHub

1. اذهب إلى [github.com](https://github.com)
2. انقر **New Repository** (أو الزر الأخضر)
3. املأ البيانات:
   - **Repository name**: `arabic-education-center`
   - **Description**: `نظام حجز احترافي للمراكز التعليمية العربية`
   - اختر **Public** (لتفعيل GitHub Pages مجاناً)
   - ✅ **Add a README file**
   - اختر **License**: MIT License (اختياري)

### الخطوة 2: رفع الملفات من VS Code

افتح Terminal في VS Code (`Ctrl + `` ) وشغل:

```bash
# تهيئة Git
git init

# إضافة جميع الملفات
git add .

# أول commit
git commit -m "Initial commit: Arabic Education Center"

# ربط بـ GitHub (استبدل YOUR_USERNAME باسمك)
git remote add origin https://github.com/YOUR_USERNAME/arabic-education-center.git

# رفع الملفات
git branch -M main
git push -u origin main
```

### الخطوة 3: تفعيل GitHub Pages

1. في GitHub repository، اذهب إلى **Settings**
2. انقر **Pages** في القائمة الجانبية
3. في **Source** اختر **Deploy from a branch**
4. اختر **main** branch و **/ (root)**
5. انقر **Save**

### الخطوة 4: تحديث الروابط

عدل الروابط في `index.html`:

```html
<!-- استبدل YOUR_USERNAME باسم المستخدم الخاص بك -->
<a href="https://github.com/YOUR_USERNAME/arabic-education-center">
    GitHub Repository
</a>

<a href="https://YOUR_USERNAME.github.io/arabic-education-center">
    Live Demo
</a>
```

## 🔧 إعدادات إضافية

### تحديث README.md الرئيسي:

```markdown
# مركز التعليم العربي - نظام الحجز

نظام حجز احترافي ومتجاوب للمراكز التعليمية العربية مبني بـ Next.js 14+ و TypeScript.

## 🌐 العرض المباشر
[مشاهدة الموقع](https://YOUR_USERNAME.github.io/arabic-education-center)

## 🚀 المميزات
- واجهة عربية كاملة مع دعم RTL
- تصميم متجاوب لجميع الأجهزة
- نظام تسجيل طلاب تفاعلي
- لوحة تحكم إدارية شاملة
- أمان عالي مع Supabase

## 🛠️ التقنيات
- Next.js 14+
- TypeScript
- Tailwind CSS
- Supabase
- Row Level Security

## 📦 التثبيت
```bash
git clone https://github.com/YOUR_USERNAME/arabic-education-center.git
cd arabic-education-center
npm install
npm run dev
```

## 📄 الترخيص
MIT License
```

### إضافة شارات (Badges):

```markdown
![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Live-brightgreen)
![Next.js](https://img.shields.io/badge/Next.js-14+-black)
![TypeScript](https://img.shields.io/badge/TypeScript-5+-blue)
![Arabic](https://img.shields.io/badge/Language-Arabic-green)
![RTL](https://img.shields.io/badge/RTL-Supported-orange)
![License](https://img.shields.io/badge/License-MIT-yellow)
```

## 📸 إضافة لقطات شاشة

### إنشاء مجلد الصور:
```bash
mkdir images
```

### أخذ لقطات شاشة:
1. شغل المشروع محلياً: `npm run dev`
2. افتح `http://localhost:3000`
3. خذ لقطات شاشة للصفحات المختلفة
4. احفظها في مجلد `images/`

### تحديث index.html:
```html
<div class="screenshot-placeholder">
    <img src="images/homepage.png" alt="الصفحة الرئيسية" 
         style="width: 100%; height: 200px; object-fit: cover; border-radius: 8px;">
</div>
```

## 🔄 تحديث المشروع

عند إجراء تغييرات:

```bash
# إضافة التغييرات
git add .

# commit مع وصف التغيير
git commit -m "تحديث: إضافة ميزة جديدة"

# رفع التحديثات
git push origin main
```

## 🌟 تحسينات إضافية

### إضافة Topics في GitHub:
1. في repository، انقر **⚙️** بجانب About
2. أضف topics: `nextjs`, `typescript`, `arabic`, `rtl`, `education`, `supabase`

### إضافة License:
1. في repository، انقر **Add file** > **Create new file**
2. اسم الملف: `LICENSE`
3. اختر template: MIT License

### إضافة Contributing Guidelines:
أنشئ ملف `CONTRIBUTING.md`:

```markdown
# المساهمة في المشروع

نرحب بمساهماتكم في تطوير مركز التعليم العربي!

## كيفية المساهمة
1. Fork المشروع
2. أنشئ branch جديد للميزة
3. اعمل commit للتغييرات
4. ادفع إلى branch
5. افتح Pull Request

## معايير الكود
- استخدم TypeScript
- اتبع معايير ESLint
- اكتب تعليقات باللغة العربية
- اختبر التغييرات قبل الإرسال
```

## 📊 مراقبة الإحصائيات

### GitHub Insights:
- راقب عدد الزوار في **Insights** > **Traffic**
- تابع النجوم والـ forks
- راقب Issues و Pull Requests

### Google Analytics (اختياري):
أضف في `index.html`:
```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

## 🎯 النتيجة النهائية

بعد اتباع هذه الخطوات ستحصل على:

✅ **Repository عام** في GitHub  
✅ **صفحة ويب مباشرة** على GitHub Pages  
✅ **رابط مشاركة** للمشروع  
✅ **توثيق شامل** للمشروع  
✅ **إمكانية المساهمة** من المطورين الآخرين  

## 🔗 روابط مفيدة

- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Git Basics](https://git-scm.com/book/en/v2/Getting-Started-Git-Basics)
- [Markdown Guide](https://www.markdownguide.org/)

---

**🎉 مبروك! مشروعك الآن متاح للعالم على GitHub!**
