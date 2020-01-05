\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uni_report}[2020/01/05 Kirito Feng's University Report Format]
\LoadClass[10pt]{article}
\RequirePackage{amsthm,amsmath,amssymb,cancel,color,geometry,hyperref,listings,titlesec,varwidth}
\hypersetup{pdfpagemode=UseNone}

\titlespacing\section{0pt}{7pt plus 4pt minus 2pt}{-2pt plus 2pt minus 2pt}
\titlespacing\subsection{0pt}{2pt plus 4pt minus 2pt}{-2pt plus 2pt minus 2pt}

\setlength{\itemsep}{30pt}
\setlength{\parskip}{5pt}
\setlength{\parsep}{5pt}
\renewcommand{\baselinestretch}{1.1}

\renewcommand{\qedsymbol}{$\blacksquare$}
\geometry{left=0.75in,right=0.75in,top=1in,bottom=1in}
\hypersetup{
  colorlinks=false,
  pdfborder={0 0 0},
}
\def\changemargin#1#2{\list{}{\rightmargin#2\leftmargin#1}\item[]}
\let\endchangemargin=\endlist 

\definecolor{gray}{gray}{0.5}
\definecolor{mygreen}{RGB}{28,172,0} % color values Red, Green, Blue
\definecolor{mylilas}{RGB}{170,55,241}

\lstset{language=Python,%
    basicstyle=\small\ttfamily,
    breaklines=true,%
    morekeywords={matlab2tikz},
    keywordstyle=\color{blue},%
    morekeywords=[2]{1}, keywordstyle=[2]{\color{black}},
    identifierstyle=\color{black},%
    stringstyle=\color{mylilas},
    commentstyle=\color{mygreen},%
    showstringspaces=false,%without this there will be a symbol in the places where there is a space
    numbers=left,%
    numberstyle={\tiny \color{black}},% size of the numbers
    numbersep=9pt, % this defines how far the numbers are from the text
    emph=[1]{for,end,break},emphstyle=[1]\color{red}, %some words to emphasise
}

\newcommand{\bytes}{\text{ bytes}}
\newcommand{\bits}{\text{ bits}}
\newcommand{\byte}{\text{ byte}}
\newcommand{\bit}{\text{ bit}}
\newcommand{\kb}{\text{ KB}}
\newcommand{\kbps}{\text{ kbps}}
\newcommand{\Mb }{\text{ MB}}
\newcommand{\Mbps }{\text{ Mbps}}
\newcommand{\s}{\text{ s}}
\newcommand{\h}{\text{ h}}
\newcommand{\m}{\text{ m}}
\newcommand{\km}{\text{ km}}
\newcommand{\cbytes}{\text{ \cancel{bytes}}}
\newcommand{\cbits}{\text{ \cancel{bits}}}
\newcommand{\cbyte}{\text{ \cancel{byte}}}
\newcommand{\cbit}{\text{ \cancel{bit}}}
\newcommand{\ckb}{\text{ \cancel{kb}}}
\newcommand{\ckbps}{\text{ \cancel{kbps}}}
\newcommand{\cMb }{\text{ \cancel{Mb}}}
\newcommand{\cMbps }{\text{ \cancel{Mbps}}}
\newcommand{\cs}{\text{ \cancel{s}}}
\newcommand{\ch}{\text{ \cancel{h}}}
\newcommand{\cm}{\text{ \cancel{m}}}
\newcommand{\ckm}{\text{ \cancel{km}}}

\makeatletter
\if@titlepage
  \renewenvironment{abstract}{%
      \titlepage
      \null\vfil
      \@beginparpenalty\@lowpenalty
      \begin{center}%
        \bfseries \abstractname
        \@endparpenalty\@M
      \end{center}}%
     {\par\vfil\null\endtitlepage}
\else
  \renewenvironment{abstract}{%
  \normalsize
      \if@twocolumn
        \section*{\abstractname}%
      \else
        \begin{center}%
          {\large\bfseries \abstractname\vspace{-1.0em}\vspace{\z@}}%
        \end{center}%
        \quotation
      \fi}
      {\if@twocolumn\else\endquotation\fi}
\fi
\makeatother

\makeatletter
\newcommand*{\subtitle}[1]{\gdef\@subtitle{#1}}
\let\@subtitle\@empty
\renewcommand*{\maketitle}{%
\begin{center}
  \LARGE\@title\par
  \vspace{-5pt}
  \Large\@subtitle\par
  \vspace{5pt}
  \normalsize
  \begin{tabular}[t]{c}
    \@author
  \end{tabular}\par
  \vspace{3pt}
  \@date
  \vspace{-3pt}
\end{center}}
\makeatother

\makeatletter
\g@addto@macro\bfseries{\boldmath}
\makeatother