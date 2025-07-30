# 🎓 مركز التعليم العربي - موقع تجريبي

![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Live-brightgreen)
![HTML5](https://img.shields.io/badge/HTML5-E34F26?logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?logo=javascript&logoColor=black)
![Arabic](https://img.shields.io/badge/Language-Arabic-green)
![RTL](https://img.shields.io/badge/RTL-Supported-orange)
![License](https://img.shields.io/badge/License-MIT-yellow)

موقع تجريبي احترافي ومتجاوب تماماً للمراكز التعليمية العربية، مبني باستخدام HTML5 و CSS3 و JavaScript مع دعم كامل للغة العربية.

## 🌐 العرض المباشر

[**مشاهدة الموقع المباشر**](https://yourusername.github.io/arabic-education-center) | [**صفحة GitHub**](https://github.com/yourusername/arabic-education-center)

## 📁 ملفات الموقع

- `index.html` - **الصفحة الرئيسية** (صفحة الترحيب والتنقل)
- `register.html` - **تسجيل الطلاب** (نموذج تفاعلي كامل)
- `admin.html` - **لوحة التحكم** (تسجيل دخول + إحصائيات)

## 🌟 المميزات الرئيسية

### 🎨 تصميم عربي أصيل

- **دعم RTL كامل** - واجهة مصممة خصيصاً للغة العربية
- **خطوط عربية محسنة** - Cairo مع تحسينات خاصة
- **ألوان متناسقة** - تدرجات جميلة ومتناسقة
- **تخطيط متجاوب** - يعمل بسلاسة على جميع الأجهزة

### 📱 صفحة التسجيل

- ✅ نموذج تسجيل تفاعلي كامل
- ✅ قوائم ديناميكية للمواد والمدرسين والمجموعات
- ✅ التحقق من صحة البيانات
- ✅ رسائل نجاح وخطأ واضحة
- ✅ بيانات تجريبية شاملة

### 🔧 لوحة التحكم الإدارية

- ✅ نظام تسجيل دخول آمن (admin / 123456)
- ✅ إحصائيات تفاعلية ومرئية
- ✅ إدارة المدرسين مع ربطهم بالمواد
- ✅ إدارة المجموعات مع الجداول الزمنية والسعة
- ✅ عرض احترافي لقائمة الطلاب المسجلين
- ✅ فلاتر بحث متقدمة
- ✅ إحصائيات شاملة

## التقنيات المستخدمة

- **Frontend**: Next.js 14+ مع TypeScript
- **Styling**: Tailwind CSS مع دعم RTL
- **Database**: Supabase (PostgreSQL)
- **Authentication**: نظام مصادقة مخصص
- **Fonts**: خطوط عربية (Cairo, Tajawal, Amiri)
- **Icons**: Lucide React

## متطلبات التشغيل

- Node.js 18+
- npm أو yarn أو pnpm
- حساب Supabase

## التثبيت والإعداد

### 1. تحميل المشروع

```bash
git clone <repository-url>
cd arabic-education-center
```

### 2. تثبيت التبعيات

```bash
npm install
# أو
yarn install
# أو
pnpm install
```

### 3. إعداد قاعدة البيانات

1. أنشئ مشروع جديد في [Supabase](https://supabase.com)
2. اذهب إلى SQL Editor في لوحة تحكم Supabase
3. انسخ والصق محتوى ملف `database/schema.sql`
4. شغل الاستعلام لإنشاء الجداول والبيانات التجريبية

### 4. إعداد متغيرات البيئة

```bash
cp .env.local.example .env.local
```

املأ الملف بالقيم الصحيحة:

```env
NEXT_PUBLIC_SUPABASE_URL=your_supabase_project_url
NEXT_PUBLIC_SUPABASE_ANON_KEY=your_supabase_anon_key
SUPABASE_SERVICE_ROLE_KEY=your_supabase_service_role_key
ADMIN_USERNAME=admin
ADMIN_PASSWORD=your_secure_password
NEXTAUTH_SECRET=your_random_secret_key
NEXTAUTH_URL=http://localhost:3000
```

### 5. تشغيل المشروع

```bash
npm run dev
# أو
yarn dev
# أو
pnpm dev
```

افتح [http://localhost:3000](http://localhost:3000) في المتصفح.

## بيانات الاختبار

### تسجيل دخول الإدارة:

- **اسم المستخدم**: admin
- **كلمة المرور**: admin123

### البيانات التجريبية:

- 8 مواد دراسية
- 8 مدرسين
- 8 مجموعات مع جداول زمنية مختلفة

## هيكل المشروع

```
src/
├── app/                    # صفحات Next.js (App Router)
│   ├── admin/             # صفحات الإدارة
│   ├── register/          # صفحة تسجيل الطلاب
│   └── page.tsx           # الصفحة الرئيسية
├── components/            # المكونات القابلة لإعادة الاستخدام
│   ├── ui/               # مكونات واجهة المستخدم الأساسية
│   └── admin/            # مكونات لوحة التحكم الإدارية
├── lib/                  # المكتبات والأدوات المساعدة
│   ├── supabase.ts       # إعداد Supabase والدوال
│   ├── auth.ts           # نظام المصادقة
│   └── utils.ts          # دوال مساعدة
└── styles/               # ملفات التنسيق
```

## الميزات التقنية

### الأمان:

- Row Level Security (RLS) في Supabase
- حماية صفحات الإدارة بـ middleware
- تشفير كلمات المرور
- التحقق من صحة البيانات في الخادم والعميل

### الاستجابة:

- تصميم متجاوب يعمل على جميع الأجهزة
- دعم كامل للغة العربية وRTL
- خطوط عربية محسنة
- تحسين الأداء والسرعة

### تجربة المستخدم:

- رسائل تأكيد وتنبيهات واضحة
- حالات التحميل والأخطاء
- تنقل سهل وبديهي
- واجهة عربية أصيلة

## الاستخدام

### للطلاب:

1. اذهب إلى الصفحة الرئيسية
2. انقر على "سجل الآن"
3. املأ بيانات الطالب
4. اختر المادة، المدرس، والمجموعة
5. راجع البيانات وأكد التسجيل

### للإدارة:

1. اذهب إلى `/admin/login`
2. سجل دخولك بالبيانات الإدارية
3. استخدم التبويبات لإدارة:
   - الطلاب المسجلين
   - المواد الدراسية
   - المدرسين
   - المجموعات

## التطوير والمساهمة

### إضافة ميزات جديدة:

1. أنشئ branch جديد
2. اتبع نمط التسمية العربي
3. اختبر الميزات على جميع الأجهزة
4. تأكد من دعم RTL

### اختبار الجودة:

```bash
npm run lint      # فحص الكود
npm run build     # بناء المشروع
npm run start     # تشغيل النسخة المبنية
```

## الدعم والمساعدة

للحصول على المساعدة أو الإبلاغ عن مشاكل:

1. راجع ملف `database/setup-instructions.md`
2. تأكد من إعداد Supabase بشكل صحيح
3. تحقق من متغيرات البيئة

## الترخيص

هذا المشروع مفتوح المصدر ومتاح للاستخدام التعليمي والتجاري.

---

**ملاحظة**: هذا المشروع مصمم خصيصاً للمراكز التعليمية العربية مع مراعاة الثقافة والاحتياجات المحلية.
