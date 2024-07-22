# `🦸 HUDHero`

[![GitHub last commit][last-commit-shield]][last-commit-url]
[![CI Status][ci-status-shield]][ci-status-url]
[![Maintainability][maintainability-shield]][maintainability-url]
[![Test Coverage][coverage-shield]][coverage-url]
[![SPM Compatible][spm-shield]][spm-url]
[![Carthage Compatible][carthage-shield]][carthage-url]
[![MIT License][license-shield]][license-url]

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


<!-- Markdown references https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[last-commit-shield]: https://img.shields.io/github/last-commit/jobearrr/HUDHero?style=flat
[last-commit-url]: https://github.com/jobearrr/HUDHero/commits/master
[ci-status-shield]: https://github.com/jobearrr/HUDHero/actions/workflows/main.yml/badge.svg
[ci-status-url]: https://github.com/jobearrr/HUDHero/actions/workflows/main.yml
[maintainability-shield]: https://api.codeclimate.com/v1/badges/5621fae170787d455968/maintainability
[maintainability-url]: https://codeclimate.com/github/jobearrr/HUDHero/maintainability
[coverage-shield]: https://api.codeclimate.com/v1/badges/5621fae170787d455968/test_coverage
[coverage-url]: https://codeclimate.com/github/jobearrr/HUDHero/test_coverage
[spm-shield]: https://img.shields.io/badge/SwiftPM-Compatible-brightgreen.svg
[spm-url]: https://swiftpackageindex.com
[carthage-shield]: https://img.shields.io/badge/Carthage-compatible-brightgreen.svg?style=flat
[carthage-url]: https://github.com/Carthage/Carthage
[license-shield]: https://img.shields.io/github/license/jobearrr/HUDHero.svg?style=flat
[license-url]: https://github.com/jobearrr/HUDHero/LICENSE
