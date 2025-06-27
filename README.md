# Agentic Coding Recommendation

이 프로젝트는 **바이브 코딩(Vibe Coding) 기법**을 활용하여, 블로그 글로부터 슬라이드와 발표자 노트를 자동으로 생성하는 POC(Proof of Concept)입니다.

- 원본 블로그: [Armin Ronacher, "Agentic Coding Recommendations" (2025-06-12)](https://lucumr.pocoo.org/2025/6/12/agentic-coding/)
- 목표: 블로그의 주요 메시지와 실전 팁을 슬라이드와 발표자 노트로 자동 변환하여, 발표 자료 제작의 생산성과 일관성을 극대화하는 것
- 특징: 발표자 노트는 블로그의 실무적 맥락, 배경, 예시, 실전 팁을 포함해 자동 생성됨

## 사용된 라이브러리 및 기술

- **Marp**: Markdown 기반 슬라이드 및 발표자 노트(presenter notes) 생성
- **Makefile**: 슬라이드 미리보기, PDF/PPTX 변환, 발표자 노트 포함 파일 생성 등 자동화
- **발표자 노트 자동화**: 블로그의 각 항목별 실전적 해설을 슬라이드 하단에 발표자 노트로 자동 추가

## 슬라이드 바로가기

👉 [슬라이드 보기 (GitHub Pages)](https://roboco-io.github.io/agentic-coding-recommendation/slides.html)

## 생성된 파일

- [슬라이드 (HTML, GitHub Pages)](https://roboco-io.github.io/agentic-coding-recommendation/slides.html)
- [슬라이드 PDF (slides.pdf)](./slides.pdf)
- [슬라이드 PPTX (slides.pptx)](./slides.pptx)

---

- Marp로 작성
- `make preview`로 로컬 미리보기
- `make pdf`로 PDF 변환
- `make pdf-notes`로 발표자 노트 포함 PDF 변환
- `make pptx`로 발표자 노트 포함 PPTX 변환 