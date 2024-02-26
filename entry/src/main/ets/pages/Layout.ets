@Entry
@Component
struct Layout {
  build() {
    Column() {
      RelativeContainer() {
        Text("First")
          .alignRules({
            top: { anchor: '__container__', align: VerticalAlign.Top},
            left: { anchor: '__container__', align: HorizontalAlign.Start}
          })
          .id("first")
          .width(100)
          .height(50)
          .textAlign(TextAlign.Center)
          .backgroundColor('#abcdef')

        Text("Second")
          .alignRules({
            // bottom: {anchor: '__container__', align: VerticalAlign.Bottom},
            // right: {anchor: '__container__', align: HorizontalAlign.End},
            center: {anchor: '__container__', align: VerticalAlign.Center},
            middle: {anchor: '__container__', align: HorizontalAlign.Center}
          })
          .id("second")
          .width(100)
          .height(50)
          .textAlign(TextAlign.Center)
          .backgroundColor('#abcdef')
      }
      .width('100%')
      .height(300)
      .backgroundColor('#bcabef')
      .margin({bottom: 10})

      Flex({wrap: FlexWrap.Wrap}) {
        Text("1")
          .width('30%')
          .height(50)
          .textAlign(TextAlign.Center)
          .backgroundColor('#abcdef')
          .margin({right: 10, top: 10})

        Text("2")
          .width('30%')
          .height(50)
          .textAlign(TextAlign.Center)
          .backgroundColor('#abcdef')
          .margin({right: 10, top: 10})

        Text("3")
          .width('30%')
          .height(50)
          .textAlign(TextAlign.Center)
          .backgroundColor('#abcdef')
          .margin({right: 10, top: 10})

        Text("4")
          .width('30%')
          .height(50)
          .textAlign(TextAlign.Center)
          .backgroundColor('#abcdef')
          .margin({right: 10, top: 10})

        Text("5")
          .width('30%')
          .height(50)
          .textAlign(TextAlign.Center)
          .backgroundColor('#abcdef')
          .margin({right: 10, top: 10})
      }
      .width('100%')
      .height(300)
      .backgroundColor('#bcabef')
    }
  }
}