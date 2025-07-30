@echo off
chcp 65001 >nul
echo.
echo ========================================
echo      فحص النظام - مركز التعليم العربي
echo ========================================
echo.

echo 🔍 فحص متطلبات النظام...
echo.

REM Check and stop IIS if running
echo [0/5] فحص IIS...
sc query W3SVC >nul 2>&1
if %errorlevel% equ 0 (
    echo ⚠️  IIS يعمل - سيتم إيقافه لتجنب التعارض
    iisreset /stop >nul 2>&1
    echo ✅ تم إيقاف IIS
) else (
    echo ✅ IIS غير مفعل
)
echo.

REM Check Node.js
echo [1/5] فحص Node.js...
node --version >nul 2>&1
if %errorlevel% equ 0 (
    echo ✅ Node.js مثبت: 
    node --version
) else (
    echo ❌ Node.js غير مثبت
    echo    حمل من: https://nodejs.org
)
echo.

REM Check npm
echo [2/5] فحص npm...
npm --version >nul 2>&1
if %errorlevel% equ 0 (
    echo ✅ npm مثبت: 
    npm --version
) else (
    echo ❌ npm غير مثبت
)
echo.

REM Check project files
echo [3/5] فحص ملفات المشروع...
if exist "package.json" (
    echo ✅ package.json موجود
) else (
    echo ❌ package.json غير موجود
)

if exist "src" (
    echo ✅ مجلد src موجود
) else (
    echo ❌ مجلد src غير موجود
)

if exist "next.config.js" (
    echo ✅ next.config.js موجود
) else (
    echo ❌ next.config.js غير موجود
)
echo.

REM Check dependencies
echo [4/5] فحص التبعيات...
if exist "node_modules" (
    echo ✅ التبعيات مثبتة
) else (
    echo ⚠️  التبعيات غير مثبتة
    echo    شغل: npm install
)
echo.

REM Check environment
echo [5/5] فحص متغيرات البيئة...
if exist ".env.local" (
    echo ✅ ملف .env.local موجود
    
    REM Check if file has content
    for /f %%i in (".env.local") do set size=%%~zi
    if %size% gtr 100 (
        echo ✅ الملف يحتوي على بيانات
    ) else (
        echo ⚠️  الملف فارغ أو غير مكتمل
    )
) else (
    echo ❌ ملف .env.local غير موجود
    echo    انسخ من .env.local.example
)
echo.

echo ========================================
echo                 النتيجة
echo ========================================

REM Final check
set ready=1

node --version >nul 2>&1
if %errorlevel% neq 0 set ready=0

if not exist "package.json" set ready=0
if not exist "src" set ready=0
if not exist ".env.local" set ready=0

if %ready% equ 1 (
    echo.
    echo 🎉 النظام جاهز للتشغيل!
    echo.
    echo للتشغيل:
    echo   1. افتح VS Code
    echo   2. افتح Terminal
    echo   3. شغل: npm run dev
    echo.
    echo أو شغل ملف: start-project.bat
    echo.
) else (
    echo.
    echo ❌ النظام غير جاهز
    echo.
    echo يرجى إصلاح المشاكل المذكورة أعلاه
    echo راجع ملف QUICK-START.md للتعليمات
    echo.
)

pause
