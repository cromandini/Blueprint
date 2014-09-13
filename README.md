# Declarative layout constraints in Swift.

__Blueprint__ started with the idea to port my Objective-C's [TATLayout](https://github.com/cromandini/TATLayout) library to Swift. But soon it changed at all, thanks to the awesome features in the Swift language and the additions to the constraint based layout system in iOS 8.

## Requirements
iOS 8.0 and Xcode 6.0 GM

## Installation
__Blueprint__ is a Cocoa Touch Framework, to use it you can:

- add `Blueprint.xcodeproj` to your project
- link `Blueprint.framework`
- then `import Blueprint`

But...for now...the real thing is just one file: [DeclarativeLayoutConstraint.swift](https://github.com/cromandini/Blueprint/blob/master/Blueprint/DeclarativeLayoutConstraint.swift) so you can add the file to your project/target and that's all!

## Usage
#####There are 2 formats that can be used to declare layout constraints:
```
view.attribute ==|<=|>= view.attribute[ *|/ multiplier][ +|- constant][ ~ priority]
view.attribute ==|<=|>= constant[ ~ priority]
```

##### Where:
```
view: AnyObject! (just like NSLayoutConstraint's items)

attribute: NSLayoutAttribute

extension UIView {
    left: .Left
    right: .Right
    top: .Top
    bottom: .Bottom
    leading: .Leading
    trailing: .Trailing
    width: .Width
    height: .Height
    centerX: .CenterX
    centerY: .CenterY
    baseline: .Baseline
    firstBaseline: .FirstBaseline
    leftMargin: .LeftMargin
    rightMargin: .RightMargin
    topMargin: .TopMargin
    bottomMargin: .BottomMargin
    leadingMargin: .LeadingMargin
    trailingMargin: .TrailingMargin
    centerXWithinMargins: .CenterXWithinMargins
    centerYWithinMargins: .CenterYWithinMargins
}

multiplier: CGFloat

constant: CGFloat

priority: UILayoutPriority
```

##### Example:
```swift
let topView = UIView()
topView.backgroundColor = UIColor.blueColor()
topView.setTranslatesAutoresizingMaskIntoConstraints(false)
view.addSubview(topView)
   
let bottomView = UIView()
bottomView.backgroundColor = UIColor.greenColor()
bottomView.setTranslatesAutoresizingMaskIntoConstraints(false)
view.addSubview(bottomView)
   
let label = UILabel()
label.text = "The label"
label.setTranslatesAutoresizingMaskIntoConstraints(false)
view.addSubview(label)
   
let padding: CGFloat = 20
   
NSLayoutConstraint.activateConstraints([
    label.centerX == view.centerX,
    label.centerY == view.centerY,
    topView.top == view.top + padding,
    topView.leading == view.leading + padding,
    topView.trailing == view.trailing - padding,
    topView.height >= view.height / 3,
    topView.bottom == bottomView.top + padding ~ 751,
    bottomView.height == view.height * 0.5,
    bottomView.leading == view.leading + padding,
    bottomView.trailing == view.trailing - padding,
    bottomView.bottom == view.bottom - padding
])
```

## Unit Tests
__Blueprint__ is driven by unit testing. Run the tests with command+U.

## License
This project is under the MIT license.
