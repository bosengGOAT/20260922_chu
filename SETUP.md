# 식단관리 앱 설치 및 실행 가이드

## 📁 프로젝트 구조

```
20260116_cntjdgus/
├── src/
│   ├── components/
│   │   ├── ProfileForm.tsx      ✓ 프로필 생성/수정
│   │   ├── MealTracker.tsx      ✓ 식사 기록 (아침/점심/저녁)
│   │   ├── DailyStats.tsx       ✓ 오늘의 통계 표시
│   │   └── Recommendation.tsx   ✓ 맞춤 추천
│   ├── types/
│   │   └── index.ts             ✓ TypeScript 인터페이스
│   ├── utils/
│   │   ├── storage.ts           ✓ 로컬스토리지 관리
│   │   └── recommendations.ts   ✓ 추천 엔진 & 칼로리 계산
│   ├── App.tsx                  ✓ 메인 앱 컴포넌트
│   ├── main.tsx                 ✓ 엔트리 포인트
│   └── index.css                ✓ 글로벌 스타일
├── public/
│   └── index.html               ✓ HTML 템플릿
├── package.json                 ✓ 프로젝트 설정
├── tsconfig.json                ✓ TypeScript 설정
├── tsconfig.node.json           ✓ Node TypeScript 설정
├── vite.config.ts               ✓ Vite 번들러 설정
├── index.html                   ✓ 메인 HTML
├── README.md                    ✓ 프로젝트 설명서
├── SETUP.md                     ✓ 이 파일
└── .gitignore                   ✓ Git 무시 설정
```

## 🚀 빠른 시작

### 1단계: 설치
```bash
cd c:\Users\user\Desktop\20260116_cntjdgus
npm install
```

### 2단계: 개발 서버 시작
```bash
npm run dev
```

### 3단계: 브라우저 접속
```
http://localhost:5173
```

## 📋 설치된 파일 확인

### 핵심 컴포넌트
✅ `src/components/ProfileForm.tsx` (154줄)
- 프로필 생성 및 수정
- 자동 칼로리 목표 계산
- BMI 표시

✅ `src/components/MealTracker.tsx` (77줄)
- 아침/점심/저녁 구분 기록
- 음식 직접 입력 또는 빠른 추가
- 18개 사전 정의 음식

✅ `src/components/DailyStats.tsx` (47줄)
- 시각적 진행률 표시
- 세 끼별 칼로리 분석
- 목표 대비 차이 표시

✅ `src/components/Recommendation.tsx` (46줄)
- 동기부여 메시지
- BMI 상태 표시
- 3가지 추천 음식

### 유틸리티
✅ `src/utils/storage.ts` (56줄)
- 로컬스토리지 CRUD 작업
- 프로필 저장/불러오기
- 식사 기록 관리

✅ `src/utils/recommendations.ts` (103줄)
- Harris-Benedict 공식으로 칼로리 계산
- BMI 계산
- 상태별 추천 로직
- 동기부여 메시지 생성

### 타입 정의
✅ `src/types/index.ts` (53줄)
- UserProfile 인터페이스
- MealItem, MealLog
- DailyStat, FoodRecommendation

### 메인 애플리케이션
✅ `src/App.tsx` (95줄)
- 전체 상태 관리
- 컴포넌트 통합
- 날짜 선택 기능
- 통계 계산

✅ `src/main.tsx` (10줄)
- React 앱 초기화

✅ `src/index.css` (35줄)
- 기본 스타일

### 설정 파일
✅ `package.json` - npm 의존성 및 스크립트
✅ `tsconfig.json` - TypeScript 컴파일 설정
✅ `vite.config.ts` - Vite 번들러 설정
✅ `index.html` - 메인 HTML 파일

### 문서
✅ `README.md` - 상세 사용 설명서
✅ `SETUP.md` - 이 설치 가이드

## 🔧 사용 가능한 명령어

```bash
# 개발 서버 시작
npm run dev

# 프로덕션 빌드
npm run build

# 빌드된 파일 미리보기
npm run preview

# 린트 검사 (필요시)
npm run lint
```

