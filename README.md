# Storyboardable

[![CI Status](https://img.shields.io/travis/outofcoding/Storyboardable.svg?style=flat)](https://travis-ci.org/outofcoding/Storyboardable)
[![Version](https://img.shields.io/cocoapods/v/Storyboardable.svg?style=flat)](https://cocoapods.org/pods/Storyboardable)
[![License](https://img.shields.io/cocoapods/l/Storyboardable.svg?style=flat)](https://cocoapods.org/pods/Storyboardable)
[![Platform](https://img.shields.io/cocoapods/p/Storyboardable.svg?style=flat)](https://cocoapods.org/pods/Storyboardable)

I want storyboard simple use.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

Storyboardable is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Storyboardable'
```

## Author

outofcoding, outofcoding@gmail.com and bear, mrgamza@gmail.com

## License

Storyboardable is available under the MIT license. See the LICENSE file for more info.

# Use.

## Enum Case
Create an enum that inherits Storyboardable
```
enum Main : Storyboardable {
    case first
    case second
    case test
}
```

Use Code
```
// Get storyboard
let storyboard = Main.storyboard
print("storyboard = \(storyboard)")

// Use storyboard initial ViewController
let initial = Main.initial!
present(initial, animated: true, completion: nil)

// Use storyboard identifier ViewController
let first = Main.first.get
present(first, animated: true, completion: nil)

// Get Information
let test = Main.test
let name = test.name
let identifier = test.identifier ?? "none"
print("name = \(name), identifier = \(identifier)")

// Direct push or present
Main.test.present(self)
Main.test.push(self)
```

## Builder Case

Use Code
```
let builder = StoryboardBuilder(name: "Main")
let initController = builder.get("test")!
present(initController, animated: true, completion: nil)

let secondController = builder.get("second")!
present(secondController, animated: true, completion: nil)
```
