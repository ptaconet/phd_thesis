%
% This file is copyright (C) 2003 Sam Noble. It may be modified so long
% as my name is not removed and the modifier adds his name to the file.
% Redistribution permitted.
%
% 27 Jan 2004	Sam Noble	Removed tocbibind dependency.
% 04 Dec 2001 	Sam Noble	Class file
% 03 Sep 1995	David Perkinson	Title Page
% Acknowledgements Page, David Perkinson & Sam Noble
% May 2005 Patrick Carlisle Table of contents chapter definition
% 2004-2005 Ben Salzberg (BTS) a variety of tweaks here and in the template
% 2015 Chester Ismay (CII) modified to create R Markdown template
%
% Oddities:
%
%   We *ASSUME* that any time \cleardoublepage is called
%  we actually want a blank back side with NO page number/heading
%
%   Minor bug -- seems to be a more general LaTeX thing:
%  If you use \frontmatter \mainmatter without any chapters inbetween
%  be prepared to have the page numbering messed up. Not a big deal,
%  but I'm not sure how to fix it.
%
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{reedthesis}[2004/01/27 The Reed College Thesis Class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass{book}
\RequirePackage{fancyhdr}
% Added by CII to produce nice looking code in BeginVerbatimEnvironment
\RequirePackage{fancyvrb}

% Added by CII
\usepackage{ifxetex,ifluatex}
\usepackage{fixltx2e} % provides \textsubscript
\ifnum 0\ifxetex 1\fi\ifluatex 1\fi=0 % if pdftex
  \usepackage[T1]{fontenc}
  \usepackage[utf8]{inputenc}
\else % if luatex or xelatex
  \ifxetex
    \usepackage{mathspec}
    \usepackage{xltxtra,xunicode}
  \else
    \usepackage{fontspec}
  \fi
  \defaultfontfeatures{Mapping=tex-text,Scale=MatchLowercase}
  \newcommand{\euro}{€}
\fi
% use upquote if available, for straight quotes in verbatim environments
\IfFileExists{upquote.sty}{\usepackage{upquote}}{}
% use microtype if available
\IfFileExists{microtype.sty}{%
\usepackage{microtype}
\UseMicrotypeSet[protrusion]{basicmath} % disable protrusion for tt fonts
}{}
\usepackage{color}
%\newcommand{\VerbBar}{|}
%\newcommand{\VERB}{\Verb[commandchars=\\\{\}]}
\DefineVerbatimEnvironment{verbatim}{Verbatim}{xleftmargin=-1em}
\DefineVerbatimEnvironment{Highlighting}{Verbatim}{commandchars=\\\{\}}
% Add ',fontsize=\small' for more characters per line
\usepackage{framed}
\definecolor{shadecolor}{RGB}{248,248,248}
% \newenvironment{Shaded}{\begin{snugshade}}{\end{snugshade}}
% \newcommand{\KeywordTok}[1]{\textcolor[rgb]{0.13,0.29,0.53}{\textbf{{#1}}}}
% \newcommand{\DataTypeTok}[1]{\textcolor[rgb]{0.13,0.29,0.53}{{#1}}}
% \newcommand{\DecValTok}[1]{\textcolor[rgb]{0.00,0.00,0.81}{{#1}}}
% \newcommand{\BaseNTok}[1]{\textcolor[rgb]{0.00,0.00,0.81}{{#1}}}
% \newcommand{\FloatTok}[1]{\textcolor[rgb]{0.00,0.00,0.81}{{#1}}}
% \newcommand{\ConstantTok}[1]{\textcolor[rgb]{0.00,0.00,0.00}{{#1}}}
% \newcommand{\CharTok}[1]{\textcolor[rgb]{0.31,0.60,0.02}{{#1}}}
% \newcommand{\SpecialCharTok}[1]{\textcolor[rgb]{0.00,0.00,0.00}{{#1}}}
% \newcommand{\StringTok}[1]{\textcolor[rgb]{0.31,0.60,0.02}{{#1}}}
% \newcommand{\VerbatimStringTok}[1]{\textcolor[rgb]{0.31,0.60,0.02}{{#1}}}
% \newcommand{\SpecialStringTok}[1]{\textcolor[rgb]{0.31,0.60,0.02}{{#1}}}
% \newcommand{\ImportTok}[1]{{#1}}
% \newcommand{\CommentTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textit{{#1}}}}
% \newcommand{\DocumentationTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textbf{\textit{{#1}}}}}
% \newcommand{\AnnotationTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textbf{\textit{{#1}}}}}
% \newcommand{\CommentVarTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textbf{\textit{{#1}}}}}
% \newcommand{\OtherTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{{#1}}}
% \newcommand{\FunctionTok}[1]{\textcolor[rgb]{0.00,0.00,0.00}{{#1}}}
% \newcommand{\VariableTok}[1]{\textcolor[rgb]{0.00,0.00,0.00}{{#1}}}
% \newcommand{\ControlFlowTok}[1]{\textcolor[rgb]{0.13,0.29,0.53}{\textbf{{#1}}}}
% \newcommand{\OperatorTok}[1]{\textcolor[rgb]{0.81,0.36,0.00}{\textbf{{#1}}}}
% \newcommand{\BuiltInTok}[1]{{#1}}
% \newcommand{\ExtensionTok}[1]{{#1}}
% \newcommand{\PreprocessorTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textit{{#1}}}}
% \newcommand{\AttributeTok}[1]{\textcolor[rgb]{0.77,0.63,0.00}{{#1}}}
% \newcommand{\RegionMarkerTok}[1]{{#1}}
% \newcommand{\InformationTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textbf{\textit{{#1}}}}}
% \newcommand{\WarningTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textbf{\textit{{#1}}}}}
% \newcommand{\AlertTok}[1]{\textcolor[rgb]{0.94,0.16,0.16}{{#1}}}
% \newcommand{\ErrorTok}[1]{\textcolor[rgb]{0.64,0.00,0.00}{\textbf{{#1}}}}
% \newcommand{\NormalTok}[1]{{#1}}

\setlength{\emergencystretch}{3em}  % prevent overfull lines
\providecommand{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}
% End of CII add

% This gives us rules below the headers
\AtBeginDocument{%
  \fancyhf{}
    \fancyfoot[LE,RO]{\thepage}
%  \fancyhead[RE]{\slshape \leftmark}
%  \fancyhead[LO]{\slshape \rightmark}
%	The above makes your headers in all caps. If you would like different headers, choose one of the following options (be sure to remove the % symbol from both the right and left headers):
%	 \fancyhead[RE]{\slshape \nouppercase \leftmark} % This makes the headers on the RIGHT side pages be italic and use lowercase With Capitals When Specified.
%	\fancyhead[LO]{\slshape \nouppercase \rightmark} % This does the same thing to the LEFT side pages
%	or
	\fancyhead[RE]{\itshape \nouppercase \leftmark} % The RIGHT headers will be in small caps.
	\fancyhead[LO]{\itshape \nouppercase \rightmark} %  And so will the LEFT headers
  \pagestyle{fancy}

% Psych majors: You do not need the following six lines, as it conflicts with apacite, so comment them out.
  \let\oldthebibliography=\thebibliography
  \let\endoldthebibliography=\endthebibliography
  \renewenvironment{thebibliography}[1]{
    \oldthebibliography{#1}
    \addcontentsline{toc}{chapter}{\bibname}
  }{\endoldthebibliography}
 %%%%%% end of things for psych majors to comment out

  \let\oldtheindex=\theindex
  \let\endoldtheindex=\endtheindex
  \renewenvironment{theindex}{
    \oldtheindex
    \addcontentsline{toc}{chapter}{\indexname}
  }{\endoldtheindex}
}

% Stolen from book.cls and modified
\let\RToldchapter\chapter
\renewcommand{\chapter}{\if@openright\RTcleardoublepage
		    \else\clearpage\fi
		    \thispagestyle{empty}%
		    \global\@topnum\z@
		    \@afterindentfalse
		    \secdef\@chapter\@schapter}

% Stolen from book.cls PBC 5/12/05
% Using this to actually show "Chapter 1" in TOC instead of "1"
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \if@mainmatter
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                         {\@chapapp\space\thechapter:\space#1}%
                       \else
                         \addcontentsline{toc}{chapter}{#1}%
                       \fi
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}

\newcommand{\RTcleardoublepage}{
	\clearpage\if@twoside \ifodd\c@page\else
	\thispagestyle{empty}\hbox{}\newpage
	\if@twocolumn\hbox{}\newpage\fi\fi\fi}

\let\RToldcleardoublepage\cleardoublepage
\renewcommand{\cleardoublepage}{\RTcleardoublepage}

% adjust margins for binding  (changed 2007-04-24 tgp)
\setlength{\oddsidemargin}{.5in}
\setlength{\evensidemargin}{0in}
\setlength{\textwidth}{6.0in}
\setlength{\textheight}{9.0in}
\setlength\topmargin{0in}
\addtolength\topmargin{-\headheight}
\addtolength\topmargin{-\headsep}

%\setlength{\oddsidemargin}{.6in}
%\setlength{\evensidemargin}{0in}
%\setlength{\textwidth}{5.9in}
\addtolength\headheight{2.5pt}
%\addtolength\topmargin{-\headheight}
%\addtolength\topmargin{-\headsep}
%\addtolength\textheight{1in}
%\addtolength\textheight{\headheight}
%\addtolength\textheight{\headsep}

\def\degree#1{\gdef \@degree{#1}}
\def\@degree{\@latex@warning@no@line{No \noexpand\degree given}}
\def\institution#1{\gdef \@institution{#1}}
\def\@institution{\@latex@warning@no@line{No \noexpand\institution given}}
\def\division#1{\gdef \@division{#1}}
\def\@division{\@latex@warning@no@line{No \noexpand\division given}}
\def\department#1{\gdef \@department{#1}}
\def\@department{\@latex@warning@no@line{No \noexpand\department given}}
\def\thedivisionof#1{\gdef \@thedivisionof{#1}}
\def\@thedivisionof{The Division of}
\def\approvedforthe#1{\gdef \@approvedforthe{#1}}
\def\@approvedforthe{Division}
\def\advisor#1{\gdef \@advisor{#1}}
\def\@advisor{\@latex@warning@no@line{No \noexpand\advisor given}}
\def\altadvisor#1{\gdef \@altadvisor{#1} \@altadvisortrue}
\global\let\@altadvisor\@empty
\newif\if@altadvisor
\@altadvisorfalse

\renewcommand\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\normalfont
      \leaders\hbox{$\m@th \mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill
      \nobreak\hb@xt@\@pnumwidth{\bfseries \hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}

%%% Added by CII
\newenvironment{acknowledgements}{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{Remerciements}
  \fontsize{12}{14}\selectfont
}{\clearpage \if@restonecol\twocolumn\fi}%

\newenvironment{preface}{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{}
  \fontsize{12}{14}\selectfont
}{\clearpage \if@restonecol\twocolumn\fi
\begin{center}
  \includegraphics[scale=0.32]{P10200612.JPG}
  \end{center}
}%
% End of CII add

\newenvironment{abstract}{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{Résumé de la thèse / Abstract}
  \fontsize{12}{14}\selectfont
}{\clearpage \if@restonecol\twocolumn\fi}%

\newenvironment{dedication}{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{Liste des abréviations}
  \fontsize{12}{14}\selectfont
}{\clearpage \if@restonecol\twocolumn\fi}%


\ifx\@pdfoutput\@undefined
  \newcommand{\RTpercent}{\@percentchar\space}
  \AtBeginDvi{\special{!\RTpercent Reed College LaTeX Thesis Class 2001/12/04 SN}}
  \AtBeginDvi{\special{rawpostscript \RTpercent Reed College LaTeX Thesis Class 2001/12/04 SN}}
\else
  \AtEndDocument{\pdfinfo{/Creator	(Reed College LaTeX Thesis Class 2001/12/04 SN)}}
\fi

% I hacked the title page to all be the same font size
% as requested by the library, BTS 2005



\renewcommand{\maketitle}{
{\pagestyle{fancy}
 \begin{titlepage}
 \newpage

\begin{titlepage}

\newgeometry{left=2.5cm, bottom=3cm, top=2cm, right=2.5cm}

\tikz[remember picture,overlay] \node[opacity=1,inner sep=0pt, outer sep=0pt] at (72.2mm, -114.25mm){\includegraphics{PhD_Couverture_Fond.pdf}};

\fontfamily{phv}\fontseries{mc}\selectfont
%*****************************************************
%******************** TITRE **************************
%*****************************************************
\centering
\color{Valentia}
\fontsize{18}{13}\selectfont
\textbf{THÈSE POUR OBTENIR LE GRADE DE DOCTEUR\\ DE L’UNIVERSITÉ DE MONTPELLIER}

\normalsize
\color{black}

\bigskip
\textbf{En Écologie et Biodiversité}

\bigskip
\textbf{École doctorale GAIA}

\bigskip
\textbf{Unité de recherche MIVEGEC (UMR 224)}


\color{Titleblue}
\fontsize{17}{20.4}\selectfont
\vspace{2cm}
\textbf{Fouille de données spatio-temporelles pour l’étude du risque de transmission résiduelle du paludisme à échelle paysagère en milieu rural ouest-africain}

%*****************************************************

\vspace{2cm}
\fontsize{15}{18}\selectfont
\color{black}
\textbf{Présentée par Paul TACONET\\
le 2 juin 2022}

\bigskip
\fontsize{13}{15.6}\selectfont
\textbf{Sous la direction de Nicolas MOIROUX\\}
%et [Prénom NOM du co-Directeur de thèse le cas échéant]}

\vspace{1.5cm}
\normalsize
\textbf{Devant le jury composé de}\\
\bigskip
\fontsize{10}{12}\selectfont
\vspace{1.5mm}
\begin{tabular}{p{12cm}l}
\textbf{Catherine LINARD, Professeure, Université de Namur} & \textbf{Rapportrice} \\
\textbf{Ibrahima DIA, Directeur de recherche, Institut Pasteur de Dakar} & \textbf{Rapporteur} \\
\textbf{Florence FOURNET, Directrice de recherche, IRD (UMR 224)} & \textbf{Examinatrice, Présidente} \\
\textbf{Jean GAUDART, Professeur, Aix Marseille Université (UMR 1252)} & \textbf{Examinateur} \\
\textbf{Emmanuel ROUX, Chargé de recherche, IRD (UMR 228)} & \textbf{Examinateur} \\
\textbf{Nicolas MOIROUX, Chargé de recherche, IRD (UMR 224)} & \textbf{Directeur de thèse} \\
\textbf{Annelise TRAN, Chargée de recherche, CIRAD (UMR 1470)} & \textbf{Invitée} \\
\textbf{Morgan MANGEAS, Directeur de Recherche, IRD (UMR 250)} & \textbf{Invité} \\
\end{tabular} 
 
%************************************
%**  LOGO  UNIVERSITÉ
%*****************************************************
\vspace{\fill}
\begin{center}
\includegraphics[scale=1]{logo_um.png}
\end{center}
\vspace{-27mm}
\endgroup
\end{titlepage}
}
}











% 
% 
%  \newcommand{\bgimg}[1]{
%  \AddToShipoutPicture
%  	{
%  		\put(\LenToUnit{0 cm},\LenToUnit{0 cm})
%  		{
%  				\includegraphics[width=\paperwidth,height=\paperheight]{#1}
%  		}
%  	}
%  }
% 
% 
% 
% 
%   \renewcommand{\maketitle}{
%   {\pagestyle{fancy}
%      \begin{titlepage}
%      \newpage
%   \renewcommand{\headrulewidth}{0pt}
%  
% %  \fancyfoot[C]{\includegraphics{logo_um.png}}
% %  \bgimg{image_um.jpg} 
%   
%   \center
%  
%   {\fontfamily{phv}\fontseries{ux}\selectfont
%   \textcolor{mypink3}{\textbf{\large{THESE POUR OBTENIR LE GRADE DE DOCTEUR \newline DE L'UNIVERSITE DE MONTPELLIER}}} \\[1cm]
%   \color{black}
%   \textbf{En \@division}\\[0.5cm]
%   \textbf{Ecole doctorale \@institution}\\[0.5cm]
%   \textbf{Unité de recherche \@department}\\[2 cm]
%   
%   \color{gray}\textbf{\large{\@title}} \\[3cm]
%   \color{black}
%   \textbf{Présentée par \@author}\\
%   \textbf{Le \@date}\\[1 cm]
%   
%   \textbf{Sous la direction de \@advisor}\\[2cm]
%   %et [Prénom NOM du co-Directeur de thèse le cas échéant]}\\[2cm]
%   
%   \textbf{Devant le jury composé de}\\
%   
%   
%   \begin{itemize}[label=]
%      \item {\footnotesize Prénom NOM, titre, établissement;         Statut jury}
%       \item {\footnotesize Prénom NOM, titre, établissement; Statut jury} 
%       \item {\footnotesize Prénom NOM, titre, établissement; Statut jury} 
%       \item {\footnotesize Prénom NOM, titre, établissement; Statut jury}
%       \item {\footnotesize Prénom NOM, titre, établissement; Statut jury}
%   \end{itemize}}
%   \end{titlepage}
%   }
%   
%  }


%%% solution en intégrant un pdf tout fait : 
% \renewcommand{\maketitle}{
%   \begin{titlepage}
%     \includepdf{page_garde.pdf}
%   \end{titlepage}
% }





% 
% 
%  \renewcommand{\maketitle}{%
%    {\pagestyle{empty}
%    \fontsize{12}{14}\selectfont
%    \begin{titlepage}
%    \newpage
%    \let\footnotesize\small
%    \let\footnoterule\relax
%    \let \footnote \thanks
% 
%    \baselineskip = 1.4\baselineskip
%    \setbox0=\hbox{of the Requirements for the Degree}
% 
%     \begin{center}
%       \setcounter{page}{1}
%     \null\vfil
%       {\fontsize{12}{14}\selectfont \@title}
%       \vfil
%       \centerline{\hbox to \wd0 {\hbox{}\hrulefill\hbox{}}}
%       \vfil
%       A Thesis \\
%       Presented to \\
%       \@thedivisionof \ \@division \\
%       \@institution
%       \vfil
%       \centerline{\hbox to \wd0 {\hbox{}\hrulefill\hbox{}}}
%       \vfil
%       In Partial Fulfillment \\
%       of the Requirements for the Degree \\
%       \@degree
%       \vfil
%       \centerline{\hbox to \wd0 {\hbox{}\hrulefill\hbox{}}}
%       \bigskip
%       \centerline{}
%       \bigskip
%       {\fontsize{12}{14}\selectfont \lineskip .75em
%       \begin{tabular}[t]{c}%
%         \@author
%       \end{tabular}\par}
%       \vskip 1.5em
%       {\fontsize{12}{14}\selectfont \@date \par}
%     \end{center}\par
%    \end{titlepage}
%    }
%  }
%
%



% From JSS
% Added by CII
\renewcommand{\title}[1]{\def\@title{#1}}
%\newcommand{\Shorttitle}[1]{\def\@Shorttitle{#1}}
\newcommand{\Plainauthor}[1]{\def\@Plainauthor{#1}}
\newcommand{\Abstract}[1]{\def\@Abstract{#1}}
%\newcommand{\Keywords}[1]{\def\@Keywords{#1}}
%\newcommand{\Plainkeywords}[1]{\def\@Plainkeywords{#1}}
\newcommand{\Acknowledgements}[1]{\def\@Acknowledgements{#1}}
\newcommand{\Dedication}[1]{\def\@Dedication{#1}}
\newcommand{\Preface}[1]{\def\@Preface{#1}}
% End of CII add
