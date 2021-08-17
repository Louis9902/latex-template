\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{assingment}[2021/04/08 v1.0 Extended LaTeX document classs]

\newif\if@sans\@sansfalse


\DeclareOption{sans}{
	\@sanstrue
	\renewcommand{\familydefault}{\sfdefault}
}

% Passes and class options to the underlying article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions

% Load LaTeX's article class with the `titlepage' option so that \maketitle
% creates a title page, not just a title block
\LoadClass[titlepage]{article}


%
%   P A C K A G E  D E F I N I T I O N
%
\RequirePackage[utf8]{inputenc}	% page encoding
\RequirePackage{geometry}		% page geometry, margin definition
%\RequirePackage{emptypage}		% if a page is empty, is is really empty
%\RequirePackage{fullwidth}		% for wide environments
%\RequirePackage{sidenotes}		% for margin stuff
\RequirePackage{enumitem}		% better looking lists

\RequirePackage[T1]{fontenc}	% font encoding
\RequirePackage{roboto}			% sans font
\if@sans
	%\RequirePackage[default]{sourcecodepro}
\fi

\RequirePackage{titlesec}		% header customization
\RequirePackage{titletoc}		% table of contents customization

\RequirePackage{amsfonts}		% math fonts
\RequirePackage{amsmath}		% math stuff
\RequirePackage{mathtools}		% amsmath extension

\RequirePackage{xcolor}			% colors

% for the background color of the title page
\RequirePackage{pagecolor}
\RequirePackage{afterpage}


\RequirePackage[hidelinks]{hyperref}	% automatic references in pdf

%
%   G E O M E T R Y  D E F I N I T I O N
%

% \newgeometry{
% 	textwidth       = .8\paperwidth,
% 	textheight      = .75\paperheight,
% 	lmargin         = 70pt,
% 	marginparwidth  = .28\textwidth,
% 	marginparsep    = 10pt,
% 	headheight      = 15pt,
% 	tmargin         = 80pt,
% 	showframe,
% }
% \savegeometry{heading}

% \newgeometry{
% 	textwidth       = .62\paperwidth,
% 	textheight      = .75\paperheight,
% 	lmargin         = 70pt,
% 	marginparwidth  = .28\textwidth,
% 	marginparsep    = 10pt,
% 	headheight      = 15pt,
% 	tmargin         = 80pt,
% 	showframe,
% }

% \savegeometry{regular}
% \loadgeometry{heading}

\def\ps@headings{%

	\def\@oddhead{\parbox[t][\height][t]{\textwidth}{
			\@title\hfill\@date\\[-0.8em]
			\noindent\makebox[\linewidth]{\rule{\textwidth}{0.4pt}}
		}\hfil\hbox{}}%

	\def\@evenhead{\parbox[t][\height][t]{\textwidth}{
			\hfill\@author\hfill\\[-0.8em]
			\noindent\makebox[\linewidth]{\rule{\textwidth}{0.4pt}}
		}\hfil\hbox{}}%

	\def\@oddfoot{\parbox[t][\height][t]{\textwidth}{
			\noindent\makebox[\linewidth]{\rule{\textwidth}{0.4pt}}\linebreak
			\@author\hfill\thepage
		}\hfill\hbox{}}%

	\def\@evenfoot{\parbox[t][\height][t]{\textwidth}{
			\noindent\makebox[\linewidth]{\rule{\textwidth}{0.4pt}}\linebreak
			\thepage\hfill\@author
		}\hfill\hbox{}}%

	\let\@mkboth\markboth
}

\pagestyle{headings}

\def\maketitle{
	\newpage
	\thispagestyle{empty}
	\newgeometry{top=2cm, right=4cm, bottom=3cm, left=4cm}
	\null
	\vskip -1em
	\makebox[0pt][l]{{\rule{1.3\textwidth}{4pt}}}
	\par
	\noindent
	\vfill
	\begin{flushleft}
		\noindent{\huge\textbf{\textsf{\@title}}}
		\vskip 1em
		\noindent {\Large\textsf{Hallo}}
		\vskip 2em
		\noindent{\Large\textsf{\@author}}
		\vfill
		\noindent{\normalsize\textsf{\@date}}
		\vfill
		\null
	\end{flushleft}
	\restoregeometry
	\newpage
	\setcounter{page}{1}
	\pagestyle{headings}
}

%
%   M A T H  &  P H Y S I C S
%   S H O R T C U T S
%

% shortcuts for usual number sets
\newcommand{\N}{\ensuremath{\mathbb{N}}}
\newcommand{\Z}{\ensuremath{\mathbb{Z}}}
\newcommand{\Q}{\ensuremath{\mathbb{Q}}}
\newcommand{\R}{\ensuremath{\mathbb{R}}}
\newcommand{\C}{\ensuremath{\mathbb{C}}}

% powers of 10
\newcommand{\ee}[1]{\cdot 10^{#1}}

% new vect with over right arrow style
\newcommand{\vect}[1]{\:\overrightarrow{#1}}