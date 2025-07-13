# 디플래닉스 데이터 거버넌스 디자인 시스템 가이드

**프로젝트**: 디플래닉스 데이터 거버넌스 및 데이터 플랫폼팀 관리 프레젠테이션
**브랜드**: 교보그룹 디플래닉스 (데이터 전문 법인)
**제작일**: 2025년 1월
**화면 비율**: 16:9

## 🎨 컬러 시스템

### 기본 컬러 팔레트

```css
/* 교보그룹 브랜드 컬러 - 신뢰와 혁신 */
--primary-blue: #2563EB;      /* 교보 시그니처 블루 */
--primary-navy: #1E40AF;      /* 딥 네이비 - 신뢰성 */
--accent-cyan: #06B6D4;       /* 데이터 스트림 시안 */
--accent-emerald: #10B981;    /* 성장/성공 에메랄드 */

/* 디플래닉스 AI/데이터 컬러 */
--data-purple: #8B5CF6;       /* AI/ML 퍼플 */
--data-pink: #EC4899;         /* 인사이트 핑크 */
--data-orange: #F97316;       /* 경고/주목 오렌지 */

/* 배경 & 글래스 */
--background-dark: #0F172A;   /* 다크 네이비 배경 */
--background-light: #1E293B;  /* 라이트 네이비 */
--glass-bg: rgba(30, 41, 59, 0.7);
--glass-border: rgba(148, 163, 184, 0.2);

/* 텍스트 팔레트 */
--text-primary: #F8FAFC;      /* 순백색 */
--text-secondary: #CBD5E1;    /* 실버 그레이 */
--text-muted: #94A3B8;        /* 뮤트 그레이 */
```

### 그라데이션 조합 (데이터 플로우 표현)

#### 1️⃣ 메인 타이틀용 그라데이션 (신뢰와 혁신)
```css
background: linear-gradient(135deg, var(--primary-navy) 0%, var(--primary-blue) 50%, var(--accent-cyan) 100%);
-webkit-background-clip: text;
-webkit-text-fill-color: transparent;
```

#### 2️⃣ 데이터/AI 강조용 그라데이션
```css
background: linear-gradient(90deg, var(--data-purple) 0%, var(--data-pink) 100%);
-webkit-background-clip: text;
-webkit-text-fill-color: transparent;
```

#### 3️⃣ 성과/ROI 표현용 그라데이션
```css
background: linear-gradient(120deg, var(--accent-emerald) 0%, var(--accent-cyan) 100%);
box-shadow: 0 8px 30px rgba(16, 185, 129, 0.3);
```

## ✍️ 타이포그래피 시스템

### 폰트 패밀리
```css
/* 주 폰트: Pretendard - 데이터의 명확성과 신뢰성 전달 */
font-family: 'Pretendard', -apple-system, BlinkMacSystemFont, system-ui, sans-serif;

/* 데이터/코드 폰트: JetBrains Mono */
--font-mono: 'JetBrains Mono', 'Consolas', monospace;
```

### 텍스트 계층 구조

#### 레벨 1: H1 - 슬라이드 메인 타이틀 (4.5rem / 72px)
```css
font-size: 4.5rem;
font-weight: 900; /* Black */
line-height: 1.1;
letter-spacing: -0.02em;
/* 메인 타이틀 그라데이션 적용 */
```

#### 레벨 2: H2 - 섹션 타이틀 (2.75rem / 44px)
```css
font-size: 2.75rem;
font-weight: 700; /* Bold */
color: var(--text-primary);
letter-spacing: -0.01em;
```

#### 레벨 3: H3 - 서브 타이틀 (1.875rem / 30px)
```css
font-size: 1.875rem;
font-weight: 600; /* SemiBold */
color: var(--accent-cyan);
```

#### 레벨 4: Body - 본문 텍스트 (1.125rem / 18px)
```css
font-size: 1.125rem;
font-weight: 400; /* Regular */
line-height: 1.75;
color: var(--text-secondary);
```

#### 레벨 5: Data - 핵심 수치/지표 (3rem / 48px)
```css
font-size: 3rem;
font-weight: 800; /* ExtraBold */
font-family: var(--font-mono);
color: var(--accent-emerald);
text-shadow: 0 0 20px rgba(16, 185, 129, 0.5);
```

## 💎 레이아웃 & 컴포넌트 시스템

