import web_webview from '@ohos.web.webview';

@Entry
@Component
struct FirstWebView {
  private webController = new web_webview.WebviewController();
  build() {
    Navigation() {
      Column() {
        Button("LoadUrl")
          .onClick(() => {
            this.webController.loadUrl("https://www.jianshu.com/p/75a7db26d1d7")
          })
          .margin(10)

        Web({
          src: 'https://www.baidu.com',
          controller: this.webController
        })
          .onPageBegin(() => {

          })
      }
      .width('100%')
      .height('100%')
    }
    .title("FirstWebView")
    .titleMode(NavigationTitleMode.Mini)
  }
}