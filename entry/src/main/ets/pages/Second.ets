import router from '@ohos.router'
@Entry
@Component
struct Second {
  @State message: string = 'second Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        Button("back")
          .margin({top: 10})
          .onClick(() => {
            router.back()
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}