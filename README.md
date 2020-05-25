# morelull

![睡睡菇](./static/morelull.png)

面向民科（我自己）技术文档。

关注于中文排版。

# 简介

*morelull*重新定义`ctexart`默认样式，同时拓展一些命令。

# 依赖

需要使用`xelatex`编译，同时依赖下面这些包：

* fancyhdr，眉首眉脚。
* xcolor-material，主要调色板。
* listings，代码高亮
* geometry，版边边距。
* tcolorbox，醒目提示。
* bookmark，书签功能。
* hyperref，超链接。

# 说明文档

可查看兼具使用说明和代码说明的[文档源码](./doc/doc.tex)。

或者在overleaf上[在线预览模板](https://www.overleaf.com/latex/templates/morelull-sample/sfrmdxnrnbbn)。

# 使用

```latex
% 跟使用ctexart没区别。
\documentclass{morelull}

\begin{document}
你好啊。

\begin{lstlisting}{language=haskell}
main :: IO ()
main = getLine >>= putStrLn
\end{lstlisting}
\end{document}
```

使用`morelull`文档，默认使用了方正宋体，电脑上没有安装该字体，编译会失败。

同样可以使用它的包。

```latex
\documentclass{ctexart}
\usepackage{morelull}

% ...
```

功能与文档用法大同小异，移除了一些默认配置，可以在其它电脑上安装使用。
