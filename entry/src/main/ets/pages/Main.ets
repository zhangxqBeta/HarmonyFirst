import router from '@ohos.router'
@Entry
@Component
struct Main {
  build() {
    Scroll() {
      Column() {
        Text("First Page")
          .fontSize(15)
          .borderRadius(10)
          .backgroundColor(0xABCDEF)
          .textAlign(TextAlign.Center)
          .width('100%')
          .height(50)
          .onClick(() => {
            router.pushUrl({url: "pages/Index"})
          })

        Text("Second Page")
          .fontSize(15)
          .borderRadius(10)
          .backgroundColor(0xABCDEF)
          .margin({top: 10})
          .textAlign(TextAlign.Center)
          .width('100%')
          .height(50)
          .onClick(() => {
            router.pushUrl({url: "pages/Second"})
          })
      }
      .width('100%')
      .justifyContent(FlexAlign.Start)
      .padding(10)
      .backgroundColor(0xBCEDAF)
    }
    .width('100%')
    .height('100%')
    .align(Alignment.Top)
    .scrollBar(BarState.Off)
  }
}