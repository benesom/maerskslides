\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{maerskslides}[2014/08/16 Example LaTeX class]
 
\LoadClass[table,onlymath,10pt]{beamer}
\RequirePackage{xcolor}

\usepackage{etex}
\usepackage{dirtytalk}
\usepackage{tabularx}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{mathtools}
\usepackage[strict=true]{csquotes}
\usepackage{xcolor}
\usepackage{natbib}
\usepackage{amsmath,amssymb,textcomp}
\usepackage{bm}
\usepackage{graphicx}
\usepackage{wrapfig}
\usepackage{rotating}
\usepackage{capt-of}
\usepackage{listings}
\usepackage{booktabs}
\usepackage{multicol}
\usepackage{longtable}
\usepackage{zlmtt}
\usepackage{float}
\usepackage{fancyvrb}
\usepackage{verbatim}
\usepackage[english]{babel}
\usepackage{hyperref}
\usepackage{xspace}
\usepackage{url}
\usepackage{changepage}
\usepackage{amsthm}
\usepackage{mleftright}


\newtheorem{thm}{Theorem.}
\newtheorem{prop}{Proposition.}
\theoremstyle{definition} 
\newtheorem{defn}[thm]{Definition.}
\newtheorem{exa}[thm]{Example}


\newcommand{\R}{\ensuremath{\mathbb{R}}} 
\newcommand{\Real}{\ensuremath{\mathbb{R}}} 
\newcommand{\Complex}{\ensuremath{\mathbb{C}}} 
\newcommand{\Z}{\ensuremath{\mathbb{Z}}} 
\newcommand{\N}{\ensuremath{\mathbb{N}}} 
\newcommand{\norm}[1]{\ensuremath{\left\Vert#1\right\Vert}} 
\newcommand{\var}{\text{Var}} 
\newcommand{\cov}{\text{Cov}}
%\newcommand{\log}{\text{log }} 
\newcommand{\cor}{\ensuremath{\mathbb{C}\text{or}}} 
% \newcommand{\E}{\text{E}}
\newcommand{\pr}{\ensuremath{\mathbb{P}}} 
\newcommand{\from}{\leftarrow} 
\newcommand{\To}[2]{\ensuremath{#1\!\to\!#2}}
\newcommand{\From}[2]{\ensuremath{#1\!\from\!#2}}
\newcommand{\chain}[3]{\ensuremath{#1\!\to\!#2\to\!#3}}
\newcommand{\ichain}[3]{\ensuremath{#1\!\from\!#2\from\!#3}}
\newcommand{\fork}[3]{\ensuremath{#1\!\from\!#2\to\!#3}}
\newcommand{\ifork}[3]{\ensuremath{#1\!\to\!#2\from\!#3}}
\newcommand{\pa}{\text{pa}}
\newcommand{\abs}[1]{\ensuremath{\left\vert#1\right\vert}} 
\newcommand{\ipr}[1]{\langle#1\rangle} 
\newcommand{\set}[1]{\left{#1\right}} 
\newcommand{\seq}[1]{\left<#1\right>} 
\renewcommand{\subset}{\subseteq}  
\renewcommand{\supset}{\supseteq} 
\DeclareMathOperator*{\argmin}{arg\,min}
\DeclareMathOperator*{\argmax}{arg\,max}
\newcommand{\sgn}{\operatorname{sgn}} 
\newcommand{\mvec}{\operatorname{vec}} 
\newcommand{\logit}{\operatorname{logit}} 
\newcommand{\tr}{\operatorname{tr}} 
\newcommand{\im}{\operatorname{im}}
\newcommand{\diag}{\operatorname{diag}} 
\newcommand{\bias}{\operatorname{bias}} 
\newcommand{\rank}{\operatorname{rank}}

\newcommand{\Cov}[1]{\text{Cov} \mleft[#1 \mright]}
\newcommand{\Var}[1]{\text{Var} \mleft[#1 \mright]}
\newcommand{\E}[1]{\mathbb{E} \mleft[#1 \mright]}


\newcommand{\Question}{\textcolor{red}{Question: }}
\newcommand{\Assumptions}{\textbf{Assumptions: }}
\newcommand{\Objective}{\textbf{Objective: }}

\renewcommand{\newline}{\vspace{1em}} 


\makeatletter
 \def\mathcolor#1#{\@mathcolor{#1}}
 \def\@mathcolor#1#2#3{%
   \protect\leavevmode
   \begingroup
     \color#1{#2}#3%
  \endgroup
 }
\newcommand{\Dto}{\overset{\mathcal{D}}{\longrightarrow}}
\newcommand{\Pto}{\overset{P}{\longrightarrow}}
\newcommand{\Wto}{\overset{W}{\longrightarrow}}
\newcommand{\VV}{\bm{\Omega}_\theta}
\newcommand{\independenT}[2]{\mathrel{\setbox0\hbox{$#1#2$}\copy0\kern-\wd0\mkern4mu\box0}} 
\newcommand{\indep}{\protect\mathpalette{\protect\independenT}{\perp}}
\DefineVerbatimEnvironment{verbatim}{Verbatim}{xleftmargin=0.5em,xrightmargin=0em,numbers=none,frame=none,fontsize=\footnotesize,formatcom={\color[rgb]{0.2,0.2,0.2}}}
\setlength{\parindent}{0pt} % Kills annoying indents. 
\let\iint\relax 
\let\iiint\relax


\lstset{basicstyle=\ttfamily\small,keywordstyle=\color{black},commentstyle=\color{gray}\ttfamily\itshape,stringstyle=\color[rgb]{0,0,0.5},columns=fullflexible,alsoletter=.,texcl=true,escapeinside={*@}{@*)},escapebegin=\lst@commentstyle\,,breaklines=true,breakatwhitespace=false,numbers=left,numberstyle=\ttfamily\tiny\color{gray},stepnumber=1,numbersep=10pt,backgroundcolor=\color{white},tabsize=4,showspaces=false,showstringspaces=false,xleftmargin=.23in,frame=lines
,rulesepcolor=\color[rgb]{0.85,0.85,0.85},basewidth={0.5em,0.42em},language=r,label=
,caption= ,captionpos=b}
\lstset{basicstyle=\ttfamily\small,keywordstyle=\color{black},commentstyle=\color{gray}\ttfamily\itshape,stringstyle=\color[rgb]{0,0,0.5},columns=fullflexible,alsoletter=.,texcl=true,escapeinside={*@}{@*)},escapebegin=\lst@commentstyle\,,breaklines=true,breakatwhitespace=false,numbers=left,numberstyle=\ttfamily\tiny\color{gray},stepnumber=1,numbersep=10pt,backgroundcolor=\color{white},tabsize=4,showspaces=false,showstringspaces=false,xleftmargin=.23in,frame=lines
,rulesepcolor=\color[rgb]{0.85,0.85,0.85},basewidth={0.5em,0.42em},language=python,label=
,caption= ,captionpos=b}


% macro to repeat frametile on consecutive slides
\def\beamer@checkframetitle{%
\begingroup
  \edef\temp{%
    \endgroup
    \noexpand\frametitle
    [\unexpanded\expandafter{\beamer@savedshortframetitle}]%
    {\unexpanded\expandafter{\beamer@savedframetitle}}%
  }
\temp
\@ifnextchar\bgroup\beamer@inlineframetitle{}}

\long\def\beamer@@frametitle[#1]#2{%
  \beamer@ifempty{#2}{}{%
    \gdef\insertframetitle{{#2\ifnum\beamer@autobreakcount>0\relax{}\space\usebeamertemplate*{frametitle
continuation}\fi}}%
  \gdef\beamer@frametitle{#2}%
  \gdef\beamer@shortframetitle{#1}%
  \global\let\beamer@savedshortframetitle\beamer@shortframetitle
    \global\let\beamer@savedframetitle\beamer@frametitle
}%
}
  \global\let\beamer@savedshortframetitle\@empty
    \global\let\beamer@savedframetitle\@empty




\newcommand{\noframetitle}{\frametitle{\\}}



%\usepackage{tikz}



\author{An author}

\date{\today}
\title{Some title}


\usepackage[nofooter]{beamerthememaersk}
\usepackage{beamercolorthememaersk}

\usefonttheme{serif}

