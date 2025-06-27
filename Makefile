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
	cp slides.html dist/
	cd dist && git init
	cd dist && git config user.name "github-actions"
	cd dist && git config user.email "actions@github.com"
	cd dist && git checkout -b gh-pages
	cd dist && git add slides.html
	cd dist && git commit -m "Deploy slide"
	cd dist && git remote add origin https://github.com/roboco-io/agentic-coding-recommendation.git || true
	cd dist && git push -f origin gh-pages
	rm -rf dist/.git

gh-pages-ko:
	mkdir -p dist
	cp dist/slides.ko.html dist/index.html
	cd dist && git init
	cd dist && git config user.name "github-actions"
	cd dist && git config user.email "actions@github.com"
	cd dist && git checkout -b gh-pages
	cd dist && git add index.html
	cd dist && git commit -m "Deploy Korean slide"
	cd dist && git remote add origin https://github.com/roboco-io/agentic-coding-recommendation.git || true
	cd dist && git push -f origin gh-pages
	rm -rf dist/.git

gh-pages-ja:
	mkdir -p dist
	cp dist/slides.ja.html dist/index.html
	cd dist && git init
	cd dist && git config user.name "github-actions"
	cd dist && git config user.email "actions@github.com"
	cd dist && git checkout -b gh-pages
	cd dist && git add index.html
	cd dist && git commit -m "Deploy Japanese slide"
	cd dist && git remote add origin https://github.com/roboco-io/agentic-coding-recommendation.git || true
	cd dist && git push -f origin gh-pages
	rm -rf dist/.git 