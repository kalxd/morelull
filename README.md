# morelull

![睡睡菇](https://media.52poke.com/wiki/thumb/c/c9/755Morelull.png/240px-755Morelull.png)

面向民科（我自己）技术文档。专注于中文排版。

不善于色彩设计，只堪入目耳。

# 简介

*morelull*原本为LaTeX模板，现切换成了Typst模板。

*morelull*在原有基础，设定了新字体、重写部分默认样式。
一些typst无法解决的问题，该模板也同样存在：默认开头空两格……

整体主题色彩依据[中国色彩](https://github.com/kalxd/happiny)。

# 依赖

[a2c-nums](https://github.com/typst/packages/tree/main/packages/preview/a2c-nums/0.0.1) ：阿拉伯数字转为中文数字。

# 安装

模板暂时无法通过网络安装，可手动安装到本地，见[typst包文档](https://github.com/typst/packages?tab=readme-ov-file#local-packages)。

# 使用模板

```typst
#import "local/morelull:0.5.0": morelull, t
#show: morelull.with(标题: "文章的标题", 作者: "文章的作得")

= 第一段

#t 开始你的表演……
```

*morelull*仅提供两个函数，一个是模板函数`morelull`，另一个是开头缩进`t`。

# 说明

模板使用了方正字体，需要额外安装；字体不存在的情况下，编译无法通过。

# 发布协议

GPL v3
