# SwiftANSI
Colorize your terminal output with ANSI Colors

![Swift 3.0](https://img.shields.io/badge/Swift-3.0-orage.svg)
[![Twitter Follow](https://img.shields.io/twitter/url/http/shields.io.svg?style=social&label=Follow&maxAge=2592000)](https://twitter.com/somekindofcode)

Simply use it on any `String`.

```swift
public func textColor(_ color: ANSIColor) -> String {}
public func backgroundColor(_ color: ANSIColor) -> String {}
public func style(_ style: ANSIStyle) -> String {}
```

Example:
```swift
"This " +
"line ".textColor(.Yellow) +
"is " +
"mixed".backgroundColor(.Blue)
```
chaining possible
```swift
"Lorem Ipsum".style(.Bold)
  .textColor(.Red)
  .backgroundColor(.White)
```

## Colors
- Black
- Red
- Green
- Yellow
- Blue
- Magenta
- Cyan
- White

## Styles
- Bold
- Italic
- Underline
- Inverse
- Blink
- Strikethrough

You can take a look at the [`Sources/main.swift`](Sources/main.swift) to. This file is no included in the compiled package!

## Install

Add a dependency to your `Package.swift`

```swift
import PackageDescription

let package = Package(
    name: "YourPackage",
    dependencies: [
        .Package(url: "git@github.com:somekindofcode/SwiftANSI.git", majorVersion: 1)
    ]
)
```
