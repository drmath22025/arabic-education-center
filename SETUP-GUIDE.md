# دليل تشغيل المشروع من Visual Studio Code

## المتطلبات الأساسية

### 1. تثبيت Node.js
1. اذهب إلى [nodejs.org](https://nodejs.org)
2. حمل النسخة LTS (الموصى بها)
3. شغل ملف التثبيت واتبع التعليمات
4. أعد تشغيل الكمبيوتر بعد التثبيت

### 2. التحقق من التثبيت
افتح Command Prompt أو PowerShell وشغل:
```bash
node --version
npm --version
```

يجب أن تظهر أرقام الإصدارات.

## إعداد المشروع

### 1. فتح المشروع في VS Code
1. افتح Visual Studio Code
2. اذهب إلى File > Open Folder
3. اختر مجلد المشروع `senter`

### 2. تثبيت التبعيات
افتح Terminal في VS Code (Ctrl + ` أو View > Terminal) وشغل:
```bash
npm install
```

### 3. إعداد قاعدة البيانات (Supabase)

#### إنشاء مشروع Supabase:
1. اذهب إلى [supabase.com](https://supabase.com)
2. سجل دخولك أو أنشئ حساب جديد
3. انقر "New Project"
4. املأ البيانات:
   - اسم المشروع: Arabic Education Center
   - كلمة مرور قاعدة البيانات: (اختر كلمة مرور قوية)
   - المنطقة: اختر أقرب منطقة

#### إعداد قاعدة البيانات:
1. في لوحة تحكم Supabase، اذهب إلى "SQL Editor"
2. افتح ملف `database/schema.sql` من VS Code
3. انسخ كامل المحتوى والصقه في SQL Editor
4. انقر "Run" لتنفيذ الاستعلامات

#### الحصول على مفاتيح API:
1. اذهب إلى Settings > API في Supabase
2. انسخ القيم التالية:
   - Project URL
   - anon public key
   - service_role key (احتفظ بها آمنة)

### 4. إعداد متغيرات البيئة
1. في VS Code، انسخ ملف `.env.local.example` إلى `.env.local`
2. افتح `.env.local` واملأ القيم:

```env
NEXT_PUBLIC_SUPABASE_URL=your_supabase_project_url_here
NEXT_PUBLIC_SUPABASE_ANON_KEY=your_anon_key_here
SUPABASE_SERVICE_ROLE_KEY=your_service_role_key_here
ADMIN_USERNAME=admin
ADMIN_PASSWORD=admin123
NEXTAUTH_SECRET=your_random_secret_here
NEXTAUTH_URL=http://localhost:3000
```

## تشغيل المشروع

### 1. تشغيل خادم التطوير
في Terminal في VS Code، شغل:
```bash
npm run dev
```

### 2. فتح المتصفح
افتح المتصفح واذهب إلى:
```
http://localhost:3000
```

## اختبار النظام

### 1. الصفحة الرئيسية
- يجب أن تظهر الصفحة الرئيسية باللغة العربية
- تأكد من ظهور الخطوط العربية بشكل صحيح

### 2. تسجيل طالب
1. انقر "سجل الآن" أو اذهب إلى `/register`
2. املأ النموذج:
   - اسم الطالب: أحمد محمد
   - رقم الطالب: 0501234567
   - رقم ولي الأمر: 0507654321
   - اختر مادة، مدرس، ومجموعة
3. انقر "تسجيل الطالب"
4. راجع البيانات وأكد التسجيل

### 3. لوحة الإدارة
1. اذهب إلى `/admin/login`
2. سجل دخولك:
   - اسم المستخدم: admin
   - كلمة المرور: admin123
3. تصفح التبويبات المختلفة:
   - الطلاب المسجلون
   - المواد الدراسية
   - المدرسون
   - المجموعات

## حل المشاكل الشائعة

### مشكلة: "node is not recognized"
**الحل**: تأكد من تثبيت Node.js وإعادة تشغيل VS Code

### مشكلة: "npm install fails"
**الحل**: 
```bash
npm cache clean --force
npm install
```

### مشكلة: "Cannot connect to Supabase"
**الحل**: 
1. تحقق من صحة متغيرات البيئة في `.env.local`
2. تأكد من تشغيل استعلامات قاعدة البيانات في Supabase

### مشكلة: "Page not found"
**الحل**: تأكد من تشغيل `npm run dev` وأن الخادم يعمل على المنفذ 3000

### مشكلة: الخطوط العربية لا تظهر
**الحل**: تأكد من اتصال الإنترنت لتحميل خطوط Google Fonts

## إضافات VS Code المفيدة

### إضافات موصى بها:
1. **ES7+ React/Redux/React-Native snippets** - لكتابة كود React أسرع
2. **Tailwind CSS IntelliSense** - لمساعدة Tailwind CSS
3. **TypeScript Importer** - لاستيراد TypeScript تلقائياً
4. **Prettier** - لتنسيق الكود
5. **Auto Rename Tag** - لتعديل HTML tags
6. **Bracket Pair Colorizer** - لتلوين الأقواس

### إعداد Prettier:
أنشئ ملف `.prettierrc` في جذر المشروع:
```json
{
  "semi": false,
  "singleQuote": true,
  "tabWidth": 2,
  "trailingComma": "es5"
}
```

## أوامر مفيدة

```bash
# تشغيل خادم التطوير
npm run dev

# بناء المشروع للإنتاج
npm run build

# تشغيل النسخة المبنية
npm run start

# فحص الكود
npm run lint

# تثبيت تبعية جديدة
npm install package-name

# تحديث التبعيات
npm update
```

## نصائح للتطوير

### 1. استخدام Hot Reload
- Next.js يدعم Hot Reload تلقائياً
- احفظ الملف وستظهر التغييرات فوراً في المتصفح

### 2. فحص الأخطاء
- افتح Developer Tools في المتصفح (F12)
- راقب Console للأخطاء

### 3. تطوير المكونات
- جميع المكونات في مجلد `src/components`
- استخدم TypeScript للحصول على IntelliSense

### 4. تعديل التصميم
- ملفات CSS في `src/app/globals.css`
- استخدم Tailwind classes للتصميم السريع

---

**ملاحظة**: تأكد من حفظ جميع الملفات قبل اختبار التغييرات!
