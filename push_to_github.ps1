# GitHub Push 스크립트
# 사용법: PowerShell에서 실행
# .\push_to_github.ps1

Write-Host "`n===================================" -ForegroundColor Cyan
Write-Host "🚀 GitHub에 푸시하기" -ForegroundColor Green
Write-Host "===================================" -ForegroundColor Cyan
Write-Host ""

# GitHub 정보
$GITHUB_USERNAME = "bosengGOAT"
$GITHUB_REPO = "20260922_chu"
$GITHUB_BRANCH = "main"

# 토큰 입력받기
Write-Host "GitHub Personal Access Token을 입력하세요." -ForegroundColor Yellow
Write-Host "(Token은 GitHub Settings에서 생성할 수 있습니다)" -ForegroundColor Gray
Write-Host ""

$secureToken = Read-Host "Token 입력" -AsSecureString
$GITHUB_TOKEN = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToCoTaskMemUnicode($secureToken))

if (-not $GITHUB_TOKEN) {
    Write-Host "❌ 토큰이 입력되지 않았습니다." -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "===================================" -ForegroundColor Cyan
Write-Host "📝 Git 상태 확인" -ForegroundColor Green
Write-Host "===================================" -ForegroundColor Cyan
git status
Write-Host ""

Write-Host "===================================" -ForegroundColor Cyan
Write-Host "📦 파일 추가" -ForegroundColor Green
Write-Host "===================================" -ForegroundColor Cyan
git add .
Write-Host "✅ 모든 파일이 스테이징 영역에 추가되었습니다." -ForegroundColor Green
Write-Host ""

Write-Host "===================================" -ForegroundColor Cyan
Write-Host "💾 커밋 생성" -ForegroundColor Green
Write-Host "===================================" -ForegroundColor Cyan
$COMMIT_MSG = Read-Host "커밋 메시지 입력 (기본값: Update)"
if (-not $COMMIT_MSG) {
    $COMMIT_MSG = "Update"
}

git commit -m $COMMIT_MSG
if ($LASTEXITCODE -eq 0) {
    Write-Host "✅ 커밋 생성 완료" -ForegroundColor Green
} else {
    Write-Host "⚠️  변경사항이 없습니다." -ForegroundColor Yellow
}
Write-Host ""

Write-Host "===================================" -ForegroundColor Cyan
Write-Host "🚀 GitHub에 푸시" -ForegroundColor Green
Write-Host "===================================" -ForegroundColor Cyan
$GITHUB_URL = "https://$($GITHUB_USERNAME):$($GITHUB_TOKEN)@github.com/$($GITHUB_USERNAME)/$($GITHUB_REPO).git"
git push $GITHUB_URL $GITHUB_BRANCH

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "===================================" -ForegroundColor Green
    Write-Host "✅ 성공!" -ForegroundColor Green
    Write-Host "===================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "📎 저장소 확인:" -ForegroundColor Cyan
    Write-Host "https://github.com/$GITHUB_USERNAME/$GITHUB_REPO" -ForegroundColor Blue
    Write-Host ""
} else {
    Write-Host ""
    Write-Host "===================================" -ForegroundColor Red
    Write-Host "❌ 푸시 실패!" -ForegroundColor Red
    Write-Host "===================================" -ForegroundColor Red
    Write-Host ""
    Write-Host "💡 문제 해결:" -ForegroundColor Yellow
    Write-Host "1. 토큰이 올바른지 확인하세요" -ForegroundColor Gray
    Write-Host "2. 인터넷 연결을 확인하세요" -ForegroundColor Gray
    Write-Host "3. GitHub 저장소 접근 권한을 확인하세요" -ForegroundColor Gray
    Write-Host ""
}

Read-Host "엔터 키를 눌러 끝내기"
