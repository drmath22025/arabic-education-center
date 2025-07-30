# دليل النشر والإنتاج

## نشر المشروع على Vercel

### 1. إعداد المشروع للنشر

```bash
# تأكد من أن المشروع يعمل محلياً
npm run build
npm run start

# تأكد من عدم وجود أخطاء
npm run lint
```

### 2. رفع المشروع إلى GitHub

```bash
git init
git add .
git commit -m "Initial commit: Arabic Education Center"
git branch -M main
git remote add origin <your-github-repo-url>
git push -u origin main
```

### 3. النشر على Vercel

1. اذهب إلى [vercel.com](https://vercel.com)
2. سجل دخولك باستخدام GitHub
3. انقر على "New Project"
4. اختر المستودع الخاص بك
5. اضبط الإعدادات:
   - **Framework Preset**: Next.js
   - **Root Directory**: ./
   - **Build Command**: `npm run build`
   - **Output Directory**: .next
   - **Install Command**: `npm install`

### 4. إعداد متغيرات البيئة في Vercel

في إعدادات المشروع في Vercel، أضف المتغيرات التالية:

```
NEXT_PUBLIC_SUPABASE_URL=your_supabase_project_url
NEXT_PUBLIC_SUPABASE_ANON_KEY=your_supabase_anon_key
SUPABASE_SERVICE_ROLE_KEY=your_supabase_service_role_key
ADMIN_USERNAME=admin
ADMIN_PASSWORD=your_secure_password
NEXTAUTH_SECRET=your_random_secret_key
NEXTAUTH_URL=https://your-domain.vercel.app
```

## نشر المشروع على Netlify

### 1. إعداد ملف netlify.toml

```toml
[build]
  command = "npm run build"
  publish = ".next"

[[redirects]]
  from = "/*"
  to = "/index.html"
  status = 200

[build.environment]
  NODE_VERSION = "18"
```

### 2. النشر

1. اذهب إلى [netlify.com](https://netlify.com)
2. اربط حسابك بـ GitHub
3. اختر المستودع
4. اضبط إعدادات البناء
5. أضف متغيرات البيئة

## إعداد قاعدة البيانات للإنتاج

### 1. تحسين إعدادات Supabase

```sql
-- تحسين الفهارس للأداء
CREATE INDEX CONCURRENTLY IF NOT EXISTS idx_students_search 
ON students USING gin(to_tsvector('arabic', name));

-- إعداد backup تلقائي
-- يتم من لوحة تحكم Supabase

-- تحسين RLS policies
-- راجع وحدث السياسات حسب الحاجة
```

### 2. إعداد SSL والأمان

- تأكد من تفعيل SSL في Supabase
- استخدم HTTPS فقط في الإنتاج
- فعل rate limiting
- راجع صلاحيات قاعدة البيانات

## تحسينات الأداء

### 1. تحسين الصور

```bash
# إضافة next/image optimization
npm install sharp
```

### 2. تحسين الخطوط

```javascript
// في layout.tsx
import { Cairo } from 'next/font/google'

const cairo = Cairo({
  subsets: ['arabic', 'latin'],
  display: 'swap', // تحسين التحميل
  preload: true,
})
```

### 3. إضافة Service Worker (اختياري)

```javascript
// public/sw.js
self.addEventListener('install', (event) => {
  // Cache static assets
})
```

## مراقبة الأداء

### 1. إعداد Analytics

```javascript
// إضافة Google Analytics أو Vercel Analytics
import { Analytics } from '@vercel/analytics/react'

export default function RootLayout({ children }) {
  return (
    <html>
      <body>
        {children}
        <Analytics />
      </body>
    </html>
  )
}
```

### 2. مراقبة الأخطاء

```bash
# إضافة Sentry للمراقبة
npm install @sentry/nextjs
```

## أمان الإنتاج

### 1. تحديث كلمات المرور

```sql
-- تحديث كلمة مرور المدير
UPDATE admin_users 
SET password_hash = 'new_secure_hash'
WHERE username = 'admin';
```

### 2. إعداد CORS

```javascript
// في next.config.js
module.exports = {
  async headers() {
    return [
      {
        source: '/api/:path*',
        headers: [
          { key: 'Access-Control-Allow-Origin', value: 'https://yourdomain.com' },
        ],
      },
    ]
  },
}
```

### 3. تفعيل CSP

```javascript
// إضافة Content Security Policy
const securityHeaders = [
  {
    key: 'Content-Security-Policy',
    value: "default-src 'self'; script-src 'self' 'unsafe-eval';"
  }
]
```

## النسخ الاحتياطي

### 1. نسخ احتياطي لقاعدة البيانات

```bash
# استخدام Supabase CLI
supabase db dump --file backup.sql
```

### 2. نسخ احتياطي للكود

```bash
# Git tags للإصدارات
git tag -a v1.0.0 -m "Production release v1.0.0"
git push origin v1.0.0
```

## اختبار الإنتاج

### 1. اختبار الأداء

```bash
# استخدام Lighthouse
npm install -g lighthouse
lighthouse https://your-domain.com --locale=ar
```

### 2. اختبار الأمان

```bash
# فحص الثغرات الأمنية
npm audit
npm audit fix
```

### 3. اختبار التوافق

- اختبر على متصفحات مختلفة
- اختبر على أجهزة مختلفة
- اختبر سرعة الإنترنت البطيئة
- اختبر دعم RTL

## صيانة دورية

### 1. تحديث التبعيات

```bash
# فحص التحديثات
npm outdated

# تحديث آمن
npm update

# تحديث major versions بحذر
npm install package@latest
```

### 2. مراقبة الأداء

- راقب استخدام قاعدة البيانات
- راقب أوقات الاستجابة
- راقب معدل الأخطاء
- راقب استخدام الذاكرة

### 3. تنظيف البيانات

```sql
-- حذف البيانات القديمة (اختياري)
DELETE FROM students 
WHERE created_at < NOW() - INTERVAL '2 years';
```

## استكشاف الأخطاء

### مشاكل شائعة:

1. **خطأ في الاتصال بقاعدة البيانات**
   - تحقق من متغيرات البيئة
   - تحقق من صلاحيات Supabase

2. **مشاكل في التصميم المتجاوب**
   - اختبر على أجهزة حقيقية
   - استخدم أدوات المطور

3. **مشاكل في الخطوط العربية**
   - تأكد من تحميل الخطوط
   - تحقق من إعدادات RTL

4. **بطء في التحميل**
   - حسن الصور
   - استخدم CDN
   - حسن استعلامات قاعدة البيانات

---

**ملاحظة**: تأكد من اختبار جميع الوظائف في بيئة الإنتاج قبل الإطلاق الرسمي.
