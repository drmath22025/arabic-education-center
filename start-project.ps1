# PowerShell script to start the Arabic Education Center project
# تشغيل مشروع مركز التعليم العربي

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "   مركز التعليم العربي - تشغيل المشروع" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Stop IIS to avoid conflicts
Write-Host "🛑 إيقاف IIS لتجنب التعارض..." -ForegroundColor Yellow
try {
    Stop-Service -Name "W3SVC" -Force -ErrorAction SilentlyContinue
    Write-Host "✅ تم إيقاف IIS" -ForegroundColor Green
} catch {
    Write-Host "ℹ️  IIS غير مفعل" -ForegroundColor Gray
}
Write-Host ""

# Check Node.js
Write-Host "🔍 فحص Node.js..." -ForegroundColor Yellow
try {
    $nodeVersion = node --version 2>$null
    if ($nodeVersion) {
        Write-Host "✅ Node.js مثبت: $nodeVersion" -ForegroundColor Green
        
        $npmVersion = npm --version 2>$null
        Write-Host "✅ npm مثبت: $npmVersion" -ForegroundColor Green
    } else {
        throw "Node.js not found"
    }
} catch {
    Write-Host "❌ Node.js غير مثبت!" -ForegroundColor Red
    Write-Host ""
    Write-Host "يرجى تثبيت Node.js من الرابط التالي:" -ForegroundColor Yellow
    Write-Host "https://nodejs.org" -ForegroundColor Blue
    Write-Host ""
    Write-Host "بعد التثبيت، أعد تشغيل هذا الملف" -ForegroundColor Yellow
    Read-Host "اضغط Enter للخروج"
    exit 1
}
Write-Host ""

# Check if node_modules exists
if (-not (Test-Path "node_modules")) {
    Write-Host "📦 تثبيت التبعيات..." -ForegroundColor Yellow
    try {
        npm install
        Write-Host "✅ تم تثبيت التبعيات بنجاح" -ForegroundColor Green
    } catch {
        Write-Host "❌ فشل في تثبيت التبعيات" -ForegroundColor Red
        Read-Host "اضغط Enter للخروج"
        exit 1
    }
    Write-Host ""
}

# Check environment file
if (-not (Test-Path ".env.local")) {
    Write-Host "⚠️  ملف .env.local غير موجود" -ForegroundColor Yellow
    Write-Host "يرجى إعداد متغيرات البيئة أولاً" -ForegroundColor Yellow
    Write-Host "راجع ملف URGENT-FIX.md للتعليمات" -ForegroundColor Yellow
    Write-Host ""
    Read-Host "اضغط Enter للمتابعة رغم ذلك"
}

# Kill any process using port 3000
Write-Host "🔍 فحص المنفذ 3000..." -ForegroundColor Yellow
try {
    $process = Get-NetTCPConnection -LocalPort 3000 -ErrorAction SilentlyContinue
    if ($process) {
        Write-Host "⚠️  المنفذ 3000 مستخدم، سيتم تحرير المنفذ..." -ForegroundColor Yellow
        $processId = (Get-Process -Id $process.OwningProcess -ErrorAction SilentlyContinue).Id
        if ($processId) {
            Stop-Process -Id $processId -Force -ErrorAction SilentlyContinue
            Write-Host "✅ تم تحرير المنفذ 3000" -ForegroundColor Green
        }
    }
} catch {
    # Port is free
}

Write-Host "🚀 تشغيل خادم التطوير..." -ForegroundColor Green
Write-Host ""
Write-Host "المشروع سيعمل على: http://localhost:3000" -ForegroundColor Cyan
Write-Host ""
Write-Host "للإيقاف: اضغط Ctrl+C" -ForegroundColor Yellow
Write-Host ""

# Start the development server
try {
    npm run dev
} catch {
    Write-Host ""
    Write-Host "❌ فشل في تشغيل المشروع" -ForegroundColor Red
    Write-Host "تحقق من:" -ForegroundColor Yellow
    Write-Host "1. تثبيت Node.js بشكل صحيح" -ForegroundColor White
    Write-Host "2. وجود ملف package.json" -ForegroundColor White
    Write-Host "3. تثبيت التبعيات بـ npm install" -ForegroundColor White
    Write-Host ""
    Read-Host "اضغط Enter للخروج"
}
