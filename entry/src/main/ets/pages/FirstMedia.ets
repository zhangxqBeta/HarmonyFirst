@Entry
@Component
@Preview
struct FirstMedia {
  private controller = new VideoController()
  @State currentTime: number = 0
  @State durationTime: number = 0
  @State curRate: PlaybackSpeed = PlaybackSpeed.Speed_Forward_1_00_X

  build() {
    Navigation() {
      Column() {
        Video({
          src: "http://www.w3school.com.cn/example/html5/mov_bbb.mp4",
          controller: this.controller,
          currentProgressRate: this.curRate
        }).height(300)
          .width('100%')
          .objectFit(ImageFit.Auto)
          .autoPlay(true)
          .loop(true)
          .controls(false)
          .onPrepared((event) => {
            this.durationTime = event.duration
          })
          .onUpdate((event) => {
            this.currentTime = event.time
          })

        Row() {
          Text(this.currentTime + "s")
            .fontSize(13)
          Slider({
            min: 0,
            max: this.durationTime,
            value: this.currentTime
          }).width('90%')
            .height(15)
            .onChange((value) => {
              this.controller.setCurrentTime(value, SeekMode.Accurate)
            })
          Text(this.durationTime + "s")
            .fontSize(13)
        }
        .width('100%')
        .padding({left: 5, right: 5})
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .width('100%')
      .height('100%')
    }
    .title("FirstMedia")
    .titleMode(NavigationTitleMode.Mini)
  }
}