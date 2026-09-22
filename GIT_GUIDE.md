# 🚀 GitHub 연결 완벽 가이드

## 📌 현재 상태

✅ **로컬 Git 저장소**: 초기화 완료
✅ **파일**: 모두 커밋됨
✅ **GitHub 저장소**: https://github.com/bosengGOAT/20260922_chu

---

## 🎯 가장 간단한 방법 (클릭만!)

### 1️⃣ GitHub Personal Access Token 생성 (5분)

1. **GitHub 로그인**
   - https://github.com/login

2. **우측 상단 프로필 클릭** → **Settings**

3. **좌측 메뉴에서 "Developer settings"**

4. **"Personal access tokens"** → **"Tokens (classic)"**

5. **"Generate new token (classic)" 클릭**

6. **다음 정보 입력:**
   ```
   Token name: diet-app-token
   Expiration: 90 days
   ```

7. **Scopes 체크:**
   - ✅ repo (전체 다 체크)
   - ✅ workflow

8. **"Generate token" 클릭**

9. **토큰 복사** (🔒 중요: 다시 보이지 않음!)
   ```
   ghp_xxxxxxxxxx...
   ```

---

### 2️⃣ PowerShell에서 푸시 (1분)

#### **방법 A: 스크립트 실행 (가장 간단)**

```powershell
cd c:\Users\user\Desktop\20260116_cntjdgus
.\push_to_github.ps1
```

그 다음:
1. Token 입력 (위에서 복사한 것)
2. 커밋 메시지 입력 (또는 엔터)
3. 끝!

#### **방법 B: 직접 명령어**

```powershell
cd c:\Users\user\Desktop\20260116_cntjdgus

# Token 변수에 저장 (안전하게)
$token = "ghp_xxxxxxxxxxxxx" # 위에서 복사한 토큰

# 파일 추가
git add .

# 커밋
git commit -m "Initial commit: Diet Management App"

# 푸시
git push https://bosengGOAT:$token@github.com/bosengGOAT/20260922_chu.git main
```

---

## ✅ 성공 확인

푸시 후 다음 주소에서 파일이 보이면 성공! 🎉

```
https://github.com/bosengGOAT/20260922_chu
```

**확인할 파일:**
- ✅ index.html
- ✅ styles.css
- ✅ app.js
- ✅ README.md
- ✅ GIT_GUIDE.md

---

## 📝 앞으로 업데이트하기

### 작은 변경사항 저장하기

```powershell
cd c:\Users\user\Desktop\20260116_cntjdgus

# 변경사항 확인
git status

# 파일 추가
git add .

# 커밋
git commit -m "기능 추가: OO"

# 푸시
git push origin main
```

### 계속 묻는 Token 문제?

**첫 푸시 후에는 Git Credential Manager가 기억합니다:**
- ✅ 첫 푸시: Token 입력 필요
- ✅ 2번째부터: 자동으로 인증됨

---

## 🔒 보안 팁

❌ **절대 하지 마세요:**
- Token을 코드에 넣기
- Token을 다른 사람에게 알려주기
- Token을 GitHub에 커밋하기

✅ **좋은 방법:**
- Token은 일회용으로 사용
- 필요하면 새로 생성
- 사용하지 않는 Token은 삭제

---

## ❓ 문제 해결

### Q: "fatal: could not read Username"
```
A: Token이 잘못되었거나 만료되었습니다.
   → GitHub에서 새 Token을 생성하세요.
```

### Q: "Permission denied (publickey)"
```
A: SSH 키 문제입니다.
   → HTTPS 방식(Token)을 사용하세요.
```

### Q: "The remote origin does not exist"
```
A: Git 설정이 없습니다.
   → 다음 명령어 실행:
   git remote add origin https://github.com/bosengGOAT/20260922_chu.git
```

### Q: "fatal: The remote end hung up unexpectedly"
```
A: 인터넷 연결 문제입니다.
   → 인터넷 연결 확인 후 다시 시도하세요.
```

---

## 🎓 Git 기본 명령어

```powershell
# 상태 확인
git status

# 변경사항 확인
git diff

# 모든 파일 추가
git add .

# 특정 파일만 추가
git add filename.txt

# 커밋
git commit -m "메시지"

# 푸시 (GitHub에 업로드)
git push origin main

# 풀 (GitHub에서 다운로드)
git pull origin main

# 커밋 히스토리 확인
git log --oneline

# 이전 커밋으로 돌아가기
git checkout commit-hash
```

---

## 🚀 최종 체크리스트

- [ ] GitHub 로그인됨
- [ ] Personal Access Token 생성됨
- [ ] Token 복사됨
- [ ] PowerShell 열었음
- [ ] `push_to_github.ps1` 실행했음
- [ ] GitHub 저장소에서 파일 확인됨

---

**이제 GitHub에 연결되었습니다! 🎉**

더 궁금한 점은 다음을 참고하세요:
- Git 공식 가이드: https://git-scm.com/doc
- GitHub 가이드: https://docs.github.com
