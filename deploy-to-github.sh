#!/bin/bash

# 디플래닉스 데이터 거버넌스 GitHub 배포 스크립트

echo "🚀 GitHub 배포 시작..."

# 1. 프로젝트 디렉토리로 이동
cd /Users/frindle/@WorkSpace/ClaudeProjects/MakeSlides/02.DataGovernance

# 2. Git 초기화
echo "📁 Git 초기화..."
git init

# 3. 모든 파일 추가
echo "📝 파일 추가..."
git add .

# 4. 첫 커밋
echo "💾 커밋 생성..."
git commit -m "[초기설정] 디플래닉스 데이터 거버넌스 프레젠테이션

- 6개 슬라이드 완성 (문제정의, 솔루션, 타겟분석, 실행계획, 성과예측, CTA)
- 인터랙티브 요소 구현 (네트워크 다이어그램, 차트, 버블, 체크리스트)
- 반응형 디자인 및 키보드/터치 네비게이션
- 디자인 시스템 및 프로젝트 문서 포함
- GitHub Actions 자동 배포 설정"

# 5. 브랜치 이름을 main으로 변경
echo "🌿 브랜치 설정..."
git branch -M main

# 6. 원격 저장소 추가
echo "🔗 원격 저장소 연결..."
git remote add origin https://github.com/jeehoon0310/DataGovernance.git

# 7. 푸시
echo "📤 GitHub에 푸시..."
git push -u origin main

echo ""
echo "✅ 배포 완료!"
echo ""
echo "🌐 GitHub Pages 설정:"
echo "1. https://github.com/jeehoon0310/DataGovernance/settings/pages 접속"
echo "2. Source: Deploy from a branch 선택"
echo "3. Branch: main, Folder: / (root) 선택"
echo "4. Save 클릭"
echo ""
echo "📍 배포 URL: https://jeehoon0310.github.io/DataGovernance/"
echo ""
echo "⏱️  배포까지 3-5분 소요됩니다."
