\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{course}[2018/09/25 Cours]


\def\leAuteur{Jeff Winandy}
\date{SPECIFY DATE}
\def\laClasse{SPECIFY CLASS}
\def\laSaison{\empty}
\def\init{Jeff Winandy}
\def\logo{\empty}
\def\caText{\empty}

\RequirePackage{xkeyval}
%\define@key{course.cls}{logo}[LTL.png]{\def\logo{#1}}
\DeclareOptionX{logo}[LTL.png]{\def\logo{#1}}
\DeclareOptionX{saison}[]{\def\laSaison{#1}}
\DeclareOptionX{classe}[SPECIFY CLASS]{\def\laClasse{#1}}
\DeclareOptionX{author}[Jeff Winandy]{\def\leAuteur{#1}}
\ProcessOptionsX

\LoadClass{designBase} %a4paper; landscape

\newcommand{\classe}[1]{
	\def\laClasse{#1}
}

\newcommand{\saison}[1]{
	\def\laSaison{#1}
}

\providecommand{\scriptcolor}{black}
\newcommand{\highlight}[1]{{\color{red} #1}}

%BEGIN_FOLD%---------------------- Headline/Footline
\pagestyle{scrheadings}
\renewcommand{\chapterpagestyle}{scrheadings}

\setheadwidth{\textwidth}
\setheadsepline{.5pt}[\color{\scriptcolor}]

\setfootwidth{\textwidth}
\setfootsepline{.5pt}[\color{\scriptcolor}]


\ihead{\laClasse}
\ohead{\scshape \thepage}



\ifoot{\scshape \leAuteur}
\cfoot{\laSaison} % Needed to eliminate page number in cfoot
\ofoot{
	\ifthenelse{\equal{\logo}\empty}
	{}
	{\includegraphics[height=2cm]{\logo}}
}
%END_FOLD

