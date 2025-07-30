@echo off
chcp 65001 >nul
echo.
echo ========================================
echo    تحديث تلقائي للموقع على GitHub
echo ========================================
echo.

REM التحقق من وجود تغييرات
git status --porcelain > temp_status.txt
set /p changes=<temp_status.txt
del temp_status.txt

if "%changes%"=="" (
    echo ✅ لا توجد تغييرات للرفع
    echo.
    pause
    exit /b 0
)

echo 📁 الملفات المتغيرة:
git status --short
echo.

REM إضافة جميع التغييرات
echo 📤 إضافة التغييرات...
git add .

REM عمل commit
set /p commit_msg="💬 أدخل رسالة التحديث (أو اضغط Enter للرسالة الافتراضية): "
if "%commit_msg%"=="" set commit_msg=Update website files

echo.
echo 💾 حفظ التغييرات...
git commit -m "%commit_msg%"

if %errorlevel% neq 0 (
    echo ❌ فشل في حفظ التغييرات
    pause
    exit /b 1
)

REM رفع التحديثات
echo.
echo 🚀 رفع التحديثات إلى GitHub...
git push origin main

if %errorlevel% neq 0 (
    echo ❌ فشل في رفع التحديثات
    echo.
    echo تأكد من:
    echo - الاتصال بالإنترنت
    echo - صحة بيانات GitHub
    echo - وجود صلاحيات الكتابة
    echo.
    pause
    exit /b 1
)

echo.
echo ✅ تم رفع التحديثات بنجاح!
echo.
echo 🌐 الموقع متاح على:
echo https://drmath22025.github.io/arabic-education-center
echo.
echo ⏱️ قد يستغرق 2-5 دقائق لظهور التحديثات
echo.
pause
