\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{TV}[2018/09/25 TV]


\def\leAuteur{Jeff Winandy}
\date{SPECIFY DATE}
\def\laClasse{SPECIFY CLASS}
\def\laSaison{\empty}
\def\init{Jeff Winandy}
\def\logo{\empty}

\RequirePackage{xkeyval}
%\define@key{course.cls}{logo}[LTL.png]{\def\logo{#1}}
\DeclareOptionX{logo}[LTL.png]{\def\logo{#1}}
\DeclareOptionX{saison}[]{\def\laSaison{#1}}
\DeclareOptionX{classe}[SPECIFY CLASS]{\def\laClasse{#1}}
\DeclareOptionX{date}[SPECIFY date]{\def\date{#1}}
\DeclareOptionX{author}[Jeff Winandy]{\def\leAuteur{#1}}
\DeclareOptionX{email}[jeff.winandy@education.lu]{\def\email{#1}}
\DeclareOptionX{eleve}[SPECIFY PERSON]{\def\eleve{#1}}
\DeclareOptionX{place}[Esch/Alzette]{\def\place{#1}}
\DeclareOptionX{chapitres}[SPECIFY CHAPTERS]{\def\chapitres{#1}}
\ProcessOptionsX

\LoadClass{designBase} %a4paper; landscape


\RequirePackage{lastpage}
%\RequirePackage{etoolbox}
\RequirePackage{totcount}




\newcommand{\classe}[1]{
	\def\laClasse{#1}
}

\newcommand{\saison}[1]{
	\def\laSaison{#1}
}

\providecommand{\scriptcolor}{black} 
\setlength\parindent{0pt}




\newcommand{\turnpage}{
	\vfill 
	\begin{center}
		Tourner la page svpl !
	\end{center}
	\newpage
}

%---------------------- Headline/Footline
\setheadwidth{\textwidth}
%\setheadsepline{1pt}[\color{\scriptcolor}]

\lohead{\laClasse}
%\scshape\footnotesize FISAR


%\lehead{\llap{\thepage\enskip}{\color{\scriptcolor}\rule[-2mm]{1pt}{7mm}} \normalfont\bfseries \chaptertitle}
\rehead{\laClasse}
\ohead{\date}

\setfootsepline{.5pt}[\color{\scriptcolor}]



%\ifoot{\small \classe}
%\cfoot{\normalfont\small \lycee}
%\ofoot{\small \season}

\ifoot{\scshape \leAuteur}
\cfoot{}
\ofoot{
	\ifthenelse{\equal{\logo}\empty}
	{}
	{\includegraphics[height=1.5cm]{\logo}}
}

%Titlepage
\newcommand{\TVtitlepage}{
	\large
	\vskip 2cm
	\begin{center}
		\Huge\textbf{\underline{Travail de vacances}}
		\vskip 0.5cm
		%  \textit{prière de joindre une matière pour chaque élève concerné} 
	\end{center}
	\vspace{1cm}
	\noindent
	\begin{flushright}
		Septembre \the\year
	\end{flushright}
	
	\vskip 2cm
	Classe: \laClasse \\
	\vskip 0.2cm
	%Elève: \makebox[10cm]{\dotfill}\\
	Elève: \eleve\\
	\vskip 0.2cm
	Titulaire: \leAuteur\\
	\vskip 0.2cm
	Branche: Mathématiques\\
	\vskip 3cm
	Nature du contrôle: \textbf{écrit}\\
	\vskip 0.2cm
	Durée approximative du contrôle écrit: \textbf{50 minutes}
	
	\cleardoublepage
	
	\begin{center}
		\Huge\textbf{Travail de vacances} \\
		\Large{en  mathématiques}
	\end{center}
	
	\vspace{.75cm}
	\noindent
	Nom de l'élève: \textbf{\eleve }
	\\
	Classe: \laClasse
	\\
	Titulaire: M. Jeff {\scshape Winandy}
	
	
	
	\vspace{.5cm}
	\noindent \textbf{Matière à étudier :}
	\begin{itemize}
		\item Introduction aux fonctions
		\item Calcul littéral
		\item Inéquations
	\end{itemize}
	\vspace{.25cm}
	
	
	\noindent \textbf{Remarques :}
	\begin{enumerate}[label={\arabic*)}] 
		\item Le dossier avec les questions (exercices) compte \pageref{lastpage} pages.
		\item Les réponses aux questions proposées sont à noter sous forme manuscrite et avec le plus grand soin dans un cahier ou un classeur de format DIN A4.
		\item L'ordre des questions doit être respecté.
		\item Tous les raisonnements doivent être bien expliqués et toutes les étapes intermédiaires sont à noter! Lors d'un calcul plus long, il ne suffit pas de marquer le résultat final qui aurait pu être trouvé  à l'aide de la calculatrice.
		\item Il va de soi que lors de la préparation du dossier, il convient de réviser le cours et les devoirs en classe. 
		\item L'épreuve proprement dite, d'une durée de 50 minutes, est de nature écrite.
		Les questions à l'épreuve seront assez analogues à celles préparées dans le dossier à remettre.
		%Elle aura lieu 5lundi, le 17 septembre 2012 à partir de 8.00 heures.
		%L'horaire exact sera affiché dans le hall d'entrée du lycée à partir du 7 septembre 2012.
		Pour la note finale, l'appréciation du travail interviendra pour un quart et celle de l'épreuve pour trois quarts.
	\end{enumerate}
	
	\vskip 1cm
	En cas de problème éventuel, n’hésitez pas à me contacter par courriel.\\ 
	(e-mail : \email)
	%\vskip 20pt
	%\vspace{0.5cm}
	\vfill
	\begin{flushright}
		\place, le \today
		%\par \bigskip \bigskip \bigskip
		%Frères Pierre\\
		%\url{...@education.lu}
	\end{flushright}
	
	\clearpage
	\setcounter{page}{1}
}





\pagestyle{scrheadings}
\renewcommand{\chapterpagestyle}{scrheadings}

