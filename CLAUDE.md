# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Korean-language presentation project that converts a blog post about "Agentic Coding Recommendations" into slides using Marp. The project demonstrates the "Vibe Coding" technique by automatically generating slides and presenter notes from a blog post.

**Key Components:**
- `slides.md` - Main Marp presentation source file with Korean content
- `slides.html` - Generated HTML presentation for GitHub Pages
- `slides.pdf` - PDF export of the presentation  
- `slides.pptx` - PowerPoint export with presenter notes
- `README.md` - Project documentation in Korean
- `Makefile` - Build automation

## Development Commands

### Preview and Build
```bash
# Live preview during development
make preview

# Generate PDF (without presenter notes)
make pdf

# Generate PDF with presenter notes
make pdf-notes

# Generate PowerPoint with presenter notes
make pptx
```

### Deployment
```bash
# Deploy to GitHub Pages
make gh-pages
```

## Architecture

This is a **Marp-based presentation project** using a simple Makefile-driven workflow:

1. **Content Creation**: Presentation content is written in `slides.md` using Marp syntax
2. **Presenter Notes**: Embedded in HTML comments within the Markdown using `<!-- Presenter Notes: ... -->`
3. **Multi-format Export**: Single source generates HTML, PDF, and PPTX outputs
4. **GitHub Pages**: Automated deployment creates `dist/slides.html` and pushes to `gh-pages` branch

## Working with This Project

- **Primary file to edit**: `slides.md` (Marp Markdown with Korean content)
- **Presenter notes**: Use HTML comment blocks with "Presenter Notes:" prefix
- **Testing changes**: Use `make preview` for live preview
- **Korean content**: All slides and presenter notes are in Korean
- **Marp configuration**: Presentation uses default theme with 16:9 aspect ratio

## Dependencies

- **Marp CLI**: Required for all build operations (already installed at `/Users/dohyunjung/.nvm/versions/node/v20.18.1/bin/marp`)
- **Git**: Used for GitHub Pages deployment