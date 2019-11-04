\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exam}[2018/09/25 Devoir en classe]


\LoadClass{designBase} %a4paper; landscape


\DeclareOption{lge}{\def\logo{LGE.png}}
\DeclareOption{ltma}{\def\logo{LTMA.png}}
\ProcessOptions\relax

\newcommand{\classe}[1]{
	\def\laClasse{#1}
}

\newcommand{\saison}[1]{
	\def\laSaison{#1}
}

\newcommand{\scriptcolor}{black}

\newcommand{\highlight}[1]{{\color{red} #1}}







%---------------------- Headline/Footline
\setheadwidth{\textwidth}
%\setheadsepline{1pt}[\color{\scriptcolor}]

\lohead{\laClasse}
%\scshape\footnotesize FISAR


\lehead{\llap{\thepage\enskip}{\color{\scriptcolor}\rule[-2mm]{1pt}{7mm}} \normalfont\bfseries \chaptertitle}
\rehead{\laClasse}
\ohead{\thedate}

\setfootsepline{.5pt}[\color{\scriptcolor}]



%\ifoot{\small \classe}
%\cfoot{\normalfont\small \lycee}
%\ofoot{\small \season}

\ifoot{\scshape \theauthor}
\cfoot{}
\ofoot{
	\ifthenelse{\equal{\logo}\empty}
	{}
	{\includegraphics[height=1.5cm]{\logo}}
}

\input{DesignBase.tex}
