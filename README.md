# Declarative layout constraints in Swift.

__Blueprint__ started with the idea to port my Objective-C's [TATLayout](https://github.com/cromandini/TATLayout) library to Swift. But soon the project took its own personality thanks to the awesome features in Swift language and the additions to the constraint based layout system in iOS 8.

## Requirements
iOS 8.0 and Xcode 6 Beta 5

## Installation
__Blueprint__ is a Cocoa Touch Framework, to use it you can:

- add `Blueprint.xcodeproj` to your project
- link `Blueprint.framework`
- then `import Blueprint`

But...for now...the real thing is just one file: `DeclarativeLayoutConstraint.swift` so you can add the file to your project/target and that's all!

## Usage Examples
```swift
let label = UILabel()
label.text = "The Label"
label.setTranslatesAutoresizingMaskIntoConstraints(false)
view.addSubview(label)

NSLayoutConstraint.activateConstraints([
    label.centerX == view.centerX,
    label.centerY == view.centerY
])
```

## Unit Tests
__Blueprint__ is driven by unit testing. Run the tests with command+U.

## Todo's
- Add Better Usage Examples.
- Redo TATLayout's example app using Swift and Blueprint.

## License
This project is under the MIT license.