## 📦 설치된 패키지

- `react@18.2.0` - UI 라이브러리
- `react-dom@18.2.0` - DOM 렌더링
- `typescript@5.0.0` - 타입 체크
- `vite@4.4.0` - 빠른 번들러
- `@vitejs/plugin-react@4.0.0` - React 플러그인

## ✨ 주요 기능

### 1️⃣ 프로필 관리
- 개인 정보 입력 (이름, 나이, 성별, 키, 몸무게)
- 활동 수준 선택
- 식단 목표 설정
- 자동 칼로리 목표 계산

### 2️⃣ 식사 기록
- 세 끼 분리 관리
- 음식명과 칼로리 입력
- 18개 사전 정의 음식으로 빠른 추가
- 음식별 삭제 가능

### 3️⃣ 통계 및 추적
- 오늘의 총 칼로리 표시
- 목표 칼로리와의 진행 상황 시각화
- 아침/점심/저녁별 칼로리 분석
- 날짜별 독립적 관리

### 4️⃣ 맞춤 추천
- 칼로리 상태에 따른 동기부여 메시지
- BMI 기반 추천
- 3가지 추천 음식 (이유 포함)

## 🔒 데이터 저장

모든 데이터는 **브라우저의 로컬스토리지**에 저장됩니다:
- `diet_app_profile`: 사용자 프로필
- `diet_app_meals`: 전체 식사 기록

## 📝 사용 예시

### 프로필 생성
1. 앱 시작 시 자동으로 프로필 생성 화면 표시
2. 이름, 나이, 성별, 키, 몸무게 입력
3. 활동 수준 선택 (기본값: 중간 활동)
4. 식단 목표 선택 (기본값: 체중 유지)
5. 저장 버튼 클릭
6. 자동 계산된 목표 칼로리 확인

### 식사 기록
1. 아침/점심/저녁 선택
2. 방법 선택:
   - 음식명과 칼로리 직접 입력 → 추가 버튼
   - 사전 정의 음식 버튼 클릭
3. 기록된 음식 목록에서 확인 및 삭제

### 통계 확인
- 프로필 옆에 오늘의 통계 표시
- 진행 바로 목표 대비 상황 시각화
- 칼로리 부족/초과 수치 표시

### 추천 받기
- 현재 칼로리 섭취 상황에 맞는 메시지 확인
- BMI 상태 확인
- 추천 음식 3가지 확인

## 🐛 문제 해결

### npm install 오류
```bash
# npm 캐시 삭제
npm cache clean --force

# node_modules 삭제 후 재설치
rmdir node_modules /s
npm install
```

### 포트 5173이 이미 사용 중
```bash
# 다른 포트로 실행
npm run dev -- --port 3000
```

### 로컬스토리지 데이터 초기화
브라우저 개발자 도구 (F12) → Application → Storage → Local Storage → 선택 도메인 → 삭제

## 💾 백업 및 복원

### 데이터 백업
1. 브라우저 개발자 도구 (F12) 열기
2. Application → Local Storage → 현재 도메인 선택
3. diet_app_profile과 diet_app_meals 값 복사
4. 텍스트 파일로 저장

### 데이터 복원
1. 개발자 도구에서 Local Storage 선택
2. 저장된 값을 다시 입력

## 🎯 다음 단계

1. 앱 빌드 테스트
   ```bash
   npm run build
   ```

2. 프로덕션 배포 준비
   - `dist` 폴더의 파일을 웹 서버에 업로드

3. 추가 기능 개발 시
   - `src/components/` 에 새로운 컴포넌트 추가
   - `src/utils/` 에 유틸리티 함수 추가
   - TypeScript 타입 정의

## 📞 지원

문제 발생 시:
1. README.md의 상세 문서 확인
2. 브라우저 콘솔 (F12) 에러 메시지 확인
3. 로컬스토리지 데이터 초기화 후 다시 시도

---

**설치 및 실행 준비 완료! 🎉**

다음 명령어로 시작하세요:
```bash
npm install && npm run dev
```