### 슬라이드 기본 구조
```css
.slide {
  width: 100%;
  aspect-ratio: 16 / 9;
  background: radial-gradient(ellipse at top right, var(--background-light) 0%, var(--background-dark) 70%);
  padding: 5rem; /* 80px */
  display: grid;
  grid-template-rows: auto 1fr auto;
  gap: 3rem;
  overflow: hidden;
  position: relative;
}

/* 데이터 플로우 배경 패턴 */
.slide::before {
  content: '';
  position: absolute;
  inset: 0;
  background-image: 
    radial-gradient(circle at 20% 50%, var(--data-purple) 0%, transparent 50%),
    radial-gradient(circle at 80% 80%, var(--accent-cyan) 0%, transparent 50%);
  opacity: 0.1;
  filter: blur(100px);
}
```

### 데이터 카드 (글래스모피즘)
```css
.data-card {
  background: var(--glass-bg);
  backdrop-filter: blur(16px) saturate(180%);
  -webkit-backdrop-filter: blur(16px) saturate(180%);
  border-radius: 20px;
  border: 1px solid var(--glass-border);
  box-shadow: 
    0 8px 32px rgba(0, 0, 0, 0.4),
    inset 0 1px 0 rgba(255, 255, 255, 0.1);
  padding: 2.5rem;
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
}

.data-card:hover {
  transform: translateY(-4px);
  box-shadow: 
    0 12px 48px rgba(37, 99, 235, 0.3),
    inset 0 1px 0 rgba(255, 255, 255, 0.2);
}
```

### 네트워크 다이어그램 스타일
```css
.network-node {
  fill: var(--primary-blue);
  stroke: var(--accent-cyan);
  stroke-width: 2;
  filter: drop-shadow(0 4px 8px rgba(0, 0, 0, 0.3));
  transition: all 0.3s ease;
}

.network-edge {
  stroke: var(--glass-border);
  stroke-width: 2;
  stroke-dasharray: 5, 5;
  animation: dash 20s linear infinite;
}

@keyframes dash {
  to { stroke-dashoffset: -100; }
}
```

### 간격 시스템 (Spacing)
```css
:root {
  --space-xs: 0.625rem;  /* 10px */
  --space-sm: 1.25rem;   /* 20px */
  --space-md: 2.5rem;    /* 40px */
  --space-lg: 5rem;      /* 80px */
  --space-xl: 7.5rem;    /* 120px */
}
```

## 🎮 인터랙션 & 애니메이션

### 슬라이드 전환
```css
@keyframes slideEnter {
  from {
    opacity: 0;
    transform: translateX(100px);
  }
  to {
    opacity: 1;
    transform: translateX(0);
  }
}

.slide-enter {
  animation: slideEnter 0.8s cubic-bezier(0.34, 1.56, 0.64, 1);
}
```

### 데이터 포인트 애니메이션
```css
@keyframes dataPulse {
  0%, 100% { transform: scale(1); opacity: 1; }
  50% { transform: scale(1.2); opacity: 0.8; }
}

.data-point {
  animation: dataPulse 2s ease-in-out infinite;
}
```

### 차트 그로우 애니메이션
```css
@keyframes chartGrow {
  from {
    transform: scaleY(0);
    opacity: 0;
  }
  to {
    transform: scaleY(1);
    opacity: 1;
  }
}

.chart-bar {
  transform-origin: bottom;
  animation: chartGrow 1s cubic-bezier(0.4, 0, 0.2, 1) forwards;
  animation-delay: calc(var(--index) * 0.1s);
}
```

## 📊 데이터 시각화 컴포넌트

### KPI 대시보드 카드
```css
.kpi-card {
  display: grid;
  grid-template-rows: auto 1fr auto;
  gap: 1rem;
  padding: 2rem;
  background: linear-gradient(135deg, var(--glass-bg) 0%, rgba(37, 99, 235, 0.1) 100%);
  border-radius: 16px;
  border: 1px solid var(--glass-border);
}

.kpi-value {
  font-size: 3.5rem;
  font-weight: 900;
  background: linear-gradient(90deg, var(--accent-emerald) 0%, var(--accent-cyan) 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

.kpi-trend {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  color: var(--accent-emerald);
  font-weight: 600;
}
```

### 프로그레스 인디케이터
```css
.progress-ring {
  transform: rotate(-90deg);
}

.progress-ring-circle {
  fill: transparent;
  stroke: var(--glass-border);
  stroke-width: 4;
}

.progress-ring-progress {
  fill: transparent;
  stroke: url(#gradient-progress);
  stroke-width: 4;
  stroke-linecap: round;
  stroke-dasharray: var(--circumference);
  stroke-dashoffset: var(--offset);
  transition: stroke-dashoffset 1s ease-in-out;
}
```

