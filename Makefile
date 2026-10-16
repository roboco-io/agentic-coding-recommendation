# Google Analytics 4 (gtag.js)
GA_HEAD = <script async src="https://www.googletagmanager.com/gtag/js?id=G-9G1SGM9SZQ"></script><script>window.dataLayer=window.dataLayer||[];function gtag(){dataLayer.push(arguments);}gtag("js",new Date());gtag("config","G-9G1SGM9SZQ");</script>

.PHONY: help all preview pdf pdf-notes pptx preview-ja pdf-ja pdf-notes-ja pptx-ja gh-pages

# 기본 타겟: 도움말 표시
.DEFAULT_GOAL := help

# 도움말 표시
help:
	@echo "======================================================"
	@echo "Marp 프레젠테이션 빌드 도구"
	@echo "======================================================"
	@echo ""
	@echo "사용 가능한 명령어:"
	@echo ""
	@echo "  make help         - 이 도움말 표시"
	@echo "  make all          - 모든 출력 파일 생성 (한국어/일본어 PDF와 PPTX)"
	@echo ""
	@echo "한국어 버전:"
	@echo "  make preview      - 한국어 슬라이드 실시간 미리보기"
	@echo "  make pdf          - 한국어 PDF 생성 (발표자 노트 없음)"
	@echo "  make pdf-notes    - 한국어 PDF 생성 (발표자 노트 포함)"
	@echo "  make pptx         - 한국어 PowerPoint 생성"
	@echo ""
	@echo "일본어 버전:"
	@echo "  make preview-ja   - 일본어 슬라이드 실시간 미리보기"
	@echo "  make pdf-ja       - 일본어 PDF 생성 (발표자 노트 없음)"
	@echo "  make pdf-notes-ja - 일본어 PDF 생성 (발표자 노트 포함)"
	@echo "  make pptx-ja      - 일본어 PowerPoint 생성"
	@echo ""
	@echo "배포:"
	@echo "  make gh-pages     - GitHub Pages에 배포"
	@echo ""
	@echo "필수 도구:"
	@echo "  - Marp CLI (npm install -g @marp-team/marp-cli)"
	@echo "  - Git (GitHub Pages 배포용)"
	@echo "======================================================"

# 모든 출력 파일 생성
all: pdf pptx pdf-ja pptx-ja

# 한국어 버전 명령어
# ------------------

# 한국어 슬라이드 실시간 미리보기 (개발 중 사용)
preview:
	marp slides.md --preview

# 한국어 PDF 생성 (프레젠테이션용)
pdf:
	marp slides.md -o slides.pdf

# 한국어 PowerPoint 생성 (편집 가능)
pptx:
	marp slides.md -o slides.pptx

# 일본어 버전 명령어
# ------------------

# 일본어 슬라이드 실시간 미리보기
preview-ja:
	marp slides.ja.md --preview

# 일본어 PDF 생성 (프레젠테이션용)
pdf-ja:
	marp slides.ja.md -o slides.ja.pdf

# 일본어 PowerPoint 생성
pptx-ja:
	marp slides.ja.md -o slides.ja.pptx

# GitHub Pages 배포
# ------------------
# 한국어와 일본어 버전을 모두 GitHub Pages에 배포
# URL: https://roboco-io.github.io/agentic-coding-recommendation/
gh-pages:
	@echo "GitHub Pages에 슬라이드 배포 중..."
	@echo ""
	mkdir -p dist
	# Generate HTML files first
	marp slides.md -o dist/index.html
	marp slides.ja.md -o dist/slides.ja.html
	# Inject Google Analytics 4 (gtag.js) into <head>
	perl -0pi -e 's#</head>#$(GA_HEAD)</head>#' dist/index.html dist/slides.ja.html
	# Deploy to GitHub Pages
	cd dist && git init
	cd dist && git config user.name "github-actions"
	cd dist && git config user.email "actions@github.com"
	cd dist && git checkout -b gh-pages
	cd dist && git add .
	cd dist && git commit -m "Deploy Korean and Japanese slides"
	cd dist && git remote add origin https://github.com/roboco-io/agentic-coding-recommendation.git || true
	cd dist && git push -f origin gh-pages
	rm -rf dist/.git
	@echo ""
	@echo "======================================================"
	@echo "✅ GitHub Pages 배포 완료!"
	@echo "======================================================"
	@echo ""
	@echo "📌 배포된 슬라이드 URL:"
	@echo ""
	@echo "  🇰🇷 한국어 (기본):"
	@echo "     https://roboco-io.github.io/agentic-coding-recommendation/"
	@echo ""
	@echo "  🇯🇵 일본어:"
	@echo "     https://roboco-io.github.io/agentic-coding-recommendation/slides.ja.html"
	@echo ""
	@echo "======================================================" 