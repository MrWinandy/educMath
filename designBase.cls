\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{designBase}[2018/09/25 Base design]


\LoadClass[a4paper, 11pt, oneside, BCOR=0mm, DIV=15]{scrbook} %a4paper; landscape

\RequirePackage{lmodern}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[francais]{babel}
\RequirePackage{scrpage2}
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

\usepackage{kpfonts}
\usepackage{JWImports}
\usepackage{JWColors}
\usepackage{JWBoxes}
\usepackage{JWExercices}
\usepackage{JWFormats}

\renewcommand{\leq}{\leqslant}
\renewcommand{\geq}{\geqslant}