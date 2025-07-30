# 📦 دليل تثبيت Node.js وتشغيل المشروع

## 🚨 المشكلة الحالية
Node.js غير مثبت على النظام، لذلك لا يمكن تشغيل Next.js.

## 🔧 الحل: تثبيت Node.js

### الخطوة 1: تحميل Node.js
1. اذهب إلى [nodejs.org](https://nodejs.org)
2. حمل النسخة **LTS** (Long Term Support)
3. اختر النسخة المناسبة لـ Windows

### الخطوة 2: تثبيت Node.js
1. شغل ملف التثبيت الذي حملته
2. اتبع التعليمات (اختر الإعدادات الافتراضية)
3. تأكد من تحديد "Add to PATH" ✅
4. أكمل التثبيت

### الخطوة 3: إعادة تشغيل النظام
```
أعد تشغيل الكمبيوتر لتطبيق التغييرات
```

### الخطوة 4: التحقق من التثبيت
افتح Command Prompt أو PowerShell وشغل:
```cmd
node --version
npm --version
```

يجب أن تظهر أرقام الإصدارات.

## 🚀 تشغيل المشروع بعد تثبيت Node.js

### في VS Code:
1. افتح Terminal (`Ctrl + `` )
2. شغل الأوامر التالية:

```bash
# تثبيت التبعيات (أول مرة فقط)
npm install

# تشغيل خادم التطوير
npm run dev
```

### أو استخدم ملف التشغيل:
انقر نقرة مزدوجة على `start-project.bat`

## 📋 التحقق من نجاح التشغيل

### في Terminal ستظهر رسالة مثل:
```
▲ Next.js 14.2.5
- Local:        http://localhost:3000
- ready in 2.3s
```

### في المتصفح:
1. اذهب إلى `http://localhost:3000`
2. يجب أن تظهر الصفحة الرئيسية للمشروع

## 🎯 اختبار صفحة البداية

بعد تشغيل Next.js:
1. افتح `index.html` في متصفح منفصل
2. يجب أن يظهر المؤشر الأخضر "النظام جاهز للاستخدام"
3. اختبر الأزرار للانتقال بين الصفحات

## 🆘 حل المشاكل الشائعة

### "node is not recognized"
**الحل**: 
- تأكد من تثبيت Node.js
- أعد تشغيل VS Code
- أعد تشغيل الكمبيوتر

### "npm install fails"
**الحل**:
```bash
# امسح node_modules وأعد التثبيت
rmdir /s node_modules
npm install
```

### "Port 3000 is already in use"
**الحل**:
```bash
# استخدم منفذ مختلف
npm run dev -- --port 3001
```

### "Permission denied"
**الحل**:
- شغل VS Code كمدير (Run as Administrator)
- أو شغل Command Prompt كمدير

## 📱 روابط التحميل المباشرة

### Node.js LTS (موصى به):
- **Windows 64-bit**: https://nodejs.org/dist/v20.10.0/node-v20.10.0-x64.msi
- **Windows 32-bit**: https://nodejs.org/dist/v20.10.0/node-v20.10.0-x86.msi

### أو من الموقع الرسمي:
https://nodejs.org/en/download/

## 🔄 خطوات سريعة للتشغيل

```bash
# 1. تثبيت Node.js من nodejs.org
# 2. إعادة تشغيل الكمبيوتر
# 3. فتح VS Code
# 4. فتح Terminal
# 5. تشغيل الأوامر:

npm install
npm run dev

# 6. فتح http://localhost:3000
```

## ✅ قائمة التحقق

- [ ] تحميل Node.js من nodejs.org
- [ ] تثبيت Node.js مع إعدادات افتراضية
- [ ] إعادة تشغيل الكمبيوتر
- [ ] فتح VS Code
- [ ] فتح Terminal
- [ ] تشغيل `node --version` للتأكد
- [ ] تشغيل `npm install`
- [ ] تشغيل `npm run dev`
- [ ] فتح `http://localhost:3000`
- [ ] اختبار `index.html`

## 🎉 النتيجة المتوقعة

بعد اتباع هذه الخطوات:
- ✅ Next.js يعمل على `http://localhost:3000`
- ✅ صفحة البداية `index.html` تظهر مؤشر أخضر
- ✅ الأزرار تعمل وتنقل بين الصفحات
- ✅ نظام الحجز جاهز للاستخدام

---

**📞 إذا واجهت أي مشاكل، راجع ملفات التعليمات الأخرى أو اطلب المساعدة!**
