# morelull

![睡睡菇](https://media.52poke.com/wiki/thumb/c/c9/755Morelull.png/240px-755Morelull.png)

面向民科（我自己）技术文档。

关注于中文排版。

# 简介

*morelull*重新定义`ctexart`默认样式，同时拓展一些命令。

整体主题色彩依据[中国色彩](https://github.com/kalxd/happiny)。

# 依赖

需要使用`xelatex`编译，同时依赖下面这些包：

* fancyhdr，眉首眉脚。
* xcolor，重新定义调色板。
* listings，代码高亮
* geometry，版边边距。
* tcolorbox，醒目提示。
* bookmark，书签功能。
* hyperref，超链接。

# 安装

这个包并未上传到ctan，只能本地安装。确保依赖包满足的情况下，执行以下命令：

1. 在家目录创建必要目录：

```bash
$ mkdir -p ~/texmf/tex/latex/
```

2. 复制源代码：

```
$ git clone https://github.com/kalxd/morelull.git ~/texmf/tex/latex/morelull
```
3. 重载包信息：

```bash
$ texhash ~/texmf
```

这几步下来，不出意外的话，应该就能使用上了。

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
