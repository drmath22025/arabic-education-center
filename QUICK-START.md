# 🚀 البدء السريع - مركز التعليم العربي

## ✅ قائمة التحقق السريعة

### 1. تثبيت Node.js
- [ ] حمل من [nodejs.org](https://nodejs.org)
- [ ] ثبت النسخة LTS
- [ ] أعد تشغيل الكمبيوتر
- [ ] تحقق: `node --version` و `npm --version`

### 2. إعداد المشروع
```bash
# في VS Code Terminal
npm install
```

### 3. إعداد Supabase
- [ ] أنشئ حساب في [supabase.com](https://supabase.com)
- [ ] أنشئ مشروع جديد
- [ ] في SQL Editor، شغل محتوى `database/schema.sql`
- [ ] احصل على Project URL و API Keys

### 4. إعداد متغيرات البيئة
عدل `.env.local`:
```env
NEXT_PUBLIC_SUPABASE_URL=https://your-project.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=your-anon-key
SUPABASE_SERVICE_ROLE_KEY=your-service-role-key
```

### 5. تشغيل المشروع
```bash
npm run dev
```

### 6. اختبار النظام
- [ ] افتح `http://localhost:3000`
- [ ] اختبر تسجيل طالب: `/register`
- [ ] اختبر لوحة الإدارة: `/admin/login` (admin/admin123)

## 🎯 روابط سريعة

| الصفحة | الرابط | الوصف |
|---------|---------|--------|
| الرئيسية | `http://localhost:3000` | الصفحة الرئيسية |
| تسجيل طالب | `http://localhost:3000/register` | نموذج تسجيل الطلاب |
| لوحة الإدارة | `http://localhost:3000/admin/login` | تسجيل دخول الإدارة |
| لوحة التحكم | `http://localhost:3000/admin/dashboard` | إدارة النظام |

## 🔧 أوامر مفيدة

```bash
# تشغيل التطوير
npm run dev

# بناء للإنتاج
npm run build

# فحص الكود
npm run lint

# تنسيق الكود
npm run format

# فحص TypeScript
npm run type-check
```

## 🆘 حل المشاكل السريع

### Node.js غير مثبت
```bash
# خطأ: 'node' is not recognized
```
**الحل**: ثبت Node.js من nodejs.org وأعد تشغيل VS Code

### خطأ في التبعيات
```bash
# خطأ: Cannot find module
npm install
```

### خطأ في Supabase
```bash
# خطأ: Invalid API key
```
**الحل**: تحقق من `.env.local` وتأكد من صحة المفاتيح

### الخطوط العربية لا تظهر
**الحل**: تأكد من اتصال الإنترنت لتحميل Google Fonts

## 📞 بيانات الاختبار

### لوحة الإدارة:
- **اسم المستخدم**: admin
- **كلمة المرور**: admin123

### تسجيل طالب تجريبي:
- **اسم الطالب**: أحمد محمد علي
- **رقم الطالب**: 0501234567
- **رقم ولي الأمر**: 0507654321
- **المادة**: الرياضيات
- **المدرس**: أحمد محمد علي
- **المجموعة**: المجموعة الأولى

---

## 🎉 مبروك! المشروع جاهز للاستخدام

إذا واجهت أي مشاكل، راجع:
- `SETUP-GUIDE.md` - دليل مفصل
- `VS-CODE-GUIDE.md` - دليل VS Code
- `README.md` - دليل المشروع الكامل
