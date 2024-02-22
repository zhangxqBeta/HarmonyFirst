import promptAction from '@ohos.promptAction'
import router from '@ohos.router'
import { SPUtil } from '../utils/SPUtil'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Column() {
        Text(this.message)
          .fontSize(15)
          .backgroundColor("#dddddd")
          .fontColor($r('app.color.text_main'))
          .padding(10)
          .clip(false)
          .fontWeight(FontWeight.Normal)

        Text("hello puppy")
          .width(200)
          .height(50)
          .textAlign(TextAlign.Center)
          .margin({top: 10})
          .backgroundColor(0xABEDFC)
          .borderRadius(10)
          .onClick(() => {
          SPUtil.getString("puppyName").then((value) => {
            promptAction.showToast({message: value.toString()})
          })
        })

        Button("save puppy")
          .width(200)
          .height(50)
          .margin({top: 10})
          .onClick(() => {
          SPUtil.putString("puppyName", "cat")
        })

        Button("jump second")
          .width(200)
          .height(50)
          .margin({top: 10})
          .onClick(() => {
            router.pushUrl({url: "pages/Second"})
          })

        Button("back")
          .width(200)
          .height(50)
          .margin({top: 10})
          .onClick(() => {
            router.back()
          })

        Image($r('app.media.app_icon'))
          .width(100)
          .height(100)
          .margin({top: 10})
          .onClick(() => {
          promptAction.showToast({message: "image click"})
        })

        Image('https://t7.baidu.com/it/u=4198287529,2774471735&fm=193&f=GIF')
          .width('100%')
          .height(100)
          .margin({top: 10})
      }.height('50%').width('50%').justifyContent(FlexAlign.Start)
    }.width('100%').height('100%').backgroundColor(0x55ABCDEF).justifyContent(FlexAlign.Center)
  }

  onPageShow() {
    SPUtil.putString("puppyName", "dog")
  }
}