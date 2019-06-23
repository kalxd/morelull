%
% 个人自用文档样式
%

\ProvidesClass{morelull}[2019/06/06 v0.1.0]

\LoadClass[UTF8]{ctexart}

% 眉首眉脚
\RequirePackage{fancyhdr}
% 调色板
\RequirePackage{xcolor-material}
% 代码提示
\RequirePackage{listings}
% 版边边距
\RequirePackage[left=2cm, right=2cm, bottom=2cm]{geometry}
% 更加现代定理、引用提示
\RequirePackage{tcolorbox}
% 书签
\RequirePackage[open, openlevel=2, atend]{bookmark}
% 链接
\RequirePackage{hyperref}
\RequirePackage{xkeyval}

%%% 自定义 %%%
\colorlet{PrimaryColor}{MaterialBlue900}

%%% CTEX格式设置 %%
\ctexset{
  today=big,
  contentsname={文章导航},
  section/format=\Large\bfseries\centering\color{PrimaryColor},
  % section/number={\textcolor{MaterialBlue900}{\thesection}},
  subsection/number={\textcolor{MaterialBlue900}{\thesubsection}},
}

%%% 字体设置 %%%
\setmonofont{Fantasque Sans Mono}
\setCJKmainfont{方正书宋_GBK}
\setCJKsansfont{方正书宋_GBK}

%%% 链接设置 %%%
\hypersetup{
  colorlinks=true,
  linkcolor=MaterialPink,
  urlcolor=MaterialBlue,
  filecolor=MaterialGreen,
}

%%% 代码高亮设置 %%%
\tcbuselibrary{listings}

\lstset{
  frame=single,
  frameround=tttt,
  framesep=1pt,
  framextopmargin=6pt,
  framexbottommargin=6pt,
  tabsize=4,
  breaklines=true,
  upquote=true,
  caption=\lstname,
  captionpos=b,
  basicstyle=\footnotesize,
  backgroundcolor=\color{MaterialBlue50},
  rulecolor=\color{MaterialBlue},
  identifierstyle=\color{MaterialBlue800},
  commentstyle=\itshape\color{MaterialGreen700},
  stringstyle=\bfseries\color{MaterialAmber800},
  keywordstyle=\bfseries\color{MaterialPurple700},
  numberstyle=\bfseries\color{MaterialGrey800},
}

\lstdefinelanguage{javascript}{
  morekeywords={const, let, class, Promise, try, catch, Error, async, await, super, constructor},
  sensitive=true,
  morecomment=[l]{//},
  morecomment=[s]{/*}{*/},
  morestring=[b]',
  morestring=[b]",
  morestring=[b]`,
}
\lstalias{js}{javascript}

%%% 页眉页脚设置 %%%
\pagestyle{fancy}
\fancyhead[L]{\textcolor{PrimaryColor}{\leftmark}}
\fancyhead[C]{\textcolor{PrimaryColor}{第 \thepage 页}}
\fancyhead[R]{\textcolor{PrimaryColor}{\rightmark}}
\fancyfoot{}
\renewcommand{\headrule}{\color{PrimaryColor}\hrule width\textwidth}

%%% tcolorbox %%%
\tcbuselibrary{theorems}
\tcbuselibrary{skins}
\tcbsetforeverylayer{enhanced}

%%% 自定义命令 %%%
% 专名号
\providecommand\vlmk[1]{%
  \CJKunderline{#1}%
}

% 着重号
\providecommand\vovs[1]{%
  \CJKunderdot{\heiti{#1}}%
}

% 内联代码，单一颜色
\providecommand\code[1]{%
  \ttfamily\textcolor{MaterialPink}{#1}
}

%%% 自定义环境 %%%
% 引用
\newenvironment{yiys}
{\begin{quote}\kaishu\small}
{\end{quote}}

% 定理
\newtcbtheorem[number within=section]{dkli}{定理}{
  fonttitle=\heiti,
  boxrule=0.1mm,
  colback=MaterialGreen50,
  colframe=MaterialGreen,
  attach boxed title to top left={xshift=12pt, yshift*=-\tcboxedtitleheight/2},
  boxed title style={colback=MaterialGreen}
}{}

% 结论
\newtcbtheorem[number within=section]{jply}{结论}{
  fonttitle=\heiti,
  boxrule=0.1mm,
  colback=MaterialTeal50,
  colframe=MaterialTeal,
  attach boxed title to top left={xshift=12pt, yshift*=-\tcboxedtitleheight/2},
  boxed title style={colback=MaterialTeal}
}{}

% 命题
\newtcbtheorem[number within=section]{mkti}{命题}{
  fonttitle=\heiti,
  boxrule=0.1mm,
  colback=MaterialBlueGrey50,
  colframe=MaterialBlueGrey,
  attach boxed title to top left={xshift=12pt, yshift*=-\tcboxedtitleheight/2},
  boxed title style={colback=MaterialBlueGrey}
}{}

% 定义
\newtcbtheorem[number within=section]{dkyi}{定义}{
  fonttitle=\heiti,
  boxrule=0.1mm,
  colback=MaterialCyan50,
  colframe=MaterialCyan,
  attach boxed title to top left={xshift=12pt, yshift*=-\tcboxedtitleheight/2},
  boxed title style={colback=MaterialCyan}
}{}

% 提示

% 注意