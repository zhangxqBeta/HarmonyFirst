import promptAction from '@ohos.promptAction'

@CustomDialog
struct MyCustomDialog {
  controller: CustomDialogController
  onCancel: () => void
  onOk: () => void

  build() {
    Column() {
      Text("FirstDialog")
        .width(300)
        .height(400)
        .fontSize(30)
        .fontWeight(FontWeight.Bolder)
        .textAlign(TextAlign.Center)

      Row() {
        Button("Cancel")
          .width(80)
          .height(40)
          .type(ButtonType.Normal)
          .borderRadius(8)
          .onClick(() => {
            this.controller.close()
            this.onCancel
          })

        Button("Ok")
          .width(80)
          .height(40)
          .type(ButtonType.Normal)
          .borderRadius(8)
          .onClick(() => {
            this.controller.close()
            this.onOk
          })
      }
      .width('80%')
      .justifyContent(FlexAlign.SpaceBetween)
      .margin({ bottom: 20 })
    }
    .width(300)
    .height(500)
    .justifyContent(FlexAlign.SpaceBetween)
  }
}

@Entry
@Component
struct FirstDialog {
  dialogController: CustomDialogController = new CustomDialogController({
    builder: MyCustomDialog({
      onCancel: () => {
        promptAction.showToast({ message: "Cancel" })
      },
      onOk: () => {
        promptAction.showToast({ message: "Ok" })
      }
    }),
    alignment: DialogAlignment.Center
  })

  build() {
    Column() {
      Button("Show Dialog")
        .onClick(() => {
          this.dialogController.open()
        })
    }
    .justifyContent(FlexAlign.Center)
    .width('100%')
    .height('100%')
  }
}

