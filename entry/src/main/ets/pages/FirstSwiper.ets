import FaultLogger from '@ohos.faultLogger'
@Entry
@Component
struct FirstSwiper {
  build() {
    Swiper() {
      Text("First")
        .width('90%')
        .width('100%')
        .textAlign(TextAlign.Center)
        .fontSize(30)
        .fontWeight(FontWeight.Bolder)
        .backgroundColor('#ababef')

      Text("Second")
        .width('90%')
        .width('100%')
        .textAlign(TextAlign.Center)
        .fontSize(30)
        .fontWeight(FontWeight.Bolder)
        .backgroundColor('#babaef')

      Text("Third")
        .width('90%')
        .width('100%')
        .textAlign(TextAlign.Center)
        .fontSize(30)
        .fontWeight(FontWeight.Bolder)
        .backgroundColor('#aadcef')

      Text("Forth")
        .width('90%')
        .width('100%')
        .textAlign(TextAlign.Center)
        .fontSize(30)
        .fontWeight(FontWeight.Bolder)
        .backgroundColor('#ddacef')
    }
    .width('100%')
    .height('100%')
    .loop(true)
    .autoPlay(true)
    .backgroundColor('#efbcad')
  }
}