# GitHub Pages 배포 가이드

## 🚀 빠른 배포 방법

### 1단계: GitHub 저장소 생성
1. https://github.com/new 접속
2. Repository name: `diplenics-data-governance` (또는 원하는 이름)
3. Public 선택
4. "Create repository" 클릭

### 2단계: 터미널에서 Git 명령어 실행

```bash
# 프로젝트 디렉토리로 이동
cd /Users/frindle/@WorkSpace/ClaudeProjects/MakeSlides/02.DataGovernance

# Git 초기화
git init

# 모든 파일 추가
git add .

# 첫 커밋
git commit -m "[초기설정] 디플래닉스 데이터 거버넌스 프레젠테이션"

# 브랜치 이름을 main으로 변경
git branch -M main

# 원격 저장소 연결 (YOUR_USERNAME을 실제 GitHub 사용자명으로 변경)
git remote add origin https://github.com/YOUR_USERNAME/diplenics-data-governance.git

# 푸시
git push -u origin main
```

### 3단계: GitHub Pages 활성화
1. GitHub 저장소 페이지로 이동
2. Settings 탭 클릭
3. 왼쪽 메뉴에서 "Pages" 클릭
4. Source 섹션에서:
   - Source: "Deploy from a branch" 선택
   - Branch: "main" 선택
   - Folder: "/ (root)" 선택
5. "Save" 클릭

### 4단계: 배포 확인
- 몇 분 후 다음 URL에서 확인 가능:
  ```
  https://YOUR_USERNAME.github.io/diplenics-data-governance
  ```

## 📋 체크리스트
- [ ] GitHub 계정 로그인
- [ ] 새 저장소 생성
- [ ] Git 명령어 실행
- [ ] GitHub Pages 설정
- [ ] 배포 URL 확인

## 🔧 문제 해결

### Git 명령어가 작동하지 않는 경우
```bash
# Git 설치 확인
git --version

# Git 설치 (Mac)
brew install git
```

### 푸시 권한 오류
```bash
# GitHub 토큰 생성 후 사용
# Settings > Developer settings > Personal access tokens
```

### Pages가 작동하지 않는 경우
1. Actions 탭에서 배포 상태 확인
2. 저장소가 Public인지 확인
3. index.html 파일이 루트에 있는지 확인

## 🎯 배포 후 관리

### 업데이트 방법
```bash
# 변경사항 커밋
git add .
git commit -m "[업데이트] 설명"
git push

# GitHub Actions가 자동으로 재배포
```

### 커스텀 도메인 설정
1. Settings > Pages
2. Custom domain 입력
3. DNS 설정 추가

## 📞 지원
문제가 발생하면 다음을 확인하세요:
- GitHub Actions 로그
- Pages 설정 상태
- 브라우저 개발자 도구 콘솔

---

**작성일**: 2025-01-13  
**프로젝트**: 디플래닉스 데이터 거버넌스 프레젠테이션
