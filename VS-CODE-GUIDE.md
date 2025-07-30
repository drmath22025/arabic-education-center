# 🚀 دليل تشغيل المشروع من Visual Studio Code

## ⚡ البدء السريع

### 1. تثبيت Node.js (إذا لم يكن مثبت)
```bash
# تحقق من وجود Node.js
node --version
npm --version
```

إذا لم تظهر أرقام الإصدارات:
1. حمل Node.js من [nodejs.org](https://nodejs.org)
2. ثبت النسخة LTS
3. أعد تشغيل VS Code

### 2. تثبيت التبعيات
افتح Terminal في VS Code (`Ctrl + `` أو `View > Terminal`) وشغل:
```bash
npm install
```

### 3. إعداد قاعدة البيانات
1. أنشئ حساب في [Supabase](https://supabase.com)
2. أنشئ مشروع جديد
3. في SQL Editor، شغل محتوى ملف `database/schema.sql`
4. احصل على Project URL و API Keys من Settings > API

### 4. إعداد متغيرات البيئة
عدل ملف `.env.local` واملأ القيم الصحيحة:
```env
NEXT_PUBLIC_SUPABASE_URL=https://your-project.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=your-anon-key
SUPABASE_SERVICE_ROLE_KEY=your-service-role-key
```

### 5. تشغيل المشروع
```bash
npm run dev
```

افتح المتصفح على: `http://localhost:3000`

## 🎯 اختصارات VS Code المفيدة

### اختصارات عامة:
- `Ctrl + `` - فتح/إغلاق Terminal
- `Ctrl + Shift + P` - Command Palette
- `Ctrl + P` - البحث عن ملف
- `Ctrl + Shift + E` - Explorer
- `F5` - تشغيل Debugger

### اختصارات التطوير:
- `Ctrl + Space` - IntelliSense
- `F12` - الذهاب إلى التعريف
- `Alt + Shift + F` - تنسيق الكود
- `Ctrl + /` - تعليق/إلغاء تعليق
- `Ctrl + D` - تحديد الكلمة التالية المشابهة

## 📁 هيكل المشروع في VS Code

```
📁 senter/
├── 📁 .vscode/          # إعدادات VS Code
├── 📁 database/         # ملفات قاعدة البيانات
├── 📁 src/
│   ├── 📁 app/          # صفحات Next.js
│   ├── 📁 components/   # مكونات React
│   └── 📁 lib/          # مكتبات مساعدة
├── 📄 .env.local        # متغيرات البيئة
├── 📄 package.json      # تبعيات المشروع
└── 📄 README.md         # دليل المشروع
```

## 🛠️ أوامر VS Code المفيدة

### من Command Palette (`Ctrl + Shift + P`):
- `Tasks: Run Task` - تشغيل المهام المخصصة
- `TypeScript: Restart TS Server` - إعادة تشغيل TypeScript
- `Developer: Reload Window` - إعادة تحميل VS Code
- `Preferences: Open Settings (JSON)` - إعدادات JSON

### مهام مخصصة متاحة:
- **تشغيل خادم التطوير** - `npm run dev`
- **بناء المشروع** - `npm run build`
- **فحص الكود** - `npm run lint`
- **تثبيت التبعيات** - `npm install`

## 🔧 إعدادات VS Code المحسنة

تم إعداد المشروع مع:
- ✅ تنسيق تلقائي عند الحفظ
- ✅ ESLint لفحص الكود
- ✅ Prettier لتنسيق الكود
- ✅ IntelliSense لـ Tailwind CSS
- ✅ Auto-import للمكونات
- ✅ إعدادات TypeScript محسنة

## 🎨 تطوير المكونات

### إنشاء مكون جديد:
1. أنشئ ملف في `src/components/`
2. استخدم snippet `rafce` لإنشاء مكون React
3. أضف TypeScript types
4. استخدم Tailwind للتصميم

### مثال:
```typescript
interface ButtonProps {
  children: React.ReactNode
  onClick?: () => void
  variant?: 'primary' | 'secondary'
}

export default function Button({ children, onClick, variant = 'primary' }: ButtonProps) {
  return (
    <button
      onClick={onClick}
      className={`px-4 py-2 rounded ${
        variant === 'primary' ? 'bg-blue-500 text-white' : 'bg-gray-200'
      }`}
    >
      {children}
    </button>
  )
}
```

## 🐛 تصحيح الأخطاء (Debugging)

### تشغيل Debugger:
1. اضغط `F5` أو اذهب إلى Run and Debug
2. اختر "Next.js: debug full stack"
3. ضع breakpoints في الكود
4. تصفح الموقع لتفعيل الـ breakpoints

### فحص الأخطاء:
- **Terminal**: راقب رسائل الخطأ
- **Problems Panel**: أخطاء TypeScript و ESLint
- **Browser DevTools**: أخطاء JavaScript

## 📱 اختبار التصميم المتجاوب

### في VS Code:
1. شغل `npm run dev`
2. افتح `http://localhost:3000`
3. استخدم DevTools للاختبار على أجهزة مختلفة

### أحجام الشاشات للاختبار:
- **موبايل**: 375px (iPhone)
- **تابلت**: 768px (iPad)
- **دسكتوب**: 1024px+

## 🔍 البحث والاستبدال

### بحث في المشروع:
- `Ctrl + Shift + F` - بحث في جميع الملفات
- `Ctrl + H` - استبدال في الملف الحالي
- `Ctrl + Shift + H` - استبدال في جميع الملفات

### نصائح البحث:
- استخدم regex للبحث المتقدم
- استخدم `.*` للبحث عن أي شيء
- استخدم `\n` للبحث عن أسطر جديدة

## 📦 إدارة التبعيات

### إضافة تبعية جديدة:
```bash
npm install package-name
npm install -D package-name  # للتطوير فقط
```

### تحديث التبعيات:
```bash
npm update
npm outdated  # لرؤية التحديثات المتاحة
```

### حذف تبعية:
```bash
npm uninstall package-name
```

## 🚀 نشر المشروع

### بناء للإنتاج:
```bash
npm run build
npm run start  # اختبار النسخة المبنية
```

### نشر على Vercel:
1. ادفع الكود إلى GitHub
2. اربط المستودع بـ Vercel
3. أضف متغيرات البيئة في Vercel
4. انشر المشروع

## 💡 نصائح للإنتاجية

### استخدام Snippets:
- `rafce` - React Arrow Function Component Export
- `useState` - React useState hook
- `useEffect` - React useEffect hook

### تنظيم الكود:
- استخدم folders للمكونات المترابطة
- اتبع naming conventions
- أضف comments للكود المعقد

### Git Integration:
- `Ctrl + Shift + G` - Source Control
- استخدم VS Code لإدارة Git
- اكتب commit messages واضحة

---

## 🆘 حل المشاكل الشائعة

### المشكلة: "Cannot find module"
**الحل**: 
```bash
rm -rf node_modules package-lock.json
npm install
```

### المشكلة: TypeScript errors
**الحل**: 
- `Ctrl + Shift + P` > "TypeScript: Restart TS Server"
- تحقق من `tsconfig.json`

### المشكلة: Tailwind classes لا تعمل
**الحل**:
- تحقق من `tailwind.config.ts`
- تأكد من import `globals.css`

### المشكلة: Hot reload لا يعمل
**الحل**:
- أعد تشغيل `npm run dev`
- تحقق من firewall settings

---

**🎉 الآن أنت جاهز للتطوير! استمتع بالبرمجة!**
