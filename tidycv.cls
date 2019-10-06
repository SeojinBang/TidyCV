% Part of TidyCV: Simple and Tidy Academic CV
% (c) 2018 by Seojin Bang 
% See LICENSE for licensing.
% 
% Note: tidycv.cls may include redundant codes kept for future uses

\ProvidesClass{tidycv}

\LoadClass[11pt,letterpaper]{article} % Font size and paper type
\NeedsTeXFormat{LaTeX2e}
\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{ifthen} % Required for ifthenelse statements
% Suppress page numbers
\pagestyle{empty} 
% Needed to make fixed length table
\RequirePackage[numbers]{natbib}
% Needed to make fixed length table
\RequirePackage{array}
% Needed to handle list environment
\RequirePackage{enumitem}
% Needed to handle text alignment
\RequirePackage{ragged2e}
% Needed to configure page layout
\RequirePackage{geometry}
% Needed to make header & footer effeciently
\RequirePackage{fancyhdr}
% Needed to manage colors
\RequirePackage{xcolor}
% Needed to use \ifxetex-\else-\fi statement
\RequirePackage{ifxetex}
% Needed to use \if-\then-\else statement
\RequirePackage{xifthen}
% Needed to use a toolbox of programming tools
\RequirePackage{etoolbox}
% Needed to change line spacing in specific environment
\RequirePackage{setspace}
% % Needed to manage fonts
% \RequirePackage[quiet]{fontspec}
% % To support LaTeX quoting style
% \defaultfontfeatures{Ligatures=TeX}
% % Needed to manage math fonts
% \RequirePackage{unicode-math}
% Needed to use icons from font-awesome
% (https://github.com/posquit0/latex-fontawesome)
\RequirePackage{fontawesome}
% \RequirePackage[default,opentype]{sourcesanspro}
% Needed for the photo ID
\RequirePackage[skins]{tcolorbox}
% Needed to deal a paragraphs
\RequirePackage{parskip}
\RequirePackage[hidelinks,unicode]{hyperref} % Needed to deal hyperlink
\hypersetup{%
  pdftitle={},
  pdfauthor={},
  pdfsubject={},
  pdfkeywords={}
}
\usepackage{bibentry} % Needed for publications
\usepackage{bibunits}
\usepackage{longtable} % Needed to make a table span multiple pages


%-------------------------------------------------------------------------------
%                Configuration for layout
%-------------------------------------------------------------------------------
% Configure page margins with geometry
\geometry{left=2.0cm, top=1.5cm, right=2.0cm, bottom=2.0cm, footskip=.5cm}
%% Header & Footer
% Set offset to each header and footer
\fancyhfoffset{0em}
% Remove head rule
\renewcommand{\headrulewidth}{0pt}
% Clear all header & footer fields
\fancyhf{}
% Enable if you want to make header or footer using fancyhdr
\pagestyle{fancy}

%-------------------------------------------------------------------------------
%                Configuration for colors
%-------------------------------------------------------------------------------
% Gray-scale colors
\definecolor{white}{HTML}{FFFFFF}
\definecolor{black}{HTML}{000000}
\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{5D5D5D}
\definecolor{lightgray}{HTML}{999999}
% Basic colors
\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}
% Text colors
\definecolor{darktext}{HTML}{000000}%{414141}
\colorlet{text}{darkgray}
\colorlet{graytext}{gray}
\colorlet{lighttext}{lightgray}
% Awesome colors
\definecolor{awesome-emerald}{HTML}{00A388}
\definecolor{awesome-skyblue}{HTML}{0395DE}
\definecolor{awesome-red}{HTML}{DC3522}
\definecolor{awesome-pink}{HTML}{EF4089}
\definecolor{awesome-orange}{HTML}{FF6138}
\definecolor{awesome-nephritis}{HTML}{27AE60}
\definecolor{awesome-concrete}{HTML}{95A5A6}
\definecolor{awesome-darknight}{HTML}{131A28}
\colorlet{awesome}{awesome-red}

