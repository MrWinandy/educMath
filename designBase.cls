\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{designBase}[2018/09/25 Base design]


\LoadClass[a4paper, 11pt, oneside, BCOR=0mm, DIV=15]{scrbook} %a4paper; landscape

\RequirePackage{lmodern}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[francais]{babel}
\RequirePackage{scrlayer-scrpage}
\RequirePackage{color}
\RequirePackage{graphicx}
\RequirePackage{enumitem}

\setitemize[1]{label=\textasteriskcentered)}

\RequirePackage{ifthen}
\RequirePackage{titling}
\RequirePackage{array}
\RequirePackage{setspace}
\RequirePackage{multicol}
\RequirePackage{marginnote}

%\RequirePackage{kpfonts}
\RequirePackage{JWImports}
\RequirePackage{JWColors}
\RequirePackage{JWBoxes}
\RequirePackage{JWExercices}
\RequirePackage{JWFormats}
\RequirePackage{JWLists}


\renewcommand{\leq}{\leqslant}
\renewcommand{\geq}{\geqslant}