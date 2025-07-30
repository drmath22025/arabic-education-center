# 🎯 ابدأ من هنا - تشغيل مركز التعليم العربي

## 🚀 خطوات التشغيل السريع

### الخطوة 1: تحقق من النظام
شغل ملف `check-system.bat` للتحقق من جاهزية النظام:
```
double-click على check-system.bat
```

### الخطوة 2: إذا كان Node.js غير مثبت
1. اذهب إلى [nodejs.org](https://nodejs.org)
2. حمل النسخة LTS (الموصى بها)
3. ثبت البرنامج
4. أعد تشغيل الكمبيوتر
5. أعد تشغيل `check-system.bat`

### الخطوة 3: تشغيل المشروع
#### الطريقة الأولى - ملف التشغيل التلقائي:
```
double-click على start-project.bat
```

#### الطريقة الثانية - من VS Code:
1. افتح VS Code
2. افتح مجلد المشروع (`File > Open Folder`)
3. افتح Terminal (`Ctrl + `` أو `View > Terminal`)
4. شغل الأوامر:
```bash
npm install  # أول مرة فقط
npm run dev  # تشغيل المشروع
```

### الخطوة 4: إعداد قاعدة البيانات
1. اذهب إلى [supabase.com](https://supabase.com)
2. أنشئ حساب جديد
3. أنشئ مشروع جديد
4. في SQL Editor، انسخ والصق محتوى `database/schema.sql`
5. شغل الاستعلام
6. اذهب إلى Settings > API واحصل على:
   - Project URL
   - anon public key
   - service_role key

### الخطوة 5: إعداد متغيرات البيئة
1. افتح ملف `.env.local` في VS Code
2. عدل القيم التالية:
```env
NEXT_PUBLIC_SUPABASE_URL=https://your-project.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=your-anon-key-here
SUPABASE_SERVICE_ROLE_KEY=your-service-role-key-here
```

### الخطوة 6: اختبار النظام
افتح المتصفح على `http://localhost:3000` واختبر:

1. **الصفحة الرئيسية**: تأكد من ظهور التصميم العربي
2. **تسجيل طالب**: `/register` - اختبر تسجيل طالب جديد
3. **لوحة الإدارة**: `/admin/login` - سجل دخول بـ admin/admin123

## 📁 ملفات مهمة للمراجعة

| الملف | الوصف |
|-------|--------|
| `QUICK-START.md` | دليل البدء السريع |
| `VS-CODE-GUIDE.md` | دليل VS Code المفصل |
| `SETUP-GUIDE.md` | دليل الإعداد الشامل |
| `README.md` | دليل المشروع الكامل |
| `database/setup-instructions.md` | تعليمات قاعدة البيانات |

## 🎯 روابط الاختبار

بعد تشغيل `npm run dev`:

- **الصفحة الرئيسية**: http://localhost:3000
- **تسجيل طالب**: http://localhost:3000/register
- **لوحة الإدارة**: http://localhost:3000/admin/login
- **لوحة التحكم**: http://localhost:3000/admin/dashboard

## 🔧 أوامر VS Code المفيدة

### في Terminal:
```bash
npm run dev      # تشغيل التطوير
npm run build    # بناء للإنتاج
npm run lint     # فحص الكود
npm run format   # تنسيق الكود
```

### اختصارات VS Code:
- `Ctrl + `` - فتح Terminal
- `Ctrl + Shift + P` - Command Palette
- `F5` - تشغيل Debugger
- `Ctrl + /` - تعليق الكود

## 🆘 حل المشاكل الشائعة

### "node is not recognized"
**الحل**: ثبت Node.js من nodejs.org وأعد تشغيل VS Code

### "Cannot connect to Supabase"
**الحل**: تحقق من `.env.local` وتأكد من صحة مفاتيح Supabase

### "Port 3000 is already in use"
**الحل**: 
```bash
# أوقف العملية الحالية بـ Ctrl+C ثم:
npm run dev
```

### الخطوط العربية لا تظهر
**الحل**: تأكد من اتصال الإنترنت لتحميل Google Fonts

## 📞 بيانات الاختبار

### لوحة الإدارة:
- اسم المستخدم: `admin`
- كلمة المرور: `admin123`

### تسجيل طالب تجريبي:
- اسم الطالب: `أحمد محمد علي`
- رقم الطالب: `0501234567`
- رقم ولي الأمر: `0507654321`

## 🎉 مبروك!

إذا وصلت هنا ونجح كل شيء، فالمشروع جاهز للاستخدام!

### الخطوات التالية:
1. استكشف المشروع وجرب جميع الوظائف
2. اقرأ `FEATURES.md` لمعرفة جميع المميزات
3. راجع `DEPLOYMENT.md` للنشر على الإنترنت
4. طور وأضف مميزات جديدة حسب احتياجاتك

---

**💡 نصيحة**: احتفظ بهذا الملف مفتوحاً أثناء التطوير للرجوع إليه عند الحاجة!
