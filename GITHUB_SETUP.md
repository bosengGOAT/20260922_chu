# GitHub 연결 가이드

## ✅ 완료된 작업

✅ Git 저장소 초기화 (`git init`)
✅ 모든 파일 커밋 (`git add .` & `git commit`)
✅ Remote 저장소 연결 (`git remote add origin`)

---

## 🚀 GitHub에 푸시하기

### **방법: GitHub Personal Access Token (권장)**

#### 1단계: GitHub에서 Token 생성
1. GitHub 로그인
2. 우측 상단 프로필 → **Settings**
3. 좌측 **Developer settings** → **Personal access tokens**
4. **Tokens (classic)** 클릭
5. **Generate new token (classic)** 클릭
6. **Token name**: `github_token` 입력
7. **Expiration**: `90 days` 선택
8. **Scopes** 체크:
   - ✅ `repo` (전체)
   - ✅ `workflow`
9. **Generate token** 클릭
10. **토큰 복사** (다시 보이지 않으니 꼭 복사!)

#### 2단계: PowerShell에서 푸시

```powershell
cd c:\Users\user\Desktop\20260116_cntjdgus

# GitHub username과 토큰으로 푸시
git push https://USERNAME:TOKEN@github.com/bosengGOAT/20260922_chu.git main
```

**예시:**
```powershell
git push https://bosengGOAT:ghp_abc123xyz...@github.com/bosengGOAT/20260922_chu.git main
```

---

## 📝 현재 상태

### ✅ 로컬 Git 설정 완료
```bash
✓ Repository: 초기화됨
✓ Commits: 1개 (Initial commit)
✓ Branch: main
✓ Files: 
  - index.html
  - styles.css
  - app.js
  - README.md
  - .gitignore
```

---

## 🔐 대안: SSH 키 설정 (더 안전)

### 1단계: SSH 키 생성
```powershell
ssh-keygen -t ed25519 -C "your_email@example.com"
# 또는
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

### 2단계: 공개 키 복사
```powershell
cat $HOME/.ssh/id_ed25519.pub
# 또는
cat $HOME/.ssh/id_rsa.pub
```

### 3단계: GitHub에 추가
1. GitHub 우측 상단 **Settings**
2. **SSH and GPG keys**
3. **New SSH key** 클릭
4. Title: `My Computer`
5. Key: 위에서 복사한 공개 키 붙여넣기
6. **Add SSH key** 클릭

### 4단계: Git 설정 변경
```powershell
cd c:\Users\user\Desktop\20260116_cntjdgus

# SSH URL로 변경
git remote remove origin
git remote add origin git@github.com:bosengGOAT/20260922_chu.git

# 푸시
git push -u origin main
```

---

## ❓ 문제 해결

### Q: `git push` 실패할 때
```powershell
# 1. 현재 설정 확인
git remote -v

# 2. 연결 재설정
git remote remove origin
git remote add origin https://USERNAME:TOKEN@github.com/bosengGOAT/20260922_chu.git

# 3. 다시 시도
git push -u origin main
```

### Q: 권한 오류 (Permission denied)
→ Token을 다시 생성하거나 SSH 키를 확인하세요.

### Q: `fatal: The remote end hung up unexpectedly`
→ 인터넷 연결 확인 후 다시 시도하세요.

---

## 🎯 성공 확인

푸시 완료 후:
```
https://github.com/bosengGOAT/20260922_chu
```
에서 다음 파일들이 보이면 성공입니다:
- ✅ index.html
- ✅ styles.css
- ✅ app.js
- ✅ README.md
- ✅ GITHUB_SETUP.md

---

## 📌 앞으로의 작업

### 변경사항 푸시하기
```powershell
# 1. 변경사항 확인
git status

# 2. 추가
git add .

# 3. 커밋
git commit -m "변경 설명"

# 4. 푸시
git push
```

### 브랜치 작업
```powershell
# 새 브랜치 생성
git checkout -b feature/new-feature

# 수정 후...

# 커밋
git add .
git commit -m "새로운 기능"

# 푸시
git push -u origin feature/new-feature

# GitHub에서 Pull Request 생성
```

---

**이제 GitHub에 연결할 준비가 완료되었습니다!** 🚀
