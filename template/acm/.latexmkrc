$recorder = 1;
$pdf_mode = 1;
$bibtex_use = 2;
$pdflatex = "pdflatex -file-line-error -synctex=1 --shell-escape %O %S";
$pdf_previewer = "open %O %S";
$clean_ext .= ' %R.ist %R.xdy';
