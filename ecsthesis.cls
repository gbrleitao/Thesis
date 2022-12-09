%%
%% This is file `ecsthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% ecsdocs.dtx  (with options: `thesis')
%% 
%% Copyright (C) 2001 by Steve R. Gunn
%% 
%% This file is part of the ECSDocs class distribution
%% 
\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{ecsthesis}
              [2011/11/10 v2.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}
\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}
\setmarginsrb           { 1.3in}  % left margin
                        { 0.6in}  % top margin
                        { 1.0in}  % right margin
                        { 0.8in}  % bottom margin
                        {  20pt}  % head height
                        {0.25in}  % head sep
                        {   9pt}  % foot height
                        { 0.3in}  % foot sep
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
%%\usepackage[centerlast,small,sc]{caption2}
\usepackage{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Figure~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Chapter~\ref{#1}}
\newcommand{\sref}[1]{Section~\ref{#1}}
\newcommand{\aref}[1]{Appendix~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage[scriptsize]{subfigure}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}
%%\usepackage{lstpatch}
\usepackage{xifthen}
\usepackage{tabularx}
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={blue},citecolor={blue},urlcolor={red},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space
}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1} \def\UNIVNAME{\uppercase{#1}}}
\newcommand*{\EXECUTIVEPOWER}[1]{\def\EXECUTIVEPOWER{#1}}
\newcommand*{\MEDUCATION}[1]{\def\MEDUCATION{#1}}
\newcommand*{\department}[1]{\def\deptname{#1} \def\DEPTNAME{\uppercase{#1}}}
\newcommand*{\group}[1]{\def\groupname{#1} \def\GROUPNAME{\uppercase{#1}}}
\newcommand*{\faculty}[1]{\def\facname{#1} \def\FACNAME{\uppercase{#1}}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}
\newcommand*{\removecolourlinks}{\hypersetup{colorlinks=true,linkcolor=black,citecolor=black,urlcolor=black,filecolor=black}}
\supervisor  {}
\examiner    {}
\degree      {}
\authors     {}
\EXECUTIVEPOWER  {\texorpdfstring{\href{http://portal.ufam.edu.br}
                {PODER EXECUTIVO}}
                {PODER EXECUTIVO}} 
\MEDUCATION  {\texorpdfstring{\href{http://portal.ufam.edu.br}
                {MINIST\'{E}RIO DA EDUCA\c{C}\~{A}O}}
                {MINIST\'{E}RIO DA EDUCA\c{C}\~{A}O}}                 
\university  {University of Southampton}
\department  {Electronics and Computer Science}
\group       {Electronic and Software Systems}
\faculty     {Faculty of Physical and Applied Sciences}
\addresses   {}
\subject     {}
\keywords    {}

%TODO:BEGIN...RAWLINSON...
\newcommand*{\datadefesa}[1]{\def\datadefesadef{#1}}
\newcommand*{\dataaprovacao}[1]{\def\dataaprovacaodef{#1}}
\newcommand*{\orientadorname}[1]{\def\orientadornamedef{#1}}
\newcommand*{\orientadoruniversity}[1]{\def\orientadoruniversitydef{#1}}
\newcommand*{\membroumname}[1]{\def\membroumnamedef{#1}}
\newcommand*{\membroumuniversity}[1]{\def\membroumuniversitydef{#1}}
\newcommand*{\membrodoisname}[1]{\def\membrodoisnamedef{#1}}
\newcommand*{\membrodoisuniversity}[1]{\def\membrodoisuniversitydef{#1}}
\newcommand*{\membrotresname}[1]{\def\membrotresnamedef{#1}}
\newcommand*{\membrotresuniversity}[1]{\def\membrotresuniversitydef{#1}}
\newcommand*{\textoFinalidadeDissertacao}[1]{\def\textoFinalidadeDissertacaodef{#1}}

% \datadefesa					{Manaus - Amazonas \\ XX de XXXXXXXXXX de XXXX}
% \dataaprovacao				{XX/XX/XXXX}
% \orientadorname				{Orientador do trabalho}
% \orientadoruniversity		{Universidade Federal do Amazonas}
% \membroumname				{Membro um}
% \membroumuniversity			{Universidade Federal do Amazonas}
% \membrodoisname				{Membro dois}
% \membrodoisuniversity		{Universidade Federal do Amazonas}
% \textoFinalidadeDissertacao	{Dissertação apresentada ao Programa de Pós-Graduação em Informática do Instituto de Computação da Universidade Federal do Amazonas como requisito para a obtenção do grau de Mestre em Engenharia de Software e Sistemas Embarcados.}

%TODO: parametros de inicializacao da pagina de catalogacao do trabalho...
\newcommand*{\nomeorientadorcatalogacao}[1]{\def\nomeorientadorcatalogacaodef{#1}}
\newcommand*{\nomeautorcatalogacao}[1]{\def\nomeautorcatalogacaodef{#1}}
\newcommand*{\localcatalogacao}[1]{\def\localcatalogacaodef{#1}}
\newcommand*{\anocatalogacao}[1]{\def\anocatalogacaodef{#1}}
\newcommand*{\referenciacatalogacao}[1]{\def\referenciacatalogacaodef{#1}}
\newcommand*{\graucatalogacao}[1]{\def\graucatalogacaodef{#1}}
\newcommand*{\paginarefbibcatalogacao}[1]{\def\paginarefbibcatalogacaodef{#1}}
\newcommand*{\palavraschavecatalogacao}[1]{\def\palavraschavecatalogacaodef{#1}}

\nomeorientadorcatalogacao	{Barreto, Raimundo da Silva}
\nomeautorcatalogacao		{Leitão, Gabriel de Souza}
\localcatalogacao			{Manaus, BR - AM}
\anocatalogacao				{2019}
\referenciacatalogacao		{XVII, 316f.: il.; 29,7cm}
\graucatalogacao			{Tese (Doutorado)}
\paginarefbibcatalogacao	{XX - XX}
\palavraschavecatalogacao	{1.. 2... 3.. 4...}
%TODO:END...RAWLINSON...

\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}
  \begin{titlepage}
	\begin{figure}
		\centering
		\includegraphics[width=3.5cm]{imgs/ufam.eps}
	\end{figure}
	\let\footnotesize\small
	\let\footnoterule\relax
	\let \footnote \thanks
	\setcounter{footnote}{0}
	%TODO_RAW:\null\vfil
	\vskip 4\p@
    \begin{center}
		\setlength{\parskip}{0pt}
		{\large\textbf{\UNIVNAME}\par}
		%TODO_RAW:\bigskip
		{\large\textbf{\DEPTNAME}\par}
		%TODO_RAW:\smallskip
		{\large\textbf{\FACNAME}\par}
		%TODO_RAW:\vfill
		%  	  \bigskip
		%  	  \bigskip
		%     \bigskip
		%     \bigskip
		%TODO_RAW:{\large \bf \@title \par}
		\vfill
		{\huge \bf \@title \par}
		%\bigskip
		%{\Large by \par}
		\vfill
		{\LARGE por \par}
		%\bigskip
		%\bigskip
		%{\large \textbf{\authornames} \par}
		\smallskip
		{\LARGE \authornames \par}
		\vfill
		%TODO_RAW:{\large Thesis for the degree of Doctor of Philosophy\par}
		
		\bigskip
		\bigskip
		\bigskip
		{\LARGE \datadefesadef \par}
    \end{center}
    \par
    \@thanks
    \vfil\null

  \end{titlepage}
  
%  \setcounter{footnote}{0}%
%  \global\let\thanks\relax
%  \global\let\maketitle\relax
%  \global\let\@thanks\@empty
%  \global\let\@author\@empty
%  \global\let\@date\@empty
%  \global\let\title\relax
%  \global\let\author\relax
%  \global\let\date\relax
%  \global\let\and\relax
  \cleardoublepage
}

%% -----------------------
%% Folha de Rosto      
%% -----------------------
\newcommand\makesubtitle{
  \btypeout{Sub Title Page}
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}
  \begin{titlepage}

    \begin{minipage}[c]{2.5cm}
      \parbox[c]{1em}{\includegraphics[width=2.5cm]{imgs/brasao_federacao.eps}}
    \end{minipage}
    \begin{minipage}[c]{95mm}
	    \begin{center}
	    {\fontsize{9.5}{12}\selectfont \EXECUTIVEPOWER \\}
	    {\fontsize{9.5}{12}\selectfont \MEDUCATION \\}
	    {\fontsize{9.5}{12}\selectfont \UNIVNAME \\}
	    {\fontsize{9.5}{12}\selectfont \DEPTNAME \\}    
	    {\fontsize{9.5}{12}\selectfont \FACNAME \\}
	    \end{center}
    \end{minipage}
    \begin{minipage}[c]{2.5cm}
      \parbox[c]{1em}{\includegraphics[width=2.5cm]{imgs/ufam.eps}}
    \end{minipage}
	
	\let\footnotesize\small
	\let\footnoterule\relax
	\let \footnote \thanks
	\setcounter{footnote}{0}
	%     \null\vfil
	\vskip 4\p@
    \begin{center}
		\setlength{\parskip}{0pt}
		
%		{\large\textbf{\UNIVNAME}\par}
%		{\large\textbf{\DEPTNAME}\par}
%		{\large\textbf{\FACNAME}\par}
		
		\vspace*{1.5cm}
		
		%       \vfill
		{\huge \bf \@title \par}
		\vfill
		{\LARGE por \par}
		\smallskip
		{\LARGE \authornames \par}
		\vfill
		
		\vspace*{0.5cm}
		
		\begin{flushright}
			\begin{minipage}{95mm}
				{\Large \textoFinalidadeDissertacaodef \par}
			\end{minipage}\par
			\vspace*{10.5mm}           
			\begin{minipage}{95mm}
				{\Large \textbf{Orientador:} \orientadornamedef \par}
			\end{minipage}\par
%			\begin{tabularx}{95mm}[b]{@{}l@{ }X@{}}
%				{\Large \textbf{Orientador:}} & {\Large \orientadornamedef}\\
%			\end{tabularx}\par     
		\end{flushright}
		\vfill
		\bigskip
		\bigskip
		\bigskip
		\bigskip
		{\LARGE \datadefesadef \par}
    \end{center}
    \par
    \@thanks
    \vfil\null

  \end{titlepage}
  
%  \setcounter{footnote}{0}%
%  \global\let\thanks\relax
%  \global\let\makesubtitle\relax
%  \global\let\@thanks\@empty
%  \global\let\@author\@empty
%  \global\let\@date\@empty
%  \global\let\title\relax
%  \global\let\author\relax
%  \global\let\date\relax
%  \global\let\and\relax
  \cleardoublepage
}

%folha de aprovação
\newcommand\imprimirfolhadeaprovacao{
\btypeout{Folha de Aprovacao}
\thispagestyle{empty}
\begin{titlepage}

    \begin{minipage}[c]{2.5cm}
      \parbox[c]{1em}{\includegraphics[width=2.5cm]{imgs/brasao_federacao.eps}}
    \end{minipage}
    \begin{minipage}[c]{95mm}
	    \begin{center}
	    {\fontsize{9.5}{12}\selectfont \EXECUTIVEPOWER \\}
	    {\fontsize{9.5}{12}\selectfont \MEDUCATION \\}
	    {\fontsize{9.5}{12}\selectfont \UNIVNAME \\}
	    {\fontsize{9.5}{12}\selectfont \DEPTNAME \\}    
	    {\fontsize{9.5}{12}\selectfont \FACNAME \\}
	    \end{center}
    \end{minipage}
    \begin{minipage}[c]{2.5cm}
      \parbox[c]{1em}{\includegraphics[width=2.5cm]{imgs/ufam.eps}}
    \end{minipage}

	\begin{center}
		\setlength{\parskip}{0pt}
		\vspace*{0.4cm}
		{\Large TERMO DE APROVA\c{C}\~{A}O}
		\vspace*{0.4cm}
		
		{\Large \bf \@title \par}
		{por \par}
		\smallskip
		{\authornames \par}
		
		\vspace*{0.3cm}
		
		{Esta Tese foi julgada adequada para obten\c{c}\~{a}o do T\'{i}tulo de 
		Doutor em Inform\'{a}tica e aprovada em sua forma final pelo Programa de P\'{o}s-Gradua\c{c}\~{a}o em 
		Inform\'{a}tica da Universidade Federal do Amazonas.\par}
		
		\vspace*{0.5cm}                      
	\end{center}

	\begin{flushleft}
	{Aprovada em: {\bf \dataaprovacaodef} \par}
	\end{flushleft}
	
	\begin{center}
		\setlength{\parskip}{0pt}
		{\textbf{BANCA EXAMINADORA} \par}
		
% 		\bigskip
		\bigskip
		\bigskip
		{\normalsize ------------------------------------------------------------------------------------ \\
		\textbf{\orientadornamedef (Orientador)} \\
		\orientadoruniversitydef \par}

% 		\bigskip
		\bigskip
		\bigskip
		{\normalsize ------------------------------------------------------------------------------------ \\
		\textbf{\membroumnamedef} \\
		\membroumuniversitydef \par}

% 		\bigskip
		\bigskip
		\bigskip
		{\normalsize ------------------------------------------------------------------------------------ \\
		\textbf{\membrodoisnamedef} \\
		\membrodoisuniversitydef \par}
				
		\bigskip
		\bigskip
		{\normalsize ------------------------------------------------------------------------------------ \\
		\textbf{\membrotresnamedef} \\
		\membrotresuniversitydef \par}
		
		\vfill
% 		\bigskip
% 		\bigskip
% 		\bigskip
% 		{\LARGE \datadefesadef \par}
	\end{center}
    \par
    \@thanks
    \vfil\null
\end{titlepage}
  
%  \setcounter{footnote}{0}%
%  \global\let\thanks\relax
%  \global\let\makesubtitle\relax
%  \global\let\@thanks\@empty
%  \global\let\@author\@empty
%  \global\let\@date\@empty
%  \global\let\title\relax
%  \global\let\author\relax
%  \global\let\date\relax
%  \global\let\and\relax
  \cleardoublepage
}

%folha de Catalogação na Publicação
\newcommand\imprimirfolhadecatalogacao{
\btypeout{CIP - CATALOGA\c{C}\~{A}O NA PUBLICA\c{C}\~{A}O}
\thispagestyle{empty}
\begin{titlepage}
    \begin{flushleft}    
     {\Large CIP - CATALOGA\c{C}\~{A}O NA PUBLICA\c{C}\~{A}O \par}
    \end{flushleft}
    
    \null\vfill
    \begin{center}
    \begin{tabular}{|p{12cm}|}
    \hline
	\\
	\nomeautorcatalogacaodef \\
	\\
	\parbox[c]{12cm}{\@title \hspace{0.1cm} / \hspace{0.1cm} \authornames. \localcatalogacaodef, \anocatalogacaodef.} \\
	\\
	{\hspace{0.8cm} \referenciacatalogacaodef \par}
	{\hspace{0.8cm} Orientador: \orientadornamedef \par}
	{\hspace{0.7cm} \graucatalogacaodef \hspace{0.1cm} - \univname. \deptname, \localcatalogacaodef, \anocatalogacaodef. \par}
	{\hspace{0.8cm} Refer\^{e}ncias Bibliogr\'{a}ficas: p. \paginarefbibcatalogacaodef. \par}
	{\hspace{0.8cm} \palavraschavecatalogacaodef  I. \nomeorientadorcatalogacaodef. II. \univname, \facname. III. \@title \par} \\
    \hline
    \end{tabular}
    \end{center}
    
    \vfill
    \bigskip
	\bigskip
	\bigskip
	\bigskip
	\bigskip
	\bigskip
	\bigskip
	\bigskip
	\bigskip
	\bigskip
	\bigskip
	\bigskip
	\bigskip
	\bigskip

    \begin{flushleft}    
     {\fontsize{10}{10}\selectfont \large\textbf{\UNIVNAME}\par}
     {\fontsize{10}{10}\selectfont Reitor: Prof. Dr. Sylvio M\'{a}rio Puga Ferreira \par}
     {\fontsize{10}{10}\selectfont Pr\'{o}-Reitora de Pesquisa e P\'{o}s-Gradua\c{c}\~{a}o: Profa. Dra. Selma Suely Ba\'{c}al de Oliveira \par}
    %  {\fontsize{10}{10}\selectfont Pr\'{o}-Reitor de Ensino e Gradua\c{c}\~{a}o: Prof. Luc\'{i}dio Rocha dos Santos \par}
     {\fontsize{10}{10}\selectfont Coord. do Programa de P\'{o}s-Gradua\c{c}\~{a}o em Inform\'{a}tica: Prof. Dr. Juan Gabriel Colonna \par}
     {\fontsize{10}{10}\selectfont Diretora do Instituto de Computa\c{c}\~{a}o: Profa. Dr. José Luís de Souza Pio \par}
    \end{flushleft}
    \par
    \@thanks
    \vfil\null
\end{titlepage}
  
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\makesubtitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}

\newcommand\dedicatory[1]{
	\btypeout{Dedicatory}
	\thispagestyle{empty}
	\null\vfil
	\vskip 60\p@
	\begin{center}{\Large \sl #1}\end{center}
	\vfil\null
	\cleardoublepage
}

\newcommand\acknowledgements[1]{
	\btypeout{Agradecimentos}
%	\addtotoc{Agradecimentos}
	\thispagestyle{empty}
	\null\vfil
	\vskip 40\p@
	\begin{center}{\Large\bf Agradecimentos \par}\end{center}
	{\normalsize #1}
	\vfil\vfil\null
	\cleardoublepage
}

\newcommand\imprimirEpigrafe[1]{
\btypeout{Epigrafe}
\thispagestyle{empty}
\begin{titlepage}
	% Bottom of the page
	\vfil\null
	\vfill
	\begin{flushright}
		\begin{minipage}{100mm}
			\raggedleft
			{\normalsize #1 \par}
		\end{minipage}\par
	\end{flushright}
\end{titlepage}
\setcounter{footnote}{0}%
\cleardoublepage
}

\newenvironment{resumo}
{
  \btypeout{Abstract Page}
  \thispagestyle{empty}
  \null\vfil
  \begin{center}
    \setlength{\parskip}{0pt}
%    {\normalsize
%    {\MakeUppercase\@title} \par}
%    \medskip
%    {\normalsize por \authornames \par}
%    \bigskip
    \begin{center}{\Large\bf RESUMO \par}\end{center}
    %\bigskip
    %{\normalsize \underline{Doctor of Philosophy}\par}
    \bigskip
  \end{center}
}
{
  \vfil\vfil\vfil\null
  \cleardoublepage
}

\newenvironment{abstract}
{
  \btypeout{Abstract Page}
  \thispagestyle{empty}
  \null\vfil
  \begin{center}
    \setlength{\parskip}{0pt}
%    {\normalsize
%    {\MakeUppercase\@title} \par}
%    \medskip
%    {\normalsize por \authornames \par}
%    \bigskip
    \begin{center}{\Large\bf ABSTRACT \par}\end{center}
    %\bigskip
    %{\normalsize \underline{Doctor of Philosophy}\par}
    \bigskip
  \end{center}
}
{
  \vfil\vfil\vfil\null
  \cleardoublepage
}
\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}
\renewcommand\tableofcontents{
\btypeout{Table of Contents}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}
\renewcommand\listoffigures{
\btypeout{Lista de Figuras}
\addtotoc{Lista de Figuras}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\renewcommand\listoftables{
\btypeout{Lista de Tabelas}
\addtotoc{Lista de Tabelas}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\newcommand\listsymbolname{Lista de Abreviações e Acrônimos}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
\btypeout{\listsymbolname}
\addtotoc{\listsymbolname}
    \chapter*{\listsymbolname
      \@mkboth{
          \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}
    }
	\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}

\newcommand\authorshipdeclaration[1]{
\btypeout{Declaration of Authorship}
\addtotoc{Declaration of Authorship}
\thispagestyle{plain}
\null\vfil
\vskip 60\p@
\begin{center}{\Large\bf Declaration of Authorship \par}\end{center}
{\normalsize I, \authornames, declare that the thesis entitled \emph{\@title} and the work presented in the thesis are both my own, and have been generated by me as the result of my own original research. I confirm that:

\begin{itemize}
\item this work was done wholly or mainly while in candidature for a research degree
at this University;
\item where any part of this thesis has previously been submitted for a degree or any
other qualification at this University or any other institution, this has been clearly
stated;
\item where I have consulted the published work of others, this is always clearly
attributed;
\item where I have quoted from the work of others, the source is always given. With
the exception of such quotations, this thesis is entirely my own work;
\item I have acknowledged all main sources of help;
\item where the thesis is based on work done by myself jointly with others, I have
made clear exactly what was done by others and what I have contributed myself;
\ifthenelse{\isempty{#1}}
{\item none of this work has been published before submission}
{\item parts of this work have been published as: #1}
\end{itemize}

\vspace{15.0mm}
Signed:.......................................................................................................................

\vspace{3.0mm}
Date:..........................................................................................................................
}
\vfil\vfil\null
\cleardoublepage
}

\renewcommand{\bibname}{References}
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}


\endinput
%%
%% End of file `ecsthesis.cls'.
