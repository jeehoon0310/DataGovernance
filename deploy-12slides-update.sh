#!/bin/bash

# 12장 확장판 업데이트 배포 스크립트

echo "🚀 12장 확장판 GitHub 배포 시작..."

# 1. 프로젝트 디렉토리로 이동
cd /Users/frindle/@WorkSpace/ClaudeProjects/MakeSlides/02.DataGovernance

# 2. 현재 상태 확인
echo "📊 현재 Git 상태 확인..."
git status

# 3. 변경사항 추가
echo "📝 변경사항 추가..."
git add .

# 4. 커밋
echo "💾 커밋 생성..."
git commit -m "[업데이트] 12장 확장판 완성

주요 변경사항:
- 6장에서 12장으로 슬라이드 확장
- 타이틀 슬라이드 추가
- Executive Summary 추가
- 현황 분석을 2개 슬라이드로 분리 (데이터 사일로, 활용도 격차)
- 솔루션을 2개 슬라이드로 분리 (거버넌스 모델, 조직 구성)
- 기술 아키텍처 슬라이드 추가
- 실행 로드맵 상세화
- 투자 및 ROI 분석 추가
- 성공 사례 및 혁신 서비스 추가
- 슬라이드 번호 표시 기능 추가
- 키보드 단축키 확장 (0, -, = 키로 10-12번 슬라이드 이동)"

# 5. 푸시
echo "📤 GitHub에 푸시..."
git push

echo ""
echo "✅ 12장 확장판 배포 완료!"
echo ""
echo "🌐 배포 URL: https://jeehoon0310.github.io/DataGovernance/"
echo ""
echo "📊 변경 내역:"
echo "- 총 슬라이드: 6장 → 12장"
echo "- 발표 시간: 20-25분 → 40-50분"
echo "- 새로운 콘텐츠: Executive Summary, 기술 아키텍처, 투자 분석, 성공 사례"
echo ""
echo "⏱️  GitHub Pages 반영까지 2-5분 소요됩니다."
