\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{course}[2018/09/25 Cours]


\def\leAuteur{}
\date{SPECIFY DATE}
\def\laClasse{SPECIFY CLASS}
\def\laSaison{\empty}
\def\init{Jeff Winandy}
\def\logo{\empty}
\def\caText{\empty}

\newif\if@oldtheme

\RequirePackage{xkeyval}
%\define@key{course.cls}{logo}[LTL.png]{\def\logo{#1}}
\DeclareOptionX{logo}[LTL.png]{\def\logo{#1}}
\DeclareOptionX{saison}[]{\def\laSaison{#1}}
\DeclareOptionX{classe}[SPECIFY CLASS]{\def\laClasse{#1}}
\DeclareOptionX{author}[Jeff Winandy]{\def\leAuteur{#1}}

\DeclareOptionX{oldTheme}{\@oldthemetrue}
\ProcessOptionsX

\LoadClass{designBase} %a4paper; landscape

\if@oldtheme{\RequirePackage{JWOldTheme}}\else{}\fi

\newcommand{\classe}[1]{
	\def\laClasse{#1}
}

\newcommand{\saison}[1]{
	\def\laSaison{#1}
}

\providecommand{\scriptcolor}{black}
\newcommand{\highlight}[1]{{\color{\baseColor!80!black} #1}}

\linespread{1.2}

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
	{\includegraphics[height=1cm]{\logo}}
}
%END_FOLD


% New definition of square root:
% it renames \sqrt as \oldsqrt
\let\oldsqrt\sqrt
% it defines the new \sqrt in terms of the old one
\def\sqrt{\mathpalette\DHLhksqrt}
\def\DHLhksqrt#1#2{%
	\setbox0=\hbox{$#1\oldsqrt{#2\,}$}\dimen0=\ht0
	\advance\dimen0-0.2\ht0
	\setbox2=\hbox{\vrule height\ht0 depth -\dimen0}%
	{\box0\lower0.4pt\box2}}
