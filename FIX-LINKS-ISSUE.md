# 🔗 حل مشكلة الروابط في صفحة البداية

## 🚨 المشكلة
عند النقر على الأزرار في `index.html`، تفتح ملفات الكود بدلاً من الصفحات المطلوبة.

## 🔍 السبب
الروابط كانت تشير إلى ملفات TypeScript مباشرة بدلاً من روابط Next.js الصحيحة.

## ✅ الحل

### تم تحديث الروابط إلى:
```html
<!-- بدلاً من -->
<a href="src/app/register/page.tsx">

<!-- أصبحت -->
<a href="http://localhost:3000/register">
```

## 🚀 كيفية الاستخدام الصحيح

### الخطوة 1: تشغيل Next.js
```bash
# في VS Code Terminal
npm run dev
```

### الخطوة 2: فتح صفحة البداية
```bash
# افتح index.html في المتصفح
# أو استخدم Live Server في VS Code
```

### الخطوة 3: اختبار الروابط
- انقر "تسجيل طالب جديد" → يفتح `http://localhost:3000/register`
- انقر "لوحة التحكم الإدارية" → يفتح `http://localhost:3000/admin/login`

## 🎯 طرق بديلة للاستخدام

### الطريقة الأولى: استخدام Next.js مباشرة
```bash
npm run dev
# افتح http://localhost:3000
```

### الطريقة الثانية: استخدام index.html كصفحة ترحيبية
```bash
# 1. شغل Next.js في terminal
npm run dev

# 2. افتح index.html في متصفح آخر
# 3. استخدم الأزرار للانتقال لـ Next.js
```

### الطريقة الثالثة: دمج index.html في Next.js
انسخ محتوى `index.html` إلى `src/app/page.tsx` كمكون React.

## 🔧 تحسينات إضافية

### إضافة فحص حالة الخادم:
```javascript
function checkServer() {
    fetch('http://localhost:3000')
        .then(response => {
            if (response.ok) {
                document.querySelector('.status').innerHTML = 
                    '<div class="pulse"></div>النظام جاهز للاستخدام';
            }
        })
        .catch(() => {
            document.querySelector('.status').innerHTML = 
                '<div class="pulse" style="background: red;"></div>يرجى تشغيل Next.js أولاً';
        });
}

// فحص الحالة عند تحميل الصفحة
window.addEventListener('load', checkServer);
```

### إضافة رسائل تنبيه:
```javascript
function showLoading(button) {
    // فحص إذا كان Next.js يعمل
    fetch('http://localhost:3000')
        .then(response => {
            if (response.ok) {
                // إظهار التحميل والانتقال
                const loading = document.getElementById('loading');
                loading.style.display = 'block';
                setTimeout(() => {
                    window.location.href = button.href;
                }, 1000);
            } else {
                alert('يرجى تشغيل Next.js أولاً بالأمر: npm run dev');
            }
        })
        .catch(() => {
            alert('يرجى تشغيل Next.js أولاً بالأمر: npm run dev');
        });
    
    return false; // منع الانتقال المباشر
}
```

## 📋 قائمة التحقق

### قبل استخدام الصفحة:
- [ ] تأكد من تثبيت Node.js
- [ ] شغل `npm install` في مجلد المشروع
- [ ] شغل `npm run dev` لتشغيل Next.js
- [ ] تأكد من عمل `http://localhost:3000`

### عند استخدام الصفحة:
- [ ] افتح `index.html` في المتصفح
- [ ] تأكد من ظهور "النظام جاهز للاستخدام"
- [ ] اختبر الأزرار للتأكد من عملها

## 🆘 حل المشاكل الشائعة

### المشكلة: "لا يمكن الوصول للموقع"
**الحل**: تأكد من تشغيل Next.js:
```bash
npm run dev
```

### المشكلة: "الصفحة لا تفتح"
**الحل**: تحقق من المنفذ:
```bash
# إذا كان Next.js يعمل على منفذ مختلف
npm run dev -- --port 3001
# ثم حدث الروابط في index.html
```

### المشكلة: "خطأ CORS"
**الحل**: استخدم نفس المنفذ أو خادم محلي:
```bash
# استخدم Live Server في VS Code
# أو
python -m http.server 8000
```

## 🎯 التوصيات

### للاستخدام اليومي:
استخدم Next.js مباشرة: `npm run dev` ثم `http://localhost:3000`

### للعرض التوضيحي:
استخدم `index.html` كصفحة ترحيبية مع روابط لـ Next.js

### للإنتاج:
ادمج تصميم `index.html` في `src/app/page.tsx`

---

**✅ الآن الروابط تعمل بشكل صحيح! تأكد من تشغيل Next.js أولاً.**
