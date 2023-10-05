# Using [Online Installation Script](http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz) to install [texlive](http://www.tug.org/texlive/)

# Get simplified Chinese Fonts From Windows

## Inside `C:/windows/fonts`, search \*sim\*(for \"simplified Chinese\"; similarly \"tra\" for \"traditional Chinese\"), pick all those Chinese Fonts to Linux `/.fonts/MSFonts
** If Adobe Fonts are also needed, go to {Adobe_installation_directory}/Resource, pick the related fonts inside subdirectory ~CIDFont` and `Font` into `/.fonts/Adobe
** Run **fc-list** to make sure the related Fonts can be searched by ~fontconfig`

# ctex uses `winfonts` by default, however xelatex cannot find the fonts correctly if we use `zhmap~/~winfonts`. Replace contents of the **winfonts** fontset file(suppose it\'s texlive2013) with the following:

```latex
\setCJKmainfont[BoldFont={SimHei},ItalicFont={KaiTi}]{SimSun}
\setCJKsansfont{SimHei}
\setCJKmonofont{[FangSong]}

\setCJKfamilyfont{zhsong}{SimSun}
\setCJKfamilyfont{zhhei}{SimHei}
\setCJKfamilyfont{zhkai}{KaiTi}
\setCJKfamilyfont{zhfs}{FangSong}
\setCJKfamilyfont{zhli}{LiSu}
\setCJKfamilyfont{zhyou}{YouYuan}

\newcommand*{\songti}{\CJKfamily{zhsong}} % 宋体
\newcommand*{\heiti}{\CJKfamily{zhhei}}   % 黑体
\newcommand*{\kaishu}{\CJKfamily{zhkai}}  % 楷书
\newcommand*{\fangsong}{\CJKfamily{zhfs}} % 仿宋
\newcommand*{\lishu}{\CJKfamily{zhli}}    % 隶书
\newcommand*{\youyuan}{\CJKfamily{zhyou}} % 幼圆

\endinput
```

# References:

## http://tex.stackexchange.com/questions/147529/how-can-i-use-fonts-other-than-gbsn-gkai-for-cjk-chinese

## `texdoc ctex`
