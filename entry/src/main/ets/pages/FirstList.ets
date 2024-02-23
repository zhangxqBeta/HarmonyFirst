import promptAction from '@ohos.promptAction'

@Entry
@Component
struct FirstList {
  private city = ["beijing", "shanghai", "shenzhen", "suzhou", "hangzhou", "xiamen", "wenzhou", "huzhou", "wuxi", "kunming", "lijiang"]

  build() {
    List() {
      ForEach(this.city, (item: string, index: number) => {
        ListItem() {
          Text(item)
            .width('100%')
            .height(100)
            .fontSize(16)
            .margin({top: (index != 0 ? 5 : 0)})
            .fontWeight(FontWeight.Bolder)
            .backgroundColor('#abcdef')
            .textAlign(TextAlign.Center)
        }.onClick(() => {
          promptAction
            .showDialog({
              title: item,
              message: "我和你城市的距离远吗？\n\n\n\n",
              buttons: [{ text: '远', color: '#0099FF' }, { text: '不远', color: '#888888' }]
            })
            .then((result) => {
              if (result.index == 0) {
                promptAction.showToast({ message: "远" })
              } else {
                promptAction.showToast({ message: "不远" })
              }
            })
        })
      })
    }
    .alignListItem(ListItemAlign.Center)
    .width('100%')
    .height('100%')
    .scrollBar(BarState.On)
  }
}
