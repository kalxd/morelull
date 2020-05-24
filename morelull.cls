%
% 个人自用文档样式
%

\ProvidesClass{morelull}[2020/05/24 v0.2.0]

\LoadClass[UTF8]{ctexart}

\usepackage{morelull}

%%% 字体设置 %%%
\setmonofont{Fantasque Sans Mono}
\setCJKmainfont{方正书宋_GBK}
\setCJKsansfont{方正书宋_GBK}
\setCJKfamilyfont{方正楷体}{方正楷体简体}

% 重新定义
\renewenvironment{引用}
{\begin{quote}\CJKfamily{方正楷体}\small}
{\end{quote}}
