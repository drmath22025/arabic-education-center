# 🚨 حل سريع لخطأ Server Error

## المشكلة التي تواجهها:
```
Server Error in '/' Application.
Configuration Error
```

## الحل السريع (5 دقائق):

### 1. أوقف IIS فوراً
افتح Command Prompt كمدير وشغل:
```cmd
iisreset /stop
```

### 2. تأكد من تثبيت Node.js
```cmd
node --version
```
إذا لم يظهر رقم إصدار، حمل Node.js من [nodejs.org](https://nodejs.org)

### 3. افتح VS Code بالطريقة الصحيحة
1. افتح VS Code
2. File > Open Folder
3. اختر مجلد `senter`
4. اضغط `Ctrl + `` لفتح Terminal

### 4. شغل المشروع من Terminal
```bash
npm install
npm run dev
```

### 5. افتح المتصفح
اذهب إلى: `http://localhost:3000`

## إذا استمر الخطأ:

### جرب منفذ مختلف:
```bash
npm run dev -- --port 3001
```
ثم افتح: `http://localhost:3001`

### أو استخدم ملف التشغيل المحدث:
انقر نقرة مزدوجة على `start-project.bat`

## ⚠️ مهم جداً:
- **لا تفتح** ملفات HTML مباشرة في المتصفح
- **لا تشغل** المشروع من IIS
- **استخدم فقط** `npm run dev` من VS Code Terminal

## النتيجة المطلوبة:
يجب أن ترى في Terminal:
```
▲ Next.js 14.2.5
- Local:        http://localhost:3000
- ready in 2.3s
```

---

**إذا نجح الحل، احذف هذا الملف واتبع `START-HERE.md` للمتابعة**
