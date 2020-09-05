\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exam}[2018/09/25 Devoir en classe]


\def\leAuteur{Jeff Winandy}
\date{SPECIFY DATE}
\def\laClasse{SPECIFY CLASS}
\def\laSaison{\empty}
\def\init{Jeff Winandy}
\def\logo{\empty}
\def\caText{\empty}

\RequirePackage{xkeyval}

\DeclareOptionX{logo}[LTL.png]{\def\logo{#1}}
\DeclareOptionX{saison}[]{\def\laSaison{#1}}
\DeclareOptionX{classe}[SPECIFY CLASS]{\def\laClasse{#1}}
\DeclareOptionX{date}[SPECIFY date]{\def\date{#1}}
\DeclareOptionX{author}[Jeff Winandy]{\def\leAuteur{#1}}
\DeclareOptionX{ca}{\def\caText{\ca}}
\DeclareOptionX{cna}{\def\caText{\cna}}
\DeclareOptionX{rattrapage}{\def\rattrapage{\\[\baselineskip] Rattrapage}}
\DeclareOptionX{supplement}{\def\rattrapage{\\[\baselineskip] Supplément}}
\DeclareOptionX{test}{\def\titleText{\testTitle}}
\ProcessOptionsX

\LoadClass{designBase} %a4paper; landscape


\RequirePackage{lastpage}
%\RequirePackage{etoolbox}
\RequirePackage{totcount}

\def\rattrapage{}
\def\titleText{\devoirTitle}


\newcommand{\ca}
{\begin{center}\emph{Calculatrice autorisée, toutes les étapes de calcul doivent être explicitées!}\end{center}}

\newcommand{\cna}
{\begin{center}\emph{L'usage de la calculatrice n'est pas permis!}\end{center}}

\newcommand{\testTitle}{Contrôle continu }
\newcommand{\devoirTitle}{Devoir en classe }

\newcommand{\classe}[1]{
	\def\laClasse{#1}
}

\newcommand{\saison}[1]{
	\def\laSaison{#1}
}

\newcommand{\setSubtitle}[1]{\def\rattrapage{\\[\baselineskip] #1}}

\providecommand{\scriptcolor}{black} 
\setlength\parindent{0pt}


\newcommand{\compTableau}{
	\begin{center}
		\setstretch{1}\setlength{\extrarowheight}{5pt}
		\footnotesize
		\begin{tabular}{|p{4.5cm}|*{6}{>{\centering\arraybackslash}m{1.9cm}|}}
			\hline
			\textbf{Compétence} & \textbf{non évalué} & \textbf{insuffisant}  & \textbf{satisfaisant}  &  \textbf{bien} & \textbf{très bien} \\ \hline \hline
			\textbf{Nombres et opérations / dépendance et variation} & & & & &  \\  \hline
			\textbf{Figures du plan\newline et de l'espace} & &  & & &  \\  \hline
			%\textbf{Données} & & & & &  \\  &  & & & \\  \hline
			%\textbf{Processus aléatoires} &&&&\\  &  &  & & \\  \hline
			\textbf{Résolution de problèmes / modéliser} & & & & & \\  \hline
			\textbf{Argumenter / \newline communiquer} & &&&&\\  \hline
		\end{tabular}
	\end{center}
}

\newcommand{\compTableauClassique}{
	\begin{center}
		\setstretch{1}\setlength{\extrarowheight}{5pt}
		\footnotesize
		\begin{tabular}{|p{4.5cm}|*{6}{>{\centering\arraybackslash}m{1.9cm}|}}
			\hline
			\textbf{Compétence} & \textbf{non évalué} & \textbf{insuffisant}  & \textbf{satisfaisant}  &  \textbf{bien} & \textbf{très bien} \\ \hline \hline
			\textbf{Nombres et opérations / dépendance et variation} & & & & &  \\  \hline
			\textbf{Figures du plan\newline et de l'espace} & &  & & &  \\  \hline
			%\textbf{Données} & & & & &  \\  &  & & & \\  \hline
			%\textbf{Processus aléatoires} &&&&\\  &  &  & & \\  \hline
			\textbf{Résolution de problèmes / modéliser} & & & & & \\  \hline
			\textbf{Argumenter / \newline communiquer} & &&&&\\  \hline
		\end{tabular}
	\end{center}
}


\newcommand{\turnpage}{
	\vfill 
	\begin{center}
		Tourner la page svpl !
	\end{center}
	\newpage
}



\newtotcounter{totalpoints}
\newcommand*{\totalpoints}[1]{\addtocounter{totalpoints}{#1}}








%---------------------- Headline/Footline
\setheadwidth{\textwidth}
%\setheadsepline{1pt}[\color{\scriptcolor}]

\lohead{\laClasse}
%\scshape\footnotesize FISAR

\chead{Nom: \underline{\hspace{6cm}}}
%\scshape\footnotesize  version \the\day.\the\month.\the\year

\lehead{\llap{\thepage\enskip}{\color{\scriptcolor}\rule[-2mm]{1pt}{7mm}} \normalfont\bfseries \chaptertitle}
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


%-——————oir

\newcommand{\RNum}[1]{\uppercase\expandafter{\romannumeral #1\relax}}
\newcommand{\devoir}[3][\protect\number\totvalue{totalpoints}]{
	\setenumerate[1]{label=\alph*), ref=\theenumi.\alph*}
	
	\caText
	\vspace{0.5cm}
	\begin{minipage}{0.75\textwidth}
		\begin{center}
			{\Huge \titleText \RNum{#2}.#3 \rattrapage}
		\end{center}
	\end{minipage}\hfill%
	\begin{minipage}{0.23\textwidth}
		\begin{tikzpicture}[baseline=-0.1cm]
		\node(p) at (0,-0.5) {\fontsize{60}{72} $ \frac{\ }{#1} $};
		\node[circle,draw,inner sep=0.2cm, label=](p) at (0,0) {\phantom{\fontsize{80}{96} $ \frac{\ }{60} $}};
		\end{tikzpicture}
	\end{minipage}
}


% Entete Examen
\newcommand{\entete}[4] % Session, Section , Math I ou Math II, Durée
{\renewcommand{\arraystretch}{1.2}
	\begin{center}
		\begin{tabular}{|c|p{1cm}cp{1cm}|p{1.5cm}cp{.5cm}p{0pt}|}
			\hline
			Code branche &
			\multicolumn{6}{c}{Ministère de l'Éducation nationale, de l'Enfance et de la Jeunesse}& \\
			MATHE #3 & \multicolumn{6}{c}{\scshape Examen de fin d'études secondaires techniques}& \\
			& \multicolumn{6}{c}{Régime technique - Session #1}& \\
			\hline
			\textbf{Épreuve} && Branche &&& Division/Section && \\
			\textbf{écrite} &&&&&&& \\
			\cline{1-1}
			Durée de l'épreuve && \scshape\Large Mathématiques #3 &&& \scshape\Large #2 && \\
			#4 &&&&&&& \\
			\cline{1-1}
			Date de l'épreuve &&&&&&& \\
			&&&&&&& \\
			\hline
		\end{tabular}
	\end{center}
	\renewcommand{\arraystretch}{1}
}

%Kompetenzen
\newcommand{\competences}{
	\begin{center}
		
	\end{center}
}


%%Questions
%\newcounter{temp}
%\newcommand{\quest}[1] % Question environnement
%{\refstepcounter{temp}
%	\bigskip
%	{\bfseries\large Question \arabic{temp}} \hfill {(#1 points)} \\[1.5ex] 
%}

%Questions
\newcounter{newtemp}
\newcommand{\newquest}[2][] % Question environnement
{\refstepcounter{newtemp}
	\bigskip
	{\bfseries\large Question \arabic{newtemp}} \hfill {
		\begin{tikzpicture}[baseline=-0.1cm]
		\node(p) at (0,-0.2) {\huge $ \frac{\Huge \  }{#2^{#1}} $};
		\node[circle,draw,inner sep=0.2cm, label=](p) at (0,0) {\phantom{\huge $ \frac{\Huge \  }{#2^{#1}} $}};
		\end{tikzpicture}}\\[1.5ex]
	
	\totalpoints{#2}
}

\newtotcounter{questionCounter}


\newcommand*{\totalQuestPoints}[1]{\expandafter\addtocounter\expandafter{\currentCounter}{#1}}

\newenvironment{quest}{
	\refstepcounter{newtemp}
	\def\baseName{count}
	\edef\currentCounter{\baseName\thenewtemp}
	\expandafter\newtotcounter\expandafter{\currentCounter}
		
	\bigskip
	{\bfseries\large Question \arabic{newtemp}} \hfill {
		\begin{tikzpicture}[baseline=-0.1cm]
		\node(p) at (0,-0.2) {\huge $ \frac{\Huge \  }{\number\expandafter\totvalue\expandafter{\currentCounter}} $};
		\node[circle,draw,inner sep=0.2cm, label=](p) at (0,0) {\phantom{\huge $ \frac{\Huge \  }{\number\expandafter\totvalue\expandafter{\currentCounter}} $}};
		\end{tikzpicture}}\\[1.5ex]
}{
	\totalpoints{\number\expandafter\totvalue\expandafter{\currentCounter}}
}




\newcommand{\framedPoints}[2][true]{{\normalsize$\frac{\phantom{#2}}{#2}$}\ifthenelse{\boolean{#1}}{\totalQuestPoints{#2}}{}}

\newcommand{\points}[1]{\marginnote{\normalsize $ \frac{\ }{#1} $} \totalQuestPoints{#1}}
\newcommand{\doublepoints}[2]{\marginnote{\normalsize $ \frac{\ }{#1} \quad \frac{\ }{#2} $} \totalQuestPoints{#1} \totalQuestPoints{#2}}
\newcommand{\triplepoints}[3]{\marginnote{\normalsize $ \frac{\ }{#1} \ \frac{\ }{#2} \ \frac{\ }{#3} $} \totalQuestPoints{#1} \totalQuestPoints{#2} \totalQuestPoints{#3}}

\NewTasksEnvironment[item-indent=5.5em,label-width=4em,label-align=left]{questionEnum}(2)

\newcommand{\oneStar}[1]{\framedPoints{#1} $ \phantom{\star\star}{\star} $\hfill \alph{task})}
\newcommand{\twoStar}[1]{\framedPoints{#1} $ \phantom{\star}{\star\star} $\hfill \alph{task})}
\newcommand{\threeStar}[1]{\framedPoints[false]{#1} $ {\star}{\star\star} $\hfill \alph{task})}

\newcommand{\SLBase}[2]{
	\begin{center}
		\textbf{#1 \begin{tikzpicture}[baseline=-0.1cm]
			\node(p) at (0,-0.2) {\huge $ \frac{\Huge \  }{#2} $};
			\node[circle,draw,inner sep=0.2cm, label=](p) at (0,0) {\phantom{\huge $ \frac{\Huge \  }{#2} $}};
			\end{tikzpicture} }
	\end{center}
}

\newcommand{\SL}[1]{\SLBase{Soin et langage mathématique:}{#1}}
\newcommand{\SLGeometrie}[1]{\SLBase{Soin, langage mathématique et précision des figures:}{#1}}

\pagestyle{scrheadings}
\renewcommand{\chapterpagestyle}{scrheadings}

