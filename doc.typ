#import "@local/morelull:0.6.0": *

#show: morelull.with(标题: "这里写上一个标题")

= 大大的标题写在这里。

#t 这里又是另一个#underline[故事]了。

#t 一块硬盘,容量 1T,作为应用#underline[数据盘],一般性的#underline[程序]都放在上面,包括所产生的数据;另一块容量
4T,作为媒体数据盘,数字媒体、个人数据都在上面。

#t 这里又加起新的段，你看看效果。

```rust
fn main() {
  println!("hello world")
}
```

#t 这里再启动一个新的东西。

#context [

#let cur-header = query(selector(heading.where(level: 1)).before(here()))
#cur-header
]
= title here

sfasf

#pagebreak()



title