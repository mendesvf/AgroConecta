#!/usr/bin/env bash
# Compila o documento do PIM IV (AgroConecta) com pdflatex.
# Uso: ./build.sh
set -euo pipefail

cd "$(dirname "$0")"

rm -f pim.aux pim.toc pim.out pim.log

# Três passagens: sumário e referências cruzadas estáveis.
for passada in 1 2 3; do
  echo "==> pdflatex (passada $passada)"
  pdflatex -interaction=nonstopmode -halt-on-error pim.tex > /tmp/pim-build-$passada.log
done

if grep -qE '^! ' pim.log || grep -q 'Overfull \\hbox' pim.log; then
  echo "Aviso: há erros ou caixas estouradas no log. Verifique pim.log."
  exit 1
fi

paginas=$(pdfinfo pim.pdf | awk '/^Pages:/ {print $2}')
echo "==> pim.pdf gerado com $paginas páginas"
