latex -src -interaction=nonstopmode "main".tex
bibtex "main"
latex -src -interaction=nonstopmode "main".tex
dvips -o "main".ps "main".dvi
ps2pdf "main".ps
