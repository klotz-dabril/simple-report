\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{trabalho}[2003/08/19 v2.0]
% Initial Code ---------------------------------------
%
\RequirePackage{ifthen}
%
% - Declaration of Options -----------------------------
%
% saving taken from dissertation.sty with modification
%
\newboolean{saving}
%
\PassOptionsToClass{a4paper,oneside,onecolumn}{article}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
%
% - Execution of Options -------------------------------
%
\ProcessOptions
%
% - Package Loading ------------------------------------
%
\LoadClass{article}

%
% - Main Code ------------------------------------------
%
%     some redefinitions I need later
%
%
%     some definitions and defaults that are convenient

%
\def\college#1{\gdef\@college{#1}}
\def\coursename#1{\gdef\@coursename{#1}}
\def\coursenumber#1{\gdef\@coursenumber{#1}}
\def\coursesection#1{\gdef\@coursesection{#1}}
\def\studentnumber#1{\gdef\@studentnumber{#1}}
\def\instructor#1{\gdef\@instructor{#1}}
%
\gdef\@author{}
\gdef\@title{Tittle}
\gdef\@date{\today}
\gdef\@college{Universidade Federal de Santa Catarina}
\gdef\@coursename{}
\gdef\@coursenumber{}
\gdef\@coursesection{}
\gdef\@studentnumber{}
\gdef\@instructor{}





% redefine the titlematter
%



\newcommand{\spacing}[1]{\renewcommand{\baselinestretch}{#1}%
			\large\normalsize}





%
\def\@maketitle{%
  \newpage
  \null
  \vskip 2em%
  \begin{flushleft}%
  	\begin{spacing}{1}%
    {\sffamily \LARGE \@title \par}%
    \vskip 2em%
    {\sffamily \large\lineskip .75em\@author}\\%
    \sffamily \@studentnumber%
    \vskip 1em%
    \sffamily \@date
    \vskip 3em%
    \sffamily \@college \\%
    \sffamily \@coursenumber\hskip 6pt\@coursesection\hskip 6pt%
			\@coursename\\%
    \sffamily \@instructor%
    \par%
    \end{spacing}%
  \end{flushleft}\hrule\vskip 1em\par
  \par
  \vskip 1.5em}


%% End of file `coursepaper.cls'.
