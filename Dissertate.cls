% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "Dissertate.cls",
%     version         = "1.0",
%     date            = "24 January 2014",
%     codetable       = "ISO/ASCII",
%     keywords        = "LaTeX, Dissertate",
%     docstring       = "Class for a dissertation."
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Dissertate}[2014/01/24 v1.0 Dissertate Class]
% If you need to change font size etc. 
\LoadClass[12pt, oneside, a4paper]{book}

% Some definitions
\def\degreeyear#1{\gdef\@degreeyear{#1}}
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\department#1{\gdef\@department{#1}}
\def\field#1{\gdef\@field{#1}}
\def\university#1{\gdef\@university{#1}}
\def\universitycity#1{\gdef\@universitycity{#1}}
\def\universitystate#1{\gdef\@universitystate{#1}}
\def\programname#1{\gdef\@programname{#1}}
\def\pdOneName#1{\gdef\@pdOneName{#1}}
\def\pdOneSchool#1{\gdef\@pdOneSchool{#1}}
\def\pdOneYear#1{\gdef\@pdOneYear{#1}}
\def\pdTwoName#1{\gdef\@pdTwoName{#1}}
\def\pdTwoSchool#1{\gdef\@pdTwoSchool{#1}}
\def\pdTwoYear#1{\gdef\@pdTwoYear{#1}}
\def\orcid#1{\gdef\@orcid{#1}}

% ---- Chapter/section formatting
\setlength{\headheight}{15pt}
\pagestyle{plain}
\RequirePackage{titling}
\RequirePackage{titlesec, blindtext, color}
\titleformat{\section}[hang]{\Large\scshape}{\thesection.}{1em}{}
\titleformat{\subsection}[hang]{\large\itshape}{\thesection.}{1em}{}
\titleformat{\subsubsection}[hang]{\normalfont\itshape}{\thesection.}{1em}{}

\RequirePackage[Sonny]{fncychap}
\RequirePackage[titletoc]{appendix}
\renewcommand{\setthesection}{\arabic{chapter}.A\arabic{section}}
\RequirePackage[titles]{tocloft}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftchapfont}{\normalsize \scshape}
\renewcommand{\cftsecfont}{\normalsize \scshape}
\renewcommand\listfigurename{List of figures}

% Units and math symbols
\RequirePackage{amsmath}
\RequirePackage{siunitx}
\DeclareSIUnit\year{yr}
\DeclareSIUnit\gauss{G}
\AtBeginDocument{\RenewCommandCopy\qty\SI}
\sisetup{range-phrase = \text{--}}
\sisetup{separate-uncertainty = true}

% Line number mode - useful during writing/reviewing
% (Must be after amsmath but before csquotes or raises warning)
\usepackage[left]{lineno}

% For bibliography using biblatex
\RequirePackage[english]{babel}
\RequirePackage{csquotes}
\RequirePackage[natbib=true, 
               sorting=none,
               citestyle=phys,
               bibstyle=phys,
               ]{biblatex}
% Make Bibliography chapter heading "References"
\DefineBibliographyStrings{english}{%
   bibliography = {References},
   references = {References},
}

% Page and margin size
\RequirePackage{geometry}
\geometry{
    a4paper,
    right=30mm,
    left=30mm,
    top=30mm,
    bottom=30mm
}

% Tables and figures
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{subcaption}
\RequirePackage{multirow}
\RequirePackage{multicol}
\RequirePackage{dcolumn}% Align table columns on decimal point
\newcolumntype{.}{D{.}{.}{-1}}
\newcolumntype{d}[1]{D{.}{.}{#1}}
\RequirePackage{subcaption}
\RequirePackage{threeparttable}
\RequirePackage{pdflscape}

% Colour packages
\RequirePackage{color}
\RequirePackage{xcolor}

% URL and hyperlinking references
\RequirePackage{url}
\RequirePackage{hyperref}
\RequirePackage{cleveref}
\definecolor{NiceBlue}{rgb}{.035, 0.254, 0.514}
\hypersetup{
    colorlinks,
    citecolor=NiceBlue,
    filecolor=black,
    linkcolor=black,
    urlcolor=NiceBlue,
}

% Font choices
\RequirePackage[T1]{fontenc}
\RequirePackage{kpfonts}   % for math    
\RequirePackage[mono=true]{libertinus}  % serif and sans serif
\RequirePackage{pifont}
\RequirePackage{bbm}

% Other miscellaneous packages
\RequirePackage{orcidlink}
\setlength{\marginparwidth}{2cm}
% \RequirePackage{todonotes}
\RequirePackage[inline]{enumitem}
\setlist*[enumerate]{label=\roman*)}
\RequirePackage{lipsum}

% ----- From original template
\RequirePackage{kvoptions}
\DeclareStringOption{School}[]
\ProcessKeyvalOptions*
\RequirePackage{packages/\Dissertate@School/style}
\makeatother
