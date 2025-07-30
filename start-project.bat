@echo off
chcp 65001 >nul
echo.
echo ========================================
echo    مركز التعليم العربي - تشغيل المشروع
echo ========================================
echo.

REM Stop IIS if running to avoid conflicts
echo 🛑 إيقاف IIS لتجنب التعارض...
iisreset /stop >nul 2>&1
echo.

REM Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js غير مثبت!
    echo.
    echo يرجى اتباع الخطوات التالية:
    echo 1. اذهب إلى https://nodejs.org
    echo 2. حمل النسخة LTS
    echo 3. ثبت البرنامج مع الإعدادات الافتراضية
    echo 4. أعد تشغيل الكمبيوتر
    echo 5. أعد تشغيل هذا الملف
    echo.
    echo راجع ملف INSTALL-NODEJS-GUIDE.md للتعليمات المفصلة
    echo.
    pause
    exit /b 1
)

echo ✅ Node.js مثبت
node --version
npm --version
echo.

REM Check if node_modules exists
if not exist "node_modules" (
    echo 📦 تثبيت التبعيات...
    npm install
    if %errorlevel% neq 0 (
        echo ❌ فشل في تثبيت التبعيات
        pause
        exit /b 1
    )
    echo ✅ تم تثبيت التبعيات بنجاح
    echo.
)

REM Check if .env.local exists
if not exist ".env.local" (
    echo ⚠️  ملف .env.local غير موجود
    echo يرجى إعداد متغيرات البيئة أولاً
    echo راجع ملف QUICK-START.md للتعليمات
    echo.
    pause
    exit /b 1
)

echo 🚀 تشغيل خادم التطوير...
echo.
echo المشروع سيعمل على: http://localhost:3000
echo.
echo للإيقاف: اضغط Ctrl+C
echo.

npm run dev
