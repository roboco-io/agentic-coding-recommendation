all: pdf-notes pptx pdf-notes-ja pptx-ja

preview:
	marp slides.md --preview

pdf:
	marp slides.md -o slides.pdf

pdf-notes:
	marp slides.md -o slides.pdf --pdf-notes

pptx:
	marp slides.md -o slides.pptx

# Japanese versions
preview-ja:
	marp slides.ja.md --preview

pdf-ja:
	marp slides.ja.md -o slides.ja.pdf

pdf-notes-ja:
	marp slides.ja.md -o slides.ja.pdf --pdf-notes

pptx-ja:
	marp slides.ja.md -o slides.ja.pptx

gh-pages:
	mkdir -p dist
	# Generate HTML files first
	marp slides.md -o dist/slides.ko.html
	marp slides.ja.md -o dist/slides.ja.html
	# Copy Korean version as default index
	cp dist/slides.ko.html dist/index.html
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