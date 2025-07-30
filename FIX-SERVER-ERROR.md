# 🔧 حل خطأ Server Error - مركز التعليم العربي

## المشكلة
```
Server Error in '/' Application.
Configuration Error
Parser Error Message: Failed to start monitoring changes to 'C:\Users\Administrator\senter' because access is denied.
```

## السبب
النظام يحاول تشغيل المشروع كتطبيق ASP.NET/IIS بدلاً من تطبيق Node.js

## الحلول

### الحل الأول: إيقاف IIS
1. افتح Command Prompt كمدير (Run as Administrator)
2. شغل الأمر:
```cmd
iisreset /stop
```

### الحل الثاني: تشغيل المشروع بالطريقة الصحيحة

#### من VS Code:
1. افتح VS Code
2. افتح مجلد المشروع (`File > Open Folder`)
3. اختر مجلد `senter`
4. افتح Terminal (`Ctrl + `` أو `View > Terminal`)
5. شغل الأوامر:

```bash
# تحقق من Node.js
node --version
npm --version

# تثبيت التبعيات (أول مرة فقط)
npm install

# تشغيل المشروع
npm run dev
```

#### من ملف التشغيل:
انقر نقرة مزدوجة على `start-project.bat`

### الحل الثالث: تغيير منفذ التشغيل
إذا استمرت المشكلة، غير المنفذ:

```bash
# في VS Code Terminal
npm run dev -- --port 3001
```

ثم افتح: `http://localhost:3001`

### الحل الرابع: حذف ملفات IIS (إذا وجدت)
احذف الملفات التالية إذا كانت موجودة:
- `web.config`
- `Global.asax`
- أي ملفات `.aspx`

## التحقق من الحل

### 1. تأكد من تشغيل Node.js
في Terminal:
```bash
node --version
# يجب أن يظهر رقم الإصدار مثل: v18.17.0
```

### 2. تأكد من تشغيل npm
```bash
npm --version
# يجب أن يظهر رقم الإصدار مثل: 9.6.7
```

### 3. تشغيل المشروع
```bash
npm run dev
```

يجب أن تظهر رسالة مثل:
```
▲ Next.js 14.2.5
- Local:        http://localhost:3000
- ready in 2.3s
```

### 4. فتح المتصفح
اذهب إلى: `http://localhost:3000`

## إذا استمرت المشكلة

### فحص المنافذ المستخدمة:
```cmd
netstat -ano | findstr :3000
```

### إيقاف العمليات على المنفذ 3000:
```cmd
# ابحث عن PID من الأمر السابق ثم:
taskkill /PID [رقم_العملية] /F
```

### استخدام منفذ مختلف:
```bash
npm run dev -- --port 3001
```

## الطريقة الصحيحة للتشغيل

### ❌ خطأ - لا تفعل هذا:
- فتح المجلد مباشرة في المتصفح
- النقر على ملفات HTML مباشرة
- تشغيل المشروع من IIS

### ✅ صحيح - افعل هذا:
1. افتح VS Code
2. افتح مجلد المشروع
3. افتح Terminal
4. شغل `npm run dev`
5. افتح `http://localhost:3000` في المتصفح

## نصائح إضافية

### تعطيل IIS نهائياً (اختياري):
1. اذهب إلى Control Panel > Programs
2. Turn Windows features on or off
3. ألغ تحديد Internet Information Services (IIS)

### استخدام منفذ ثابت:
أضف في `package.json`:
```json
{
  "scripts": {
    "dev": "next dev -p 3000",
    "dev-alt": "next dev -p 3001"
  }
}
```

### فحص الصلاحيات:
تأكد من أن لديك صلاحيات كاملة على مجلد المشروع

## التحقق النهائي

بعد تطبيق الحلول، يجب أن ترى:

1. **في Terminal:**
```
▲ Next.js 14.2.5
- Local:        http://localhost:3000
- ready in 2.3s
```

2. **في المتصفح:**
- الصفحة الرئيسية تظهر باللغة العربية
- التصميم يظهر بشكل صحيح
- الخطوط العربية تعمل

## إذا لم تنجح الحلول

1. أعد تشغيل الكمبيوتر
2. تأكد من تثبيت Node.js بشكل صحيح
3. شغل VS Code كمدير (Run as Administrator)
4. تأكد من عدم وجود برامج antivirus تمنع التشغيل

---

**ملاحظة مهمة**: هذا مشروع Next.js وليس ASP.NET، لذا يجب تشغيله من خلال Node.js وليس IIS!
