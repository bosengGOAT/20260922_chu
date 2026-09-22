@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

echo.
echo ===================================
echo 🚀 GitHub에 푸시하기
echo ===================================
echo.

REM GitHub 정보
set GITHUB_USERNAME=bosengGOAT
set GITHUB_REPO=20260922_chu
set GITHUB_BRANCH=main

REM 토큰 입력 받기
echo GitHub Personal Access Token을 입력하세요.
echo (Token은 GitHub Settings에서 생성할 수 있습니다)
echo.
set /p GITHUB_TOKEN="Token 입력: "

if "!GITHUB_TOKEN!"=="" (
    echo ❌ 토큰이 입력되지 않았습니다.
    pause
    exit /b 1
)

echo.
echo ===================================
echo 📝 Git 상태 확인
echo ===================================
git status
echo.

REM 변경사항이 있는지 확인
git status --porcelain >nul
if %errorlevel% equ 0 (
    echo ✅ 상태 확인 완료
) else (
    echo ❌ Git 오류
    pause
    exit /b 1
)

echo.
echo ===================================
echo 📦 파일 추가
echo ===================================
git add .
echo ✅ 모든 파일이 스테이징 영역에 추가되었습니다.
echo.

echo ===================================
echo 💾 커밋 생성
echo ===================================
set /p COMMIT_MSG="커밋 메시지 입력 (기본값: Update): "
if "!COMMIT_MSG!"=="" (
    set COMMIT_MSG=Update
)

git commit -m "!COMMIT_MSG!"
if %errorlevel% neq 0 (
    echo ⚠️  변경사항이 없습니다.
) else (
    echo ✅ 커밋 생성 완료
)
echo.

echo ===================================
echo 🚀 GitHub에 푸시
echo ===================================
git push https://!GITHUB_USERNAME!:!GITHUB_TOKEN!@github.com/!GITHUB_USERNAME!/!GITHUB_REPO!.git !GITHUB_BRANCH!

if %errorlevel% equ 0 (
    echo.
    echo ===================================
    echo ✅ 성공!
    echo ===================================
    echo.
    echo 📎 저장소 확인:
    echo https://github.com/!GITHUB_USERNAME!/!GITHUB_REPO!
    echo.
) else (
    echo.
    echo ❌ 푸시 실패!
    echo.
    echo 💡 문제 해결:
    echo 1. 토큰이 올바른지 확인하세요
    echo 2. 인터넷 연결을 확인하세요
    echo 3. GitHub 저장소 접근 권한을 확인하세요
    echo.
)

pause
