\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exam}[2018/09/25 Devoir en classe]


\LoadClass{designBase} %a4paper; landscape

\RequirePackage{lastpage}
%\RequirePackage{etoolbox}
\RequirePackage{totcount}

\def\rattrapage{}

\DeclareOption{lge}{\def\logo{LGE.png}}
\DeclareOption{ltma}{\def\logo{LTMA.png}}
\DeclareOption{ca}{\def\caText{\ca}}
\DeclareOption{cna}{\def\caText{\cna}}
\DeclareOption{rattrapage}{\def\rattrapage{\\[\baselineskip] Rattrapage}}
\ProcessOptions\relax


\newcommand{\ca}
{\begin{center}\emph{Calculatrice autorisée, toutes les étapes de calcul doivent être explicitées!}\end{center}}

\newcommand{\cna}
{\begin{center}\emph{L'usage de la calculatrice n'est pas permis!}\end{center}}

\newcommand{\classe}[1]{
	\def\laClasse{#1}
}

\newcommand{\saison}[1]{
	\def\laSaison{#1}
}


\newcommand{\scriptcolor}{black}


\newcommand{\compTableau}{
	\begin{center}
		\setstretch{1}\setlength{\extrarowheight}{5pt}
		\footnotesize
		\begin{tabular}{|p{4.5cm}|*{5}{>{\centering\arraybackslash}m{1.9cm}|}}
			\hline
			\textbf{Compétence} & \textbf{insuffisant}  & \textbf{satisfaisant}  &  \textbf{bien} & \textbf{très bien} \\ \hline \hline
			\textbf{Nombres et opérations / dépendance et variation} & & & &  \\  \hline
			\textbf{Figures du plan\newline et de l'espace} &  & & &  \\  \hline
			%\textbf{Données} & & & & &  \\  &  & & & \\  \hline
			%\textbf{Processus aléatoires} &&&&\\  &  &  & & \\  \hline
			\textbf{Résolution de problèmes / modéliser} & & & & \\  \hline
			\textbf{Argumenter / \newline communiquer} &&&&\\  \hline
		\end{tabular}
	\end{center}
}

\newcommand{\compTableauClassique}{
	\begin{center}
		\setstretch{1}\setlength{\extrarowheight}{5pt}
		\footnotesize
		\begin{tabular}{|p{4.5cm}|*{5}{>{\centering\arraybackslash}m{1.9cm}|}}
			\hline
			\textbf{Compétence} & \textbf{insuffisant}  & \textbf{satisfaisant}  &  \textbf{bien} & \textbf{très bien} \\ \hline \hline
			\textbf{Nombres et opérations / dépendance et variation} & & & &  \\  \hline
			\textbf{Figures du plan\newline et de l'espace} &  & & &  \\  \hline
			%\textbf{Données} & & & & &  \\  &  & & & \\  \hline
			%\textbf{Processus aléatoires} &&&&\\  &  &  & & \\  \hline
			\textbf{Résolution de problèmes / modéliser} & & & & \\  \hline
			\textbf{Argumenter / \newline communiquer} &&&&\\  \hline
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


%-——————oir

\newcommand{\RNum}[1]{\uppercase\expandafter{\romannumeral #1\relax}}
\newcommand{\devoir}[3][\total{totalpoints}]{
	\setenumerate[1]{label=\alph*), ref=\theenumi.\alph*}
	
	\caText
	\vspace{0.5cm}
	\begin{minipage}{0.75\textwidth}
		\begin{center}
			{\Huge Devoir en classe \RNum{#2}.#3 \rattrapage}
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


%Questions
\newcounter{temp}
\newcommand{\quest}[1] % Question environnement
{\refstepcounter{temp}
	\bigskip
	{\bfseries\large Question \arabic{temp}} \hfill {(#1 points)} \\[1.5ex] 
}

%Questions
\newcounter{newtemp}
\newcommand{\newquest}[1] % Question environnement
{\refstepcounter{newtemp}
	\bigskip
	{\bfseries\large Question \arabic{newtemp}} \hfill {
		\begin{tikzpicture}[baseline=-0.1cm]
		\node(p) at (0,-0.2) {\huge $ \frac{\Huge \  }{#1} $};
		\node[circle,draw,inner sep=0.2cm, label=](p) at (0,0) {\phantom{\huge $ \frac{\Huge \  }{#1} $}};
		\end{tikzpicture}}\\[1.5ex]
	
	\totalpoints{#1}
}

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

\newcommand{\points}[1]{\marginnote{\normalsize $ \frac{\ }{#1} $}}
\newcommand{\doublepoints}[2]{\marginnote{\normalsize $ \frac{\ }{#1} \quad \frac{\ }{#2} $}}
\newcommand{\triplepoints}[3]{\marginnote{\normalsize $ \frac{\ }{#1} \ \frac{\ }{#2} \ \frac{\ }{#2} $}}


\pagestyle{scrheadings}
\renewcommand{\chapterpagestyle}{scrheadings}

