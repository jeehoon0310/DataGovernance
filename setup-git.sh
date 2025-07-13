#!/bin/bash

# Git 초기화 및 GitHub Pages 배포 스크립트
# 디플래닉스 데이터 거버넌스 프레젠테이션

echo "🚀 Git 초기화 및 배포 시작..."

# 1. Git 초기화
echo "📁 Git 저장소 초기화..."
git init

# 2. 모든 파일 추가
echo "📝 파일 추가..."
git add .

# 3. 첫 커밋
echo "💾 첫 커밋 생성..."
git commit -m "[초기설정] 디플래닉스 데이터 거버넌스 프레젠테이션 구축

- 6개 슬라이드 완성 (문제정의, 솔루션, 타겟분석, 실행계획, 성과예측, CTA)
- 인터랙티브 요소 구현 (네트워크 다이어그램, 차트, 버블, 체크리스트)
- 반응형 디자인 및 키보드/터치 네비게이션
- 디자인 시스템 및 프로젝트 문서 포함"

# 4. 브랜치 이름을 main으로 변경 (필요한 경우)
echo "🌿 브랜치 설정..."
git branch -M main

# 5. 원격 저장소 추가 (GitHub 저장소 URL로 교체 필요)
echo "🔗 원격 저장소 연결..."
echo "⚠️  GitHub에서 저장소를 만든 후 아래 명령어의 URL을 실제 저장소 URL로 교체하세요:"
echo "git remote add origin https://github.com/YOUR_USERNAME/diplenics-data-governance.git"

# 6. 푸시 명령어 안내
echo ""
echo "📤 저장소에 푸시하려면:"
echo "git push -u origin main"

# 7. GitHub Pages 설정 안내
echo ""
echo "🌐 GitHub Pages 배포 방법:"
echo "1. GitHub 저장소로 이동"
echo "2. Settings → Pages 메뉴 클릭"
echo "3. Source: Deploy from a branch 선택"
echo "4. Branch: main, Folder: / (root) 선택"
echo "5. Save 클릭"
echo "6. 몇 분 후 https://YOUR_USERNAME.github.io/diplenics-data-governance 에서 확인"

echo ""
echo "✅ 로컬 Git 설정 완료!"
