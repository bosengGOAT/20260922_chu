# 🚀 GitHub에 즉시 푸시하기 (3단계)

## ⚡ 가장 빠른 방법 (5분)

### 1️⃣ GitHub Token 받기 (2분)

**GitHub 접속:**
```
https://github.com/settings/tokens
```

**또는 이 경로로:**
1. GitHub 로그인 → 우측 상단 프로필
2. **Settings** → **Developer settings** → **Personal access tokens**
3. **Generate new token (classic)**
4. 이름: `diet-app-token`
5. 만료: 90 days
6. **Scopes:** repo, workflow 체크
7. **Generate token** 클릭
8. **토큰 복사** 🔒

```
예: ghp_xxxxxxxxxxxxxxxxxxxxxxxxxxxx
```

---

### 2️⃣ PowerShell 실행 (2분)

```powershell
cd c:\Users\user\Desktop\20260116_cntjdgus
.\push_to_github.ps1
```

**또는 직접 명령어:**

```powershell
cd c:\Users\user\Desktop\20260116_cntjdgus

git add .
git commit -m "Diet Management App - HTML Version"
git push https://bosengGOAT:YOUR_TOKEN@github.com/bosengGOAT/20260922_chu.git main
```

**YOUR_TOKEN 자리에 위에서 복사한 토큰 붙여넣기!**

---

### 3️⃣ 확인 (1분)

```
https://github.com/bosengGOAT/20260922_chu
```

이 주소에서 파일들이 보이면 성공! ✅

---

## 📁 GitHub에 업로드될 파일들

```
✅ index.html          - 메인 페이지 (모바일 앱 스타일)
✅ styles.css          - 디자인 (그래디언트, 카드 레이아웃)
✅ app.js              - 기능 로직 (프로필, 식사기록, 추천)
✅ README.md           - 프로젝트 설명서
✅ GIT_GUIDE.md        - Git 가이드
✅ GITHUB_SETUP.md     - GitHub 연결 가이드
✅ push_to_github.ps1  - 자동 푸시 스크립트
✅ .gitignore          - Git 무시 설정
```

---

## 🎯 GitHub에 연결되면 무엇을 할 수 있나요?

✅ **온라인 백업** - 코드가 안전하게 보관됨
✅ **협업** - 다른 사람과 함께 작업 가능
✅ **버전 관리** - 모든 변경 이력 추적
✅ **공유** - 링크로 다른 사람에게 공유
✅ **배포** - GitHub Pages로 웹사이트 공개

---

## 💡 추가 팁

### 매번 Token을 입력하지 않으려면?

첫 푸시 후 **Git Credential Manager**가 자동으로 저장합니다.
다음부터는:

```powershell
git push origin main
```

이것만 입력하면 됩니다!

---

### 계속 변경사항을 업로드하려면?

```powershell
# 파일 수정 후

git add .
git commit -m "변경 내용 설명"
git push
```

끝!

---

## ❓ 문제 발생 시

### "fatal: could not read Username"
→ Token이 잘못되었거나 만료됨
→ 새로운 Token 생성하기

### "Permission denied"
→ Token 권한 부족
→ repo, workflow 권한 다시 확인

### "remote not found"
→ GitHub 저장소 URL 확인
→ Username이 맞나요?

---

## ✨ 축하합니다! 🎉

이제 당신의 식단관리 앱이 GitHub에서 관리됩니다!

**다음은?**
1. Go Live로 앱 사용해보기
2. 기능 추가/수정하기
3. GitHub에 계속 업로드하기
4. 친구들과 링크 공유하기

---

**궁금한 점? GIT_GUIDE.md를 읽어보세요! 📖**
