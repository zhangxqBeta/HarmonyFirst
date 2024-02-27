import promptAction from '@ohos.promptAction'
@Entry
@Component
struct FirstNavigation {
  build() {
    Navigation() {
      Text("FirstNavigation")
        .width('100%')
        .height('100%')
        .fontSize(40)
        .textAlign(TextAlign.Center)
        .fontWeight(FontWeight.Bolder)
    }
    .title("FirstNavigation")
    .titleMode(NavigationTitleMode.Mini)
    .menus([
      {value: "", icon: "./image/icon.jpg", action: () => {
        promptAction.showToast({message: "Search"})
      }},
      {value: "", icon: "./image/icon.jpg", action: () => {
        promptAction.showToast({message: "Add"})
      }},
      {value: "Delete", icon: "./image/icon.jpg", action: () => {
        promptAction.showToast({message: "Delete"})
      }},
      {value: "Plus", icon: "./image/icon.jpg", action: () => {
        promptAction.showToast({message: "Plus"})
      }}
    ])
    .toolBar({items: [
      {value: "First", icon: "./image/icon.jpg", action: ()=> {
        promptAction.showToast({message: "First"})
      }},
      {value: "Second", icon: "./image/icon.jpg", action: ()=> {
        promptAction.showToast({message: "Second"})
      }},
      {value: "Third", icon: "./image/icon.jpg", action: ()=> {
        promptAction.showToast({message: "Third"})
      }}
    ]})
  }
}