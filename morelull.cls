%
% 个人自用文档样式
%

\ProvidesClass{morelull}[2019/06/06 v0.0.1]

\LoadClass{ctexart}

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

%%% 自定义 %%%
\colorlet{PrimaryColor}{MaterialBlue900}

%
% CTEX格式设置
%
\ctexset{
  today=big,
  contentsname={文章导航},
  subsection/number={\textcolor{MaterialBlue900}{\thesubsection}}
}

%
% 代码高亮设置
%
\lstset{
  frame=single,
  numbers=left,
  tabsize=4,
  breaklines=true,
  captionpos=b,
  upquote=true,
  basicstyle=\footnotesize,
  backgroundcolor=\color{MaterialGrey100},
  identifierstyle=\color{MaterialBlue800},
  commentstyle=\itshape\color{MaterialGreen700},
  stringstyle=\bfseries\color{MaterialAmber800},
  keywordstyle=\bfseries\color{MaterialPurple700},
  numberstyle=\bfseries\color{MaterialGrey800},
}

\lstdefinelanguage{js}{
  morekeywords={const, let, class, Promise, try, catch, Error, async, await},
  sensitive=true,
  morecomment=[l]{//},
  morecomment=[s]{/*}{*/},
  morestring=[b]',
  morestring=[b]",
  morestring=[b]`,
}

%
% 字体设置
%
\setmonofont{Fantasque Sans Mono}
\setCJKmainfont{方正书宋_GBK}
\setCJKsansfont{方正书宋_GBK}

%%% 页眉页脚设置 %%%
\pagestyle{fancy}
\fancyhead[L]{\textcolor{PrimaryColor}{\leftmark}}
\fancyhead[C]{\textcolor{PrimaryColor}{\thepage}}
\fancyhead[R]{\textcolor{PrimaryColor}{\rightmark}}
\fancyfoot{}
\renewcommand{\headrule}{\color{PrimaryColor}\hrule width\textwidth}

%
% 自定义命令
%

% 专名号
\providecommand\vlmk[1]{
  \CJKunderline{#1}
}

% 着重号
\providecommand\vovs[1]{
  \CJKunderdot{#1}
}

%
% 自定义环境
%