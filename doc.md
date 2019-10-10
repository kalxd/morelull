---
title: morelull手册
title: drifloon使用手册
author: 荀徒之
documentclass: morelull
numbersections: true
---

# 使用

## 文档

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

直接使用`morenull`文档，默认加载方正字体。编译出错时，确认字体正确。

## 引用包

```latex
\documentclass{ctexart}
\usepackage{morelull}

% ...
```

去除默认字体设置。

# 命令与环境

## 中文专有符号

### 专名号

```latex
\vrmk{名词}
```

### 着重号

```latex
\vovs{加强语气}
```

## 段落

### 引用

```latex
\ybys{这里是引用}
```

### 提示

```latex
\tiui{提示}
```

### 提醒

```latex
\tixk{提醒}
```

### 注意

```latex
\vuyi{注意}
```

## 数学环境

### 定理

```latex
\begin{dkli}{定理}{}
写上你的定理
\end{dkli}
```

### 结论

```latex
\begin{jply}{结论}{}
写上你的结论
\end{jply}
```

### 命题

```latex
\begin{mkti}{命题}{}
写上你的命题
\end{mkti}
```

### 定义

```latex
\begin{dkyi}
写上你的定义
\end{dkyi}
```
