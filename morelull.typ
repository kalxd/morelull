#import "@preview/a2c-nums:0.0.1": int-to-cn-simple-num

#let 颜色 = (
  靛青: rgb(22, 97, 171),
  海青: rgb(34, 162, 195),
  蟹壳红: rgb(242, 118, 53),
  品红: rgb(239, 52, 115),
  清水蓝: rgb(147, 213, 220),
  翠蓝: rgb(30, 158, 179),
  孔雀蓝: rgb(14, 176, 201),
  霁青: rgb(99, 187, 208)
)

#let 字体 = (
  中文: "FZJuZhenXinFang-R-JF",
  英文: "Fantasque Sans Mono"
)

#let t = h(2em)

#let morelull(
  标题: "标题",
  作者: "荀洪道",
  doc
) = {
  let 设定标题(标题) = {
    text(size: 2.6em)[
      #sym.notes.down #标题 #sym.notes.up
    ]
  }

  let 设定作者(作者) = {
    text(size: 1.4em, 作者)
  }

  let 显示中文日期(today) = {
    let year = int-to-cn-simple-num(today.year());
    let month = int-to-cn-simple-num(today.month());
    let day = int-to-cn-simple-num(today.day());
  
    year + "年" + month + "月" + day + "日"
  }

  let 设定眉头(loc) = {
    set text(颜色.靛青)
    let current-page = loc.page();
    if current-page == 1 {
      return none
    }

    current-page = current-page - 1;    
    let current-page = int-to-cn-simple-num(current-page)
    let title-page = "第" + current-page + "页"

    let last-header = query(heading.where(level: 1), loc)
      .rev()
      .find(h => h.location().page() <= loc.page());

    let header-title = if not last-header == none {
      last-header.body
    }

    header-title + h(1fr) + title-page
    v(-.4em)
    line(length: 100%, stroke: 颜色.靛青)
  }

  
  set page(
    paper: "a4",
    margin: 4em,
    header: locate(设定眉头)
  )
  set text(font: 字体.中文, fallback: true, lang: "zh")

  // 封面
  align(center + horizon)[
    #设定标题(标题)
    #v(1em)
    #设定作者(作者)
    
    #显示中文日期(datetime.today())
  ]

  // 标题
  show heading: set text(颜色.靛青)
  show heading.where(level: 1): set align(center)

  // 代码块
  show raw.where(block: true): it => {
    box(
      stroke: 颜色.靛青,
      inset: 1em,
      width: 100%,
    )[#text(font: 字体.英文, it)]
  }

  // 内联代码
  show raw.where(block: false): it => {
    text(
      font: 字体.英文,
      fill: 颜色.靛青,
      it
    )
  }

  // 着重号
  set underline(offset: 4pt)

  // 链接
  show link: set text(fill: 颜色.品红)

  // 表格居中
  show table: it => align(center, it)

  pagebreak()
  doc
}