%-------------------------------------------------------------------------------
%                Configuration for styles
%-------------------------------------------------------------------------------
% Configure styles for each CV elements
% For fundamental structures
\newcommand*{\headerfirstnamestyle}[1]{{\Huge\bfseries\color{darktext} #1}}
\newcommand*{\headerlastnamestyle}[1]{{\Huge\bfseries\color{darktext} #1}}
\newcommand*{\headerpositionstyle}[1]{{\small\color{darktext} #1}}
\newcommand*{\headeraddressstyle}[1]{{\small\color{darktext} #1}}
\newcommand*{\headersocialstyle}[1]{{\footnotesize\color{darktext} #1}}
\newcommand*{\headerquotestyle}[1]{{\small\color{darktext} #1}}
\newcommand*{\footerstyle}[1]{{\footnotesize\color{darktext} #1}}
\newcommand*{\sectionstyle}[1]{{\large\bfseries\color{darktext}\MakeUppercase{#1}}}
\newcommand*{\subsectionstyle}[1]{{\normalsize\textcolor{darktext}{#1}}}
\newcommand*{\subsectionhfillstyle}[1]{{\footnotesize\textcolor{darktext}{#1}}}
\newcommand*{\paragraphstyle}{\footnotesize\color{darktext}}

% For elements of EDUCATION
\newcommand*{\educationinstitutionstyle}[1]{{\small\color{darktext} #1}}
\newcommand*{\educationdatestyle}[1]{{\small\color{darktext} #1}}
\newcommand*{\educationdescriptionstyle}[1]{{\footnotesize\color{darktext} #1}}

% For elements of HONORS AND AWARDS
\newcommand*{\honortitlestyle}[1]{{\small\color{darktext} #1}}
\newcommand*{\honordatestyle}[1]{{\small\color{darktext} #1}}
\newcommand*{\honordescriptionstyle}[1]{{\footnotesize\color{graytext} #1}}

% For elements of TEACHING EXPERIENCE
\newcommand*{\teachingtitlestyle}[1]{{\small\color{darktext} #1}}
\newcommand*{\teachingdatestyle}[1]{{\small\color{darktext} #1}}

% For elements of RESEARCH EXPERIENCE
\newcommand*{\researchtitlestyle}[1]{{\small\bfseries\color{darktext} #1}}
\newcommand*{\researchdatestyle}[1]{{\small\color{darktext} #1}}
\newcommand*{\researchpositionstyle}[1]{{\small\em\color{darktext} #1}}
\newcommand*{\researchinstitutionstyle}[1]{{\small\em\color{darktext} #1}}
\newcommand*{\researchdescriptionstyle}{\footnotesize\color{darktext}}

% For elements of WORKING EXPERIENCE
\newcommand*{\workingdatestyle}[1]{{\small\color{darktext} #1}}
\newcommand*{\workingpositionstyle}[1]{{\small\bfseries\color{darktext} #1}}
\newcommand*{\workinginstitutionstyle}[1]{{\small\em\color{darktext} #1}}
\newcommand*{\workinglocationstyle}[1]{{\small\color{darktext} #1}}
\newcommand*{\workingdescriptionstyle}[1]{{\small\footnotesize\color{darktext} #1}}

% For elements of PROFESSIONAL SERVICES
\newcommand*{\professionaldatestyle}[1]{{\small\color{darktext} #1}}
\newcommand*{\professionalpositionstyle}[1]{{\small\bfseries\color{darktext} #1}}
\newcommand*{\professionaltitlestyle}[1]{{\small\em\color{darktext} #1}}
\newcommand*{\professionallocationstyle}[1]{{\small\color{darktext} #1}}

% For elements of GENERAL EXPERIENCE
\newcommand*{\experiencedescriptionstyle}[1]{{\small\color{darktext} #1}}
\newcommand*{\experiencedatestyle}[1]{{\small\color{darktext} #1}}

% For elements of SOFTWARE
\newcommand*{\softwaretypestyle}[1]{{\small\bfseries\color{darktext} #1}}
\newcommand*{\softwaretitlestyle}[1]{{\small\color{text} #1}}

% For elements of TECHNICAL STRENGTHS
\newcommand*{\technicalstrengthtypestyle}[1]{{\small\bfseries\color{darktext} #1}}
\newcommand*{\technicalstrengthliststyle}[1]{{\small\color{text} #1}}

% % For elements of the cover letter
% \newcommand*{\lettersectionstyle}[1]{{\fontsize{14pt}{1em}\bodyfont\bfseries\color{text}\@sectioncolor #1}}
% \newcommand*{\recipientaddressstyle}[1]{{\fontsize{9pt}{1em}\bodyfont\scshape\color{graytext} #1}}
% \newcommand*{\recipienttitlestyle}[1]{{\fontsize{11pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
% \newcommand*{\lettertitlestyle}[1]{{\fontsize{10pt}{1em}\bodyfontlight\bfseries\color{darktext} \underline{#1}}}
% \newcommand*{\letterdatestyle}[1]{{\fontsize{9pt}{1em}\bodyfontlight\slshape\color{graytext} #1}}
% \newcommand*{\lettertextstyle}{\fontsize{10pt}{1.4em}\bodyfontlight\upshape\color{graytext}}
% \newcommand*{\letternamestyle}[1]{{\fontsize{10pt}{1em}\bodyfont\bfseries\color{darktext} #1}}
% \newcommand*{\letterenclosurestyle}[1]{{\fontsize{10pt}{1em}\bodyfontlight\slshape\color{lighttext} #1}}

%-------------------------------------------------------------------------------
%                Commands for personal information
%-------------------------------------------------------------------------------
% Define photo ID
% Usage: \photo[circle|rectangle,edge|noedge,left|right]{<path-to-image>}
\newcommand{\photo}[2][circle,edge,left]{%
  \def\@photo{#2}
  \@for\tmp:=#1\do{%
    \ifthenelse{\equal{\tmp}{circle} \or \equal{\tmp}{rectangle}}%
      {\let\@photoshape\tmp}{}%
    \ifthenelse{\equal{\tmp}{edge} \or \equal{\tmp}{noedge}}%
      {\let\@photoedge\tmp}{}%
    \ifthenelse{\equal{\tmp}{left} \or \equal{\tmp}{right}}%
      {\let\@photoalign\tmp}{}%
  }%
}
\def\@photoshape{circle}
\def\@photoedge{edge}
\def\@photoalign{left}

% Define writer's name
% Usage: \name{<firstname>}{<lastname>}
% Usage: \firstname{<firstname>}
% Usage: \lastname{<lastname>}
% Usage: \familyname{<familyname>}
\newcommand*{\name}[2]{\def\@firstname{#1}\def\@lastname{#2}}
\newcommand*{\firstname}[1]{\def\@firstname{#1}}
\newcommand*{\lastname}[1]{\def\@lastname{#1}}
\newcommand*{\familyname}[1]{\def\@lastname{#1}}
\def\@familyname{\@lastname}

% Define writer's address
% Usage: \address{<address>}
\newcommand*{\address}[1]{\def\@address{#1}}

% Define writer's position
% Usage: \name{<position>}
\newcommand*{\position}[1]{\def\@position{#1}}

% Defines writer's mobile (optional)
% Usage: \mobile{<mobile number>}
\newcommand*{\mobile}[1]{\def\@mobile{#1}}

% Defines writer's email (optional)
% Usage: \email{<email adress>}
\newcommand*{\email}[1]{\def\@email{#1}}

% Defines writer's homepage (optional)
% Usage: \homepage{<url>}
\newcommand*{\homepage}[1]{\def\@homepage{#1}}

% Defines writer's github (optional)
% Usage: \github{<github-nick>}
\newcommand*{\github}[1]{\def\@github{#1}}

% Defines writer's gitlab (optional)
% Usage: \gitlab{<gitlab-nick>}
\newcommand*{\gitlab}[1]{\def\@gitlab{#1}}

% Defines writer's stackoverflow profile (optional)
% Usage: \stackoverflow{<so userid>}{<so username>}
%   e.g.https://stackoverflow.com/users/123456/sam-smith
%       would be \stackoverflow{123456}{sam-smith}
\newcommand*{\stackoverflow}[2]{\def\@stackoverflowid{#1}\def\@stackoverflowname{#2}}

% Defines writer's linked-in (optional)
% Usage: \linkedin{<linked-in-nick>}
\newcommand*{\linkedin}[1]{\def\@linkedin{#1}}

% Usage: \twitter{<twitter handle>}
\newcommand*{\twitter}[1]{\def\@twitter{#1}}

% Defines writer's skype (optional)
% Usage: \skype{<skype account>}
\newcommand*{\skype}[1]{\def\@skype{#1}}

% Defines writer's reddit (optional)
% Usage: \reddit{<reddit account>}
\newcommand*{\reddit}[1]{\def\@reddit{#1}}

% Defines writer's xing (optional)
% Usage: \xing{<xing name>}
\newcommand*{\xing}[1]{\def\@xing{#1}}

% Defines writer's twitter (optional)
% Defines writer's extra informations (optional)
% Usage: \extrainfo{<extra informations>}
\newcommand*{\extrainfo}[1]{\def\@extrainfo{#1}}

% Defines writer's quote (optional)
% Usage: \quote{<quote>}
\renewcommand*{\quote}[1]{\def\@quote{#1}}

%-------------------------------------------------------------------------------
%                Commands for extra
%-------------------------------------------------------------------------------
%% Define helper macros a user can change easily
% Header
\newcommand{\acvHeaderNameDelim}{\space}
\newcommand{\acvHeaderAfterNameSkip}{1.5em}
\newcommand{\acvHeaderAfterPositionSkip}{.4mm}
\newcommand{\acvHeaderAfterAddressSkip}{.1em}
\newcommand{\acvHeaderIconSep}{\space}
\newcommand{\acvHeaderSocialSep}{\quad\textbar\quad}
\newcommand{\acvHeaderAfterSocialSkip}{1.5em}
\newcommand{\acvHeaderAfterQuoteSkip}{5mm}

% Others
\newcommand{\acvSectionTopSkip}{3mm}
\newcommand{\acvSectionContentTopSkip}{3mm}

%-------------------------------------------------------------------------------
%                Commands for utilities
%-------------------------------------------------------------------------------
% Use to align an element of table
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}p{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}p{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}p{#1}}

% Use to draw horizontal line with specific thickness
\def\vhrulefill#1{\leavevmode\leaders\hrule\@height#1\hfill \kern\z@}

% Use to execute conditional statements by checking empty string
\newcommand*{\ifempty}[3]{\ifthenelse{\isempty{#1}}{#2}{#3}}


%-------------------------------------------------------------------------------
%                Commands for elements of CV structure
%-------------------------------------------------------------------------------
% Define a header for CV
% Usage: \makecvheader
\newcommand*{\makecvheader}[1][C]{%
  \newcommand*{\drawphoto}{%
    \ifthenelse{\isundefined{\@photo}}{}{%
      \newlength{\photodim}
      \ifthenelse{\equal{\@photoshape}{circle}}%
        {\setlength{\photodim}{1.3cm}}%
        {\setlength{\photodim}{1.8cm}}%
      \ifthenelse{\equal{\@photoedge}{edge}}%
        {\def\@photoborder{darkgray}}%
        {\def\@photoborder{none}}%
      \begin{tikzpicture}%
        \node[\@photoshape, draw=\@photoborder, line width=0.3mm, inner sep=\photodim, fill overzoom image=\@photo] () {};
      \end{tikzpicture}
    }%
  }
  \newlength{\headertextwidth}
  \newlength{\headerphotowidth}
  \ifthenelse{\isundefined{\@photo}}{
    \setlength{\headertextwidth}{\textwidth}
    \setlength{\headerphotowidth}{0cm}
  }{%
    \setlength{\headertextwidth}{0.76\textwidth}
    \setlength{\headerphotowidth}{0.24\textwidth}
  }%
  \begin{minipage}[c]{\headerphotowidth}%
    \ifthenelse{\equal{\@photoalign}{left}}{\raggedright\drawphoto}{}
  \end{minipage}
   \begin{minipage}[c]{\headertextwidth}
    \ifthenelse{\equal{#1}{L}}{\raggedright}{\ifthenelse{\equal{#1}{R}}{\raggedleft}{\centering}}
    \headerfirstnamestyle{\@firstname}\headerlastnamestyle{{}\acvHeaderNameDelim\@lastname}%
     \\[\acvHeaderAfterNameSkip]%
    \ifthenelse{\isundefined{\@position}}{}{\headerpositionstyle{\@position\\[\acvHeaderAfterPositionSkip]}}%    
    \ifthenelse{\isundefined{\@address}}{}{\headeraddressstyle{\@address\\[\acvHeaderAfterAddressSkip]}}%
    \headersocialstyle{%
      \newbool{isstart}%
      \setbool{isstart}{true}%
      \ifthenelse{\isundefined{\@mobile}}%
        {}%
        {%
          \faMobile\acvHeaderIconSep\@mobile%
          \setbool{isstart}{false}%
        }%
      \ifthenelse{\isundefined{\@email}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{mailto:\@email}{\faEnvelope\acvHeaderIconSep\@email}%
        }%
      \ifthenelse{\isundefined{\@homepage}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{http://\@homepage}{\faHome\acvHeaderIconSep\@homepage}%
        }%
      \ifthenelse{\isundefined{\@github}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://github.com/\@github}{\faGithubSquare\acvHeaderIconSep\@github}%
        }%
      \ifthenelse{\isundefined{\@gitlab}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://gitlab.com/\@gitlab}{\faGitlab\acvHeaderIconSep\@gitlab}%
        }%
      \ifthenelse{\isundefined{\@stackoverflowid}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://stackoverflow.com/users/\@stackoverflowid}{\faStackOverflow\acvHeaderIconSep\@stackoverflowname}%
        }%
      \ifthenelse{\isundefined{\@linkedin}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://www.linkedin.com/in/\@linkedin}{\faLinkedinSquare\acvHeaderIconSep\@linkedin}%
        }%
      \ifthenelse{\isundefined{\@twitter}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://twitter.com/\@twitter}{\faTwitter\acvHeaderIconSep\@twitter}%
        }%
      \ifthenelse{\isundefined{\@skype}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \faSkype\acvHeaderIconSep\@skype%
        }%
      \ifthenelse{\isundefined{\@reddit}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://www.reddit.com/user/\@reddit}{\faReddit\acvHeaderIconSep\@reddit}%
        }%
      \ifthenelse{\isundefined{\@xing}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \href{https://www.xing.com/profile/\@xing}{\faXingSquare\acvHeaderIconSep\@xing}
        }%
      \ifthenelse{\isundefined{\@extrainfo}}%
        {}%
        {%
          \ifbool{isstart}{\setbool{isstart}{false}}{\acvHeaderSocialSep}%
          \@extrainfo%
        }%
    }\\~\\[\acvHeaderAfterSocialSkip]%
    \ifthenelse{\isundefined{\@quote}}%
      {}%
      {\headerquotestyle{\@quote\\}\vspace{\acvHeaderAfterQuoteSkip}}%
   \end{minipage}%
  \begin{minipage}[c]{\headerphotowidth}%
    \ifthenelse{\equal{\@photoalign}{right}}{\raggedleft\drawphoto}{}
  \end{minipage}
}

% Define a footer for CV
% Usage: \makecvfooter{<left>}{<center>}{<right>}
\newcommand*{\makecvfooter}[3]{%
  \fancyfoot{}
  \fancyfoot[L]{\footerstyle{#1}}
  \fancyfoot[C]{\footerstyle{#2}}
  \fancyfoot[R]{\footerstyle{#3}}
}

% Define a section for CV
% Usage: \cvsection{<section-title>}
\newcommand{\cvsection}[1]{%
  \vspace{\acvSectionTopSkip}
  \sectionstyle{#1}
  \phantomsection
  \sectionlineskip
  %\color{gray}\vhrulefill{0.9pt}
  \hrule
}

% Define a subsection for CV
% Usage: \cvsubsection{<subsection-title>}
\newcommand{\cvsubsection}[2]{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-3mm}
  \subsectionstyle{#1} \hfill \subsectionhfillstyle{#2}
  \phantomsection
}

%--------- RESEARCH INTEREST
\newcommand*{\cvresearchinterest}[1]{%
  #1
  \vspace{0.5em}
}

%--------- EDUCATION

% Define an environment for EDUCATION
\newenvironment{cveducations}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-5.5mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{longtable}{@{\extracolsep{\fill}} L{3cm} L{\textwidth - 3cm}}
}{%
	\centering
  \end{longtable}
  \vspace{-2.0em}  
}

% Define a line of EDUCATION
%% usage1: \cveducation{<Date>}{<Institution>}{<Description(s)>} 
%% usage2: \cveducation{<Date>}{<Institution>}{
%                         \begin{cveducationitems}
%                            <Description1>\\
%                            <Description2>\\
%                         \end{cveducationitems}
%                        } 
\newcommand*{\cveducation}[3]{%
  \ifempty{#3}
  	{\educationdatestyle{#1} & \educationinstitutionstyle{#2}\\}
    {\educationdatestyle{#1} & \educationinstitutionstyle{#2}\\
    ~ & \educationdescriptionstyle{#3}\\}
}

% Define an item of EDUCATION
%% usage
%% \begin{cveducationitems}
%%   <Description1>\\
%%   <Description2>\\
%% \end{cveducationitems}
\newenvironment{cveducationitems}{%
  \vspace{-4.0mm}
  \begin{justify}
  \begin{itemize}[leftmargin=0ex, nosep, noitemsep]
}{%
  \end{itemize}
  \end{justify}
  \vspace{-7.5mm}
}

\newenvironment{cveducationitems2}{%
  \vspace{-4.0mm}
  \begin{justify}
  \begin{itemize}[leftmargin=0ex, nosep, noitemsep]
}{%
  \end{itemize}
  \end{justify}
  \vspace{-9.5mm}
}

%--------- HONORS AND AWARDS

% Define an environment for HONORS AND AWARDS
\newenvironment{cvhonors}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-5.5mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{longtable}{@{\extracolsep{\fill}} L{3cm} L{\textwidth - 3cm}}
}{%
	\centering
  \end{longtable}
  \vspace{-2.0em} 
}

% Define a line of HONORS AND AWARDS
%% usage1: \cvhonor{<Date>}{<Title>}{<Description(s)>} 
%% usage2: \cvhonor{<Date>}{<Title>}{
%%                  \begin{cvhonoritems}
%%                    <Description1>\\
%%                    <Description2>\\
%%                  \end{cvhonoritems}
%%                  } 
\newcommand*{\cvhonor}[3]{%
  \ifempty{#3}
  	{\honordatestyle{#1} & \honortitlestyle{#2}\\}
    {\honordatestyle{#1} & \honortitlestyle{#2}\\
    ~ & \honordescriptionstyle{#3}\\}
}

% Define an item of HONORS AND AWARDS
%% usage: 
%% \begin{cvhonoritems}
%%   <Description1>\\
%%   <Description2>\\
%% \end{cvhonoritems}
\newenvironment{cvhonoritems}{%
  \vspace{-4.0mm}
  \begin{justify}
  \begin{itemize}[leftmargin=3ex, nosep, noitemsep]
    \setlength{\parskip}{0pt}
}{%
  \end{itemize}
  \end{justify}
  \vspace{-8.0mm}
}

%--------- WORKING EXPERIENCE

% Define an environment for WORKING EXPERIENCE
\newenvironment{cvworkings}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-5.5mm}
    \setlength\tabcolsep{0pt}
    \setlength{\extrarowheight}{0pt}
    \begin{longtable}{@{\extracolsep{\fill}} L{4cm} L{\textwidth - 4cm}}
}{%
		\centering
    \end{longtable}
    \vspace{-2.0em} 
}

% Define a line of WORKING EXPERIENCE
%% usage: \cvworking{<Date>}{<Position>}{<Description>}{<Institution or company>}{<Location>}
\newcommand*{\cvworking}[6]{%
  \ifempty{#6}
  {\workingdatestyle{#1} & \workingpositionstyle{#2} \workingdescriptionstyle{#3}\\
    ~ & \workinginstitutionstyle{#4}, \workinglocationstyle{#5}\\}
  {\workingdatestyle{#1} & \workingpositionstyle{#2} \workingdescriptionstyle{#3}\\
    ~ & \workinginstitutionstyle{#4}, \workinglocationstyle{#5}\\
    ~ & \workingdescriptionstyle{#6} \\}
}

%--------- PROFESSIONAL SERVICES

% Define an environment for PROFESSIONAL SERVICES
\newenvironment{cvprofessionals}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-5.5mm}
    \setlength\tabcolsep{0pt}
    \setlength{\extrarowheight}{0pt}
    \begin{longtable}{@{\extracolsep{\fill}} L{3cm} L{\textwidth - 3cm}}
}{%
		\centering
    \end{longtable}
    \vspace{-2.0em} 
}

% Define a line of PROFESSIONAL SERVICES
%% usage: \cvprofessional{<Date>}{<Position>}{<Event title>}{<Location>} 
\newcommand*{\cvprofessional}[4]{%
  \ifempty{#4}
  	{\professionaldatestyle{#1} & \professionalpositionstyle{#2}, \professionaltitlestyle{#3}\\}
    {\professionaldatestyle{#1} & \professionalpositionstyle{#2}, \professionaltitlestyle{#3}, \professionallocationstyle{#4}\\}
}

%--------- GENERAL EXPERIENCE (SIMPLE FORMAT)
% Define an environment for GENERAL EXPERIENCE 
\newenvironment{cvexperiences}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-1.5em}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{longtable}{@{\extracolsep{\fill}} L{3cm} L{\textwidth - 3cm}}
}{%
	\centering
  \end{longtable}
  \vspace{-2.5em}
}

% Define a line of TEACHING EXPERIENCE
%% usage: 
%% \cvsubsection{<Institution>}{<Position>}
%% \cvexperience{<Date>}{<Description>}
\newcommand*{\cvexperience}[2]{%
  \experiencedatestyle{#1} & \experiencedescriptionstyle{#2} \\
}


%--------- SOFTWARE
% Define an environment for SOFTWARE
\newenvironment{cvsoftwares}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-5.5mm}
    \setlength\tabcolsep{0pt}
    \setlength{\extrarowheight}{0pt}
    \begin{longtable}{@{\extracolsep{\fill}} L{5cm} L{\textwidth - 5cm}}
}{%
		\centering
    \end{longtable}
    \vspace{-2.0em} 
}

% Define a line of SOFTWARE
%% usage: \cvsoftware{<Type>}{<Software title and description>}{<URL>} 
\newcommand*{\cvsoftware}[3]{%
    \ifempty{#3}
  	{\softwaretypestyle{#1} & \softwaretitlestyle{#2}\\}
    {\softwaretypestyle{#1} & \softwaretitlestyle{#2}\\
    ~ & {\url{#3}}\\}
}

%--------- TECHNICAL STRENGTHS

% Define an environment for TECHNICAL STRENGTHS
\newenvironment{cvtechnicalstrengths}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-5.5mm}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{longtable}{@{\extracolsep{\fill}} L{5cm} L{\textwidth - 5cm}}
}{%
	\centering
  \end{longtable}
  \vspace{-2.0em} 
}

% Define a line of TECHNICAL STRENGTHS
%% usage: \cvtechnicalstrength{<Type>}{<List>} 
\newcommand*{\cvtechnicalstrength}[2]{%
    \technicalstrengthtypestyle{#1} & \technicalstrengthliststyle{#2}\\
}

%--------- TEACHING EXPERIENCE

% Define an environment for TEACHING EXPERIENCE
\newenvironment{cvteachings}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-1.5em}
  \setlength\tabcolsep{0pt}
  \setlength{\extrarowheight}{0pt}
  \begin{longtable}{@{\extracolsep{\fill}} C{1.5cm} L{\textwidth - 1.5cm}}
}{%
	\centering
  \end{longtable}
  \vspace{-2.5em}
}

% Define a line of TEACHING EXPERIENCE
%% usage: 
%% \cvsubsection{<Institution>}{<Position>}
%% \cvteaching{<Date>}{<Course title>}
\newcommand*{\cvteaching}[2]{%
  \teachingdatestyle{#1} & \teachingtitlestyle{#2} \\
}

%--------- PREPRINTS / PUBLICATION

% Define an environment for PREPRINTS / PUBLICATION
\newenvironment{cvpublications}{%
  \vspace{\acvSectionContentTopSkip}
  \vspace{-4.0mm}
  \begin{list}{}{ % List for each individual item in the section
    \setlength{\leftmargin}{1.5em} % Margin within the section
  }
  \item[]
}{
  \end{list}
  \vspace{1.5mm}
}

% Define a separate publication section at the end
\newcommand{\cvpubsection}[1]{%
  \vspace{\acvSectionTopSkip}
  \sectionstyle{\MakeUppercase{#1}}
  \phantomsection
  \sectionlineskip
  \hrule
}

%--------- RESEARCH EXPERIENCE

% Define an environment for RESEARCH EXPERIENCE
\newenvironment{cvresearches}{
  \vspace{\acvSectionContentTopSkip}
  \vspace{-3.0mm}
  \begin{list}{}{ % List for each individual item in the section
   	%\vspace{0.5em}
    \setlength{\leftmargin}{0em} % Margin within the section
  }
  \item[]
}{
  \end{list}
}

% Define a line of RESEARCH EXPERIENCE
%% usage: \begin{cvresearch}{<Project title>}{<Date>}{<Position>}{<Institution>}
%%      \item <Description>
%%      \item <Description>
%%      \end{cvresearch}
\newenvironment{cvresearch}[4]{
 {\researchtitlestyle{#1}} \hfill {\researchdatestyle{#2}}
 \ifthenelse{\equal{#3}{}}{}{
  \\
  {\researchpositionstyle{#3}} \hfill {\researchinstitutionstyle{#4}}
  }\smallskip
  \begin{list}{$\cdot$}{\leftmargin=0em} % \cdot used for bullets, no indentation
   \itemsep -0.5em 
   \vspace{-0.5em}
   \researchdescriptionstyle
  }{
  \end{list}
  \vspace{0.5em} % Some space after the list of bullet points
}

% The below commands define the whitespace after certain things in the document - they can be \smallskip, \medskip or \bigskip
% \def\namesize{\huge} % Size of the name at the top of the document
% \def\addressskip{\smallskip} % The space between the two address (or phone/email) lines
\def\sectionlineskip{\medskip} % The space above the horizontal line for each section 
% \def\nameskip{\bigskip} % The space after your name at the top
\def\sectionskip{\bigskip} % The space after the heading section
