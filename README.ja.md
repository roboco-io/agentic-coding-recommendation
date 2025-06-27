[한국어 README는 여기를 클릭하세요](./README.md)

# Agentic Coding Recommendation

このプロジェクトは**バイブコーディング（Vibe Coding）技法**を活用して、ブログ記事からスライドと発表者ノートを自動生成するPOC（Proof of Concept）です。

- 元のブログ：[Armin Ronacher, "Agentic Coding Recommendations" (2025-06-12)](https://lucumr.pocoo.org/2025/6/12/agentic-coding/)
- 目標：ブログの主要メッセージと実践的なTipsをスライドと発表者ノートに自動変換し、プレゼンテーション資料制作の生産性と一貫性を最大化すること
- 特徴：発表者ノートはブログの実務的な文脈、背景、例、実践的なTipsを含んで自動生成される

## 使用されたライブラリと技術

- **Marp**：Markdownベースのスライドと発表者ノート（presenter notes）生成
- **Makefile**：スライドプレビュー、PDF/PPTX変換、発表者ノート付きファイル生成などの自動化
- **発表者ノート自動化**：ブログの各項目別実践的解説をスライド下部に発表者ノートとして自動追加

## スライドへのリンク

👉 [スライドを見る (GitHub Pages)](https://roboco-io.github.io/agentic-coding-recommendation/slides.ja.html)

## 生成されたファイル

- [スライド PDF (slides.ja.pdf)](./slides.ja.pdf)
- [スライド PPTX (slides.ja.pptx)](./slides.ja.pptx)

---

- Marpで作成
- `make preview`でローカルプレビュー
- `make pdf`でPDF変換
- `make pdf-notes`で発表者ノート付きPDF変換
- `make pptx`で発表者ノート付きPPTX変換
