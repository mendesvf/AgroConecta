# Documento do PIM IV — AgroConecta

Documento final em LaTeX, formatado segundo as regras do manual do PIM IV
(`docs/manual.md`): A4, margens 3/2/3/2 cm, fonte Arial (via Helvetica),
entrelinha 1,5, recuo de 1,5 cm, citações longas em 10 pt e paginação a partir
da introdução.

O PDF gerado é `pim.pdf` (41 páginas). O desenvolvimento (capítulos 1 a 9)
ocupa 30 páginas, dentro do limite de 20 a 30 exigido pelo manual.

## Como compilar

Requisito: TeX Live com `pdflatex`, pacotes `helvet`, `tocloft`, `titlesec`,
`tikz`, `listings`, `needspace`, `xurl` e o suporte a português do `babel`.

```bash
cd documento
./build.sh          # três passadas de pdflatex
```

Ou manualmente:

```bash
cd documento
pdflatex -interaction=nonstopmode pim.tex   # repetir 2 ou 3 vezes
```

## Estrutura

```
documento/
├── pim.tex                  # arquivo principal
├── pre-textual.tex          # capa, folha de rosto, resumo, abstract, sumário
├── estilo/abnt.tex          # configuração ABNT, TikZ, listagens, sumário
├── capitulos/
│   ├── 01-caracterizacao.tex    # Etapa 1
│   ├── 02-planejamento.tex      # Etapa 2
│   ├── 03-social.tex            # Etapa 3
│   ├── 04-web.tex               # Etapa 4
│   ├── 05-mobile.tex            # Etapa 5
│   ├── 06-arquitetura.tex       # Etapa 6
│   ├── 07-banco.tex             # Etapa 7
│   ├── 08-devops.tex            # Etapa 8
│   ├── 09-agil.tex              # Etapa 9
│   ├── 10-conclusao.tex
│   └── 11-referencias.tex
├── figuras/                 # capturas reais da aplicação Web
└── build.sh
```

Os diagramas (organograma, navegação mobile, sincronização offline, camadas,
MER, arquitetura em nuvem e Kanban) são desenhados em TikZ diretamente nos
capítulos, sem depender de imagens externas.

## Antes de entregar

1. Substituir os marcadores da capa e da folha de rosto:
   - `[NOME DO ALUNO] -- [RA]` (duas ocorrências em cada página);
   - `[NOME DO ORIENTADOR]`.
2. Recompilar com `./build.sh`.
3. Conferir a contagem de páginas do desenvolvimento (capítulos 1 a 9).

## Observações

- Não há capturas do aplicativo mobile no documento: o ambiente de
  desenvolvimento não dispunha de dispositivo com suporte a captura de tela
  durante a elaboração. As telas são descritas no texto e representadas no
  diagrama de navegação (Figura 9).
- As figuras da aplicação Web vêm de `evidencias/web/capturas/` e foram
  copiadas para `figuras/`.
