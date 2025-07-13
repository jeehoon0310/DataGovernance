#!/bin/bash

# Git push 오류 해결 스크립트

echo "🔧 Git push 오류 해결 중..."

cd /Users/frindle/@WorkSpace/ClaudeProjects/MakeSlides/02.DataGovernance

# 1. 현재 상태 확인
echo "📊 현재 Git 상태 확인..."
git status

# 2. 브랜치 확인
echo "🌿 현재 브랜치 확인..."
git branch

# 3. 커밋이 있는지 확인
echo "📝 커밋 히스토리 확인..."
git log --oneline -n 5 2>/dev/null || echo "아직 커밋이 없습니다."

# 4. 파일이 스테이징되어 있는지 확인
if [ -z "$(git ls-files)" ]; then
    echo "📁 파일 추가 중..."
    git add .
fi

# 5. 첫 커밋 생성
echo "💾 커밋 생성..."
git commit -m "[초기설정] 디플래닉스 데이터 거버넌스 프레젠테이션" || echo "이미 커밋됨"

# 6. 현재 브랜치 이름 확인 및 변경
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
echo "현재 브랜치: $CURRENT_BRANCH"

if [ "$CURRENT_BRANCH" != "main" ]; then
    echo "🔄 브랜치를 main으로 변경..."
    git branch -m main
fi

# 7. 원격 저장소 확인
echo "🔗 원격 저장소 확인..."
git remote -v

# 8. 원격 저장소가 없으면 추가
if ! git remote | grep -q "origin"; then
    echo "➕ 원격 저장소 추가..."
    git remote add origin https://github.com/jeehoon0310/DataGovernance.git
fi

# 9. 푸시 시도
echo "📤 GitHub에 푸시 중..."
git push -u origin main

echo ""
echo "✅ 완료!"
