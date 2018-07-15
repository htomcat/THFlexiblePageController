## Features
- Infinite page view
- Simply customize

## Requirements
iOS11 or above and is written in Swift 4.

## Installation
### CocoaPods
```
pod `THFlexiblePageController`
```

## Usage
### Set to your view controller
```
let test1 = UIViewController()
test1.view.backgroundColor = .red
test1.title = "test1"
test1.upperTabsColor = .red

let test2 = UIViewController()
test2.view.backgroundColor = .yellow
test2.title = "test2"
test2.upperTabsColor = .yellow

let test3 = UIViewController()
test3.view.backgroundColor = .blue
test3.title = "test3"
test3.upperTabsColor = .blue

let test4 = UIViewController()
test4.view.backgroundColor = .green
test4.title = "test4"
test4.upperTabsColor = .green

let test5 = UIViewController()
test5.view.backgroundColor = .black
test5.title = "test5"
test5.upperTabsColor = .black

let root = RootViewController.makeInstance()
let config = Configuration(tabsHeight: 30, tabsWidth: 100, selectedLineColor: .gray, backgroundColor: .white, hiddenSeparatedLine: true, spacing: 0)
root.setPages([test1, test2, test3, test4, test5], config: config)
```

## License
The library is available as open source under the terms of the MIT License.
