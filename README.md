# HUD Hero

[![SPM Compatible](https://img.shields.io/badge/SwiftPM-Compatible-brightgreen.svg)](https://swiftpackageindex.com)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-brightgreen.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

## Requirements

* Xcode 13+
### Supported Platforms
* `.iOS(.v15)`
* `.macOS(.v12)`
* `.tvOS(.v13)`
* `.watchOS(.v6)`
* `.visionOS(.v1)`

## Installation

### Swift Package Manager

On Xcode go to `File` > `Swift Packages` > `Add Package Dependency`, and enter the URL below:
`https://github.com/jobearrr/HUDHero.git`

### Carthage

``` ogdl
github "jobearrr/HUDHero"
```

### CocoaPods
👷 *Comming up soon!*

## Usage

1. Import `HUDHero` where you wish to use it:
``` swift
import HUDHero
```

2. Use the `HUDBuilder` to setup and build a `HUD` to display on a SwiftUI view:

``` swift
HUDBuilder()
    .animation(.gradientCircle)
    .foregroundColor(.accentColor)
    .isLoading($viewModel.isLoading)
    .build()
```

### Demo App
You can open the workspace in the repository's root folder to browse the *demo app*.

*Displays the loading HUD while fetching the list of books matching the search entry:*

https://github.com/jobearrr/HUDHero/assets/1816444/d068bfd5-c3d7-45fd-9f3d-eb4d8531c4f1

