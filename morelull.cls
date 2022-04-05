%
% 个人自用文档样式
%

\ProvidesClass{morelull}[2022/04/25 v0.3.0]

\LoadClass[UTF8]{ctexart}

\usepackage{morelull}

%%% 字体设置 %%%
\setmonofont{Fira Code Retina}
\setCJKmainfont{方正聚珍新仿简繁}
\setCJKsansfont{方正聚珍新仿简繁}
\setCJKfamilyfont{zhhei}{方正黑体简体}

% 重新定义
\renewenvironment{引用}
{\begin{quote}\CJKfamily{方正楷体}\small}
{\end{quote}}