## 🎯 슬라이드별 커스텀 스타일

### 슬라이드 1: 문제 정의 (경고/주의)
```css
.slide-problem {
  --accent-color: var(--data-orange);
  background: 
    radial-gradient(circle at 20% 20%, rgba(249, 115, 22, 0.2) 0%, transparent 40%),
    var(--background-dark);
}

.warning-icon {
  color: var(--data-orange);
  filter: drop-shadow(0 0 20px rgba(249, 115, 22, 0.6));
}
```

### 슬라이드 2: 솔루션 (혁신/미래)
```css
.slide-solution {
  --accent-color: var(--data-purple);
  background: 
    conic-gradient(from 180deg at 50% 50%, var(--data-purple) 0deg, var(--accent-cyan) 120deg, var(--data-pink) 240deg, var(--data-purple) 360deg);
  background-size: 200% 200%;
  animation: gradientShift 15s ease infinite;
}
```

### 슬라이드 5: ROI/성과 (성공/성장)
```css
.slide-results {
  --accent-color: var(--accent-emerald);
  background: 
    linear-gradient(135deg, rgba(16, 185, 129, 0.1) 0%, transparent 50%),
    var(--background-dark);
}

.roi-highlight {
  position: relative;
  font-size: 4rem;
  font-weight: 900;
  color: var(--accent-emerald);
  text-shadow: 
    0 0 40px rgba(16, 185, 129, 0.8),
    0 0 80px rgba(16, 185, 129, 0.4);
}
```

## 💾 컴포넌트 라이브러리

### 1. 바닐라 JS 컴포넌트 구조
```javascript
// DataCard.js
class DataCard {
  constructor(element, data) {
    this.element = element;
    this.data = data;
    this.init();
  }
  
  init() {
    this.element.classList.add('data-card');
    this.render();
    this.attachEvents();
  }
  
  render() {
    this.element.innerHTML = `
      <h3 class="data-card-title">${this.data.title}</h3>
      <div class="data-card-value">${this.data.value}</div>
      <div class="data-card-trend">${this.data.trend}</div>
    `;
  }
}
```

### 2. 차트 컴포넌트 (D3.js 통합용)
```javascript
// 복잡한 데이터 시각화에만 D3.js 사용
// 간단한 차트는 CSS + SVG로 구현
const createBarChart = (data, container) => {
  const maxValue = Math.max(...data.map(d => d.value));
  
  data.forEach((item, index) => {
    const bar = document.createElement('div');
    bar.className = 'chart-bar';
    bar.style.setProperty('--index', index);
    bar.style.height = `${(item.value / maxValue) * 100}%`;
    bar.dataset.value = item.value;
    container.appendChild(bar);
  });
};
```

## ✅ 디자인 체크리스트

### 제작 전
- [ ] 교보그룹 브랜드 가이드라인 준수 확인
- [ ] 각 슬라이드의 핵심 데이터 포인트 정의
- [ ] 인터랙티브 요소의 필요성 검토

### 제작 중
- [ ] 데이터 시각화의 명확성과 직관성
- [ ] 컬러 대비율 WCAG AA 기준 충족 (4.5:1)
- [ ] 애니메이션 성능 최적화 (60fps 유지)
- [ ] 모바일 반응형 레이아웃 검증

### 완료 후
- [ ] 전체 슬라이드 톤앤매너 일관성
- [ ] 로딩 속도 3초 이내 확인
- [ ] 키보드 네비게이션 접근성
- [ ] 크로스브라우저 호환성 테스트

## 🚀 성능 최적화 가이드

### CSS 최적화
```css
/* Critical CSS 인라인 처리 */
/* 애니메이션은 transform과 opacity만 사용 */
/* will-change 신중하게 사용 */

.optimized-animation {
  will-change: transform;
  transform: translateZ(0); /* GPU 가속 */
}
```

### 이미지 최적화
- WebP 포맷 우선 사용
- 네트워크 다이어그램은 SVG로
- 히어로 이미지는 progressive JPEG
- lazy loading 적용

---

**디자인 철학**: "데이터의 복잡성을 시각적 명료함으로, 기술의 혁신을 신뢰할 수 있는 브랜드 경험으로" 🎯
