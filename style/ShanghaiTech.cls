\NeedsTeXFormat{LaTeX2e}


\ProvidesClass{style/ShanghaiTech}[2018/05/15 ShanghaiTech Bachelor Thesis class]


\DeclareOption{sansserif}{
  \renewcommand{\familydefault}{\sfdefault}
}

\DeclareOption{10pt}{
  \PassOptionsToClass{10pt}{book}
}
\DeclareOption{11pt}{
  \PassOptionsToClass{11pt}{book}
}
\DeclareOption{12pt}{
  \PassOptionsToClass{12pt}{book}
}

\DeclareOption{openright}{
  \PassOptionsToClass{openright}{book}
}
\DeclareOption{openany}{
  \PassOptionsToClass{openany}{book}
}

\ProcessOptions

\LoadClass[a4paper, titlepage]{book}





% --------------------------------------------------
% Required Packages
% 依赖要求
% --------------------------------------------------

\RequirePackage{geometry}

\RequirePackage{amsmath}
\RequirePackage{amsxtra}
\RequirePackage{amssymb}

\RequirePackage{fancyhdr}

\usepackage[
  pdfstartview=FitW,
  breaklinks,
  colorlinks=true,
  linkcolor=black,
  anchorcolor=black,
  citecolor=cyan,
  filecolor=cyan,
  menucolor=red,
  runcolor=filecolor,
  urlcolor=magenta
]{hyperref}

\RequirePackage{color}
\RequirePackage{graphicx}

\RequirePackage{booktabs}





% --------------------------------------------------
% `geometry` Package Setting
% `geometry` 宏包设置
% --------------------------------------------------

\geometry{
  paper=a4paper,
  twoside,
  inner=31.5mm,
  outer=31.5mm,
  top=25.5mm,
  bottom=25.5mm,
  head=5mm,
  headsep=10mm,
  foot=10mm
}

\numberwithin{equation}{chapter}

% _fuzz suppresses box oversize warning
\vfuzz 2pt
\hfuzz 2pt

% disable default indentation
\parindent=0pt


% --------------------------------------------------
% Title Page Related
% 标题页面相关
% --------------------------------------------------

\makeatletter

% Length of Meta Info Blank
\def\@metaBlankLen{}
\newcommand\metaBlankLen[1]{\def\@metaBlankLen{#1}}

% Title (Chinese)
% 中文标题
\def\@titleZh{}
\newcommand\titleZh[1]{\def\@titleZh{#1}\let\Title\@titleZh}

% Student Name
% 学生姓名
\def\@studentNameEn{}
\newcommand\studentNameEn[1]{\def\@studentNameEn{#1}}
\def\@studentNameZh{}
\newcommand\studentNameZh[1]{\def\@studentNameZh{#1}}

% Student ID
% 学号
\def\@studentId{}
\newcommand\studentId[1]{\def\@studentId{#1}}

% Advisor Name
% 导师姓名
\def\@advisorNameEn{}
\newcommand\advisorNameEn[1]{\def\@advisorNameEn{#1}}
\def\@advisorNameZh{}
\newcommand\advisorNameZh[1]{\def\@advisorNameZh{#1}}

% Department Name
% 学院名称
\def\@departmentNameEn{}
\newcommand\departmentNameEn[1]{\def\@departmentNameEn{#1}}
\def\@departmentNameZh{}
\newcommand\departmentNameZh[1]{\def\@departmentNameZh{#1}}

% Major Name
% 专业名称
\def\@majorNameEn{}
\newcommand\majorNameEn[1]{\def\@majorNameEn{#1}}
\def\@majorNameZh{}
\newcommand\majorNameZh[1]{\def\@majorNameZh{#1}}

% Year of Attendance
% 入学年份
\def\@yearOfAttendance{}
\newcommand\yearOfAttendance[1]{\def\@yearOfAttendance{#1}}

\renewcommand{\maketitle}{
	\input{style/title/maketitle_en}
}
\newcommand{\makezhtitle}{
	\input{style/title/maketitle_zh}
}
\newcommand{\makesisttitle}{
	\input{style/title/maketitle_sist}
}

\makeatother





%%%%%%%%%%%%%%%%%%%%
% abstract
%%%%%%%%%%%%%%%%%%%%
\newenvironment{abstractZh}
  {
    \phantomsection
    \thispagestyle{prematterZh}
    \setlength{\parindent}{2em}

    \begin{center}
      \textbf{\Large 摘要}
    \end{center}
  }
  {
    \setlength{\parindent}{0em}
    \clearpage
  }
\newenvironment{abstractEn}
  {
    \phantomsection
    \thispagestyle{prematterEn}
    \setlength{\parindent}{2em}

    \begin{center}
      \Large \bfseries{Abstract}
    \end{center}
  }
  {
    \setlength{\parindent}{0em}
    \clearpage
  }
%%%%%%%%%%%%%%%%%%%%
% abstract - end
%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%
% keywords
%%%%%%%%%%%%%%%%%%%%
\newenvironment{keywordsEn}
  {
    \vspace{1ex}
    \noindent
    {\bf Keywords:} \nolinebreak
  }
  {
  }
\newenvironment{keywordsZh}
  {
    \vspace{1ex}
    \noindent
    {\bf 关键词：} \nolinebreak
  }
  {
  }

\RequirePackage{style/ShanghaiTech}
