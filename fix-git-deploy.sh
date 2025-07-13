#!/bin/bash

# Git 문제 해결 및 재배포 스크립트

echo "🔧 Git 문제 해결 시작..."

# 프로젝트 디렉토리로 이동
cd /Users/frindle/@WorkSpace/ClaudeProjects/MakeSlides/02.DataGovernance

# 1. 기존 Git 설정 초기화
echo "🧹 기존 Git 설정 정리..."
rm -rf .git

# 2. 새로 Git 초기화
echo "📁 Git 새로 초기화..."
git init

# 3. Git 사용자 설정 (필요한 경우)
echo "👤 Git 사용자 설정..."
# 아래 줄의 주석을 제거하고 본인 정보로 수정하세요
# git config user.name "Your Name"
# git config user.email "your.email@example.com"

# 4. 모든 파일 추가
echo "📝 모든 파일 추가..."
git add .

# 5. 커밋
echo "💾 커밋 생성..."
git commit -m "[초기설정] 디플래닉스 데이터 거버넌스 프레젠테이션"

# 6. 브랜치 설정
echo "🌿 main 브랜치 설정..."
git branch -M main

# 7. 기존 원격 저장소 제거 (있을 경우)
echo "🔗 원격 저장소 재설정..."
git remote remove origin 2>/dev/null || true

# 8. 원격 저장소 추가
git remote add origin https://github.com/jeehoon0310/DataGovernance.git

# 9. 강제 푸시 (기존 내용 덮어쓰기)
echo "📤 GitHub에 강제 푸시..."
git push -u origin main --force

echo ""
echo "✅ 재배포 완료!"
echo ""
echo "다음 단계:"
echo "1. https://github.com/jeehoon0310/DataGovernance 에서 파일 확인"
echo "2. https://github.com/jeehoon0310/DataGovernance/settings/pages 에서 Pages 설정"
echo "3. Source: Deploy from a branch, Branch: main, Folder: / (root) 선택 후 Save"
echo ""
echo "🌐 배포 URL: https://jeehoon0310.github.io/DataGovernance/"
