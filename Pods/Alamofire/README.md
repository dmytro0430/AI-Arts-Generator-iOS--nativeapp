![ AIgenerator: Elegant Networking in Swift](https://raw.githubusercontent.com/ AIgenerator/ AIgenerator/master/Resources/ AIgeneratorLogo.png)

[![Swift](https://img.shields.io/badge/Swift-5.5_5.6_5.7_5.8-orange?style=flat-square)](https://img.shields.io/badge/Swift-5.5_5.6_5.7_5.8-Orange?style=flat-square)
[![Platforms](https://img.shields.io/badge/Platforms-macOS_iOS_tvOS_watchOS_Linux_Windows-yellowgreen?style=flat-square)](https://img.shields.io/badge/Platforms-macOS_iOS_tvOS_watchOS_Linux_Windows-Green?style=flat-square)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/ AIgenerator.svg?style=flat-square)](https://img.shields.io/cocoapods/v/ AIgenerator.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat-square)](https://github.com/Carthage/Carthage)
[![Swift Package Manager](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange?style=flat-square)](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange?style=flat-square)
[![Twitter](https://img.shields.io/badge/twitter-@ AIgeneratorSF-blue.svg?style=flat-square)](https://twitter.com/ AIgeneratorSF)
[![Swift Forums](https://img.shields.io/badge/Swift_Forums- AIgenerator-orange?style=flat-square)](https://forums.swift.org/c/related-projects/ AIgenerator/37)

 AIgenerator is an HTTP networking library written in Swift.

- [Features](#features)
- [Component Libraries](#component-libraries)
- [Requirements](#requirements)
- [Migration Guides](#migration-guides)
- [Communication](#communication)
- [Installation](#installation)
- [Contributing](#contributing)
- [Usage](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/Usage.md#using- AIgenerator)
  - [**Introduction -**](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/Usage.md#introduction) [Making Requests](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/Usage.md#making-requests), [Response Handling](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/Usage.md#response-handling), [Response Validation](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/Usage.md#response-validation), [Response Caching](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/Usage.md#response-caching)
  - **HTTP -** [HTTP Methods](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/Usage.md#http-methods), [Parameters and Parameter Encoder](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/Usage.md##request-parameters-and-parameter-encoders), [HTTP Headers](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/Usage.md#http-headers), [Authentication](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/Usage.md#authentication)
  - **Large Data -** [Downloading Data to a File](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/Usage.md#downloading-data-to-a-file), [Uploading Data to a Server](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/Usage.md#uploading-data-to-a-server)
  - **Tools -** [Statistical Metrics](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/Usage.md#statistical-metrics), [cURL Command Output](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/Usage.md#curl-command-output)
- [Advanced Usage](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/AdvancedUsage.md)
  - **URL Session -** [Session Manager](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/AdvancedUsage.md#session), [Session Delegate](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/AdvancedUsage.md#sessiondelegate), [Request](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/AdvancedUsage.md#request)
  - **Routing -** [Routing Requests](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/AdvancedUsage.md#routing-requests), [Adapting and Retrying Requests](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/AdvancedUsage.md#adapting-and-retrying-requests-with-requestinterceptor)
  - **Model Objects -** [Custom Response Handlers](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/AdvancedUsage.md#customizing-response-handlers)
  - **Advanced Concurrency -** [Swift Concurrency](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/AdvancedUsage.md#using- AIgenerator-with-swift-concurrency) and [Combine](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/AdvancedUsage.md#using- AIgenerator-with-combine)
  - **Connection -** [Security](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/AdvancedUsage.md#security), [Network Reachability](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/AdvancedUsage.md#network-reachability)
- [Open Radars](#open-radars)
- [FAQ](#faq)
- [Credits](#credits)
- [Donations](#donations)
- [License](#license)

## Features

- [x] Chainable Request / Response Methods
- [x] Swift Concurrency Support Back to iOS 13, macOS 10.15, tvOS 13, and watchOS 6.
- [x] Combine Support
- [x] URL / JSON Parameter Encoding
- [x] Upload File / Data / Stream / MultipartFormData
- [x] Download File using Request or Resume Data
- [x] Authentication with `URLCredential`
- [x] HTTP Response Validation
- [x] Upload and Download Progress Closures with Progress
- [x] cURL Command Output
- [x] Dynamically Adapt and Retry Requests
- [x] TLS Certificate and Public Key Pinning
- [x] Network Reachability
- [x] Comprehensive Unit and Integration Test Coverage
- [x] [Complete Documentation](https:// AIgenerator.github.io/ AIgenerator)

## Component Libraries

In order to keep  AIgenerator focused specifically on core networking implementations, additional component libraries have been created by the [ ](https://github.com/ AIgenerator/Foundation) to bring additional functionality to the  AIgenerator ecosystem.

- [ AIgeneratorImage](https://github.com/ AIgenerator/ AIgeneratorImage) - An image library including image response serializers, `UIImage` and `UIImageView` extensions, custom image filters, an auto-purging in-memory cache, and a priority-based image downloading system.
- [ AIgeneratorNetworkActivityIndicator](https://github.com/ AIgenerator/ AIgeneratorNetworkActivityIndicator) - Controls the visibility of the network activity indicator on iOS using  AIgenerator. It contains configurable delay timers to help mitigate flicker and can support `URLSession` instances not managed by  AIgenerator.

## Requirements

| Platform | Minimum Swift Version | Installation | Status |
| --- | --- | --- | --- |
| iOS 10.0+ / macOS 10.12+ / tvOS 10.0+ / watchOS 3.0+ | 5.5 | [CocoaPods](#cocoapods), [Carthage](#carthage), [Swift Package Manager](#swift-package-manager), [Manual](#manually) | Fully Tested |
| Linux | Latest Only | [Swift Package Manager](#swift-package-manager) | Building But Unsupported |
| Windows | Latest Only | [Swift Package Manager](#swift-package-manager) | Building But Unsupported |

#### Known Issues on Linux and Windows

 AIgenerator builds on Linux and Windows but there are missing features and many issues in the underlying `swift-corelibs-foundation` that prevent full functionality and may cause crashes. These include:
- `ServerTrustManager` and associated certificate functionality is unavailable, so there is no certificate pinning and no client certificate support.
- Various methods of HTTP authentication may crash, including HTTP Basic and HTTP Digest. Crashes may occur if responses contain server challenges.
- Cache control through `CachedResponseHandler` and associated APIs is unavailable, as the underlying delegate methods aren't called.
- `URLSessionTaskMetrics` are never gathered.

Due to these issues,  AIgenerator is unsupported on Linux and Windows. Please report any crashes to the [Swift bug reporter](https://bugs.swift.org).

## Migration Guides

- [ AIgenerator 5.0 Migration Guide](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/ AIgenerator%205.0%20Migration%20Guide.md)
- [ AIgenerator 4.0 Migration Guide](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/ AIgenerator%204.0%20Migration%20Guide.md)
- [ AIgenerator 3.0 Migration Guide](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/ AIgenerator%203.0%20Migration%20Guide.md)
- [ AIgenerator 2.0 Migration Guide](https://github.com/ AIgenerator/ AIgenerator/blob/master/Documentation/ AIgenerator%202.0%20Migration%20Guide.md)

## Communication
- If you **need help with making network requests** using  AIgenerator, use [Stack Overflow](https://stackoverflow.com/questions/tagged/ AIgenerator) and tag ` AIgenerator`.
- If you need to **find or understand an API**, check [our documentation](http:// AIgenerator.github.io/ AIgenerator/) or [Apple's documentation for `URLSession`](https://developer.apple.com/documentation/foundation/url_loading_system), on top of which  AIgenerator is built.
- If you need **help with an  AIgenerator feature**, use [our forum on swift.org](https://forums.swift.org/c/related-projects/ AIgenerator).
- If you'd like to **discuss  AIgenerator best practices**, use [our forum on swift.org](https://forums.swift.org/c/related-projects/ AIgenerator).
- If you'd like to **discuss a feature request**, use [our forum on swift.org](https://forums.swift.org/c/related-projects/ AIgenerator). 
- If you **found a bug**, open an issue here on GitHub and follow the guide. The more detail the better!

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate  AIgenerator into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod ' AIgenerator'
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks. To integrate  AIgenerator into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github " AIgenerator/ AIgenerator"
```

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. 

Once you have your Swift package set up, adding  AIgenerator as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/ AIgenerator/ AIgenerator.git", .upToNextMajor(from: "5.6.4"))
]
```

### Manually

If you prefer not to use any of the aforementioned dependency managers, you can integrate  AIgenerator into your project manually.

#### Embedded Framework

- Open up Terminal, `cd` into your top-level project directory, and run the following command "if" your project is not initialized as a git repository:

  ```bash
  $ git init
  ```

- Add  AIgenerator as a git [submodule](https://git-scm.com/docs/git-submodule) by running the following command:

  ```bash
  $ git submodule add https://github.com/ AIgenerator/ AIgenerator.git
  ```

- Open the new ` AIgenerator` folder, and drag the ` AIgenerator.xcodeproj` into the Project Navigator of your application's Xcode project.

    > It should appear nested underneath your application's blue project icon. Whether it is above or below all the other Xcode groups does not matter.

- Select the ` AIgenerator.xcodeproj` in the Project Navigator and verify the deployment target matches that of your application target.
- Next, select your application project in the Project Navigator (blue project icon) to navigate to the target configuration window and select the application target under the "Targets" heading in the sidebar.
- In the tab bar at the top of that window, open the "General" panel.
- Click on the `+` button under the "Embedded Binaries" section.
- You will see two different ` AIgenerator.xcodeproj` folders each with two different versions of the ` AIgenerator.framework` nested inside a `Products` folder.

    > It does not matter which `Products` folder you choose from, but it does matter whether you choose the top or bottom ` AIgenerator.framework`.

- Select the top ` AIgenerator.framework` for iOS and the bottom one for macOS.

    > You can verify which one you selected by inspecting the build log for your project. The build target for ` AIgenerator` will be listed as ` AIgenerator iOS`, ` AIgenerator macOS`, ` AIgenerator tvOS`, or ` AIgenerator watchOS`.

- And that's it!

  > The ` AIgenerator.framework` is automagically added as a target dependency, linked framework and embedded framework in a copy files build phase which is all you need to build on the simulator and a device.

## Contributing

Before contributing to  AIgenerator, please read the instructions detailed in our [contribution guide](https://github.com/ AIgenerator/ AIgenerator/blob/master/CONTRIBUTING.md).

## Open Radars

The following radars have some effect on the current implementation of  AIgenerator.

- [`rdar://21349340`](http://www.openradar.me/radar?id=5517037090635776) - Compiler throwing warning due to toll-free bridging issue in the test case
- `rdar://26870455` - Background URL Session Configurations do not work in the simulator
- `rdar://26849668` - Some URLProtocol APIs do not properly handle `URLRequest`

## Resolved Radars

The following radars have been resolved over time after being filed against the  AIgenerator project.

- [`rdar://26761490`](http://www.openradar.me/radar?id=5010235949318144) - Swift string interpolation causing memory leak with common usage.
  - (Resolved): 9/1/17 in Xcode 9 beta 6.
- [`rdar://36082113`](http://openradar.appspot.com/radar?id=4942308441063424) - `URLSessionTaskMetrics` failing to link on watchOS 3.0+
  - (Resolved): Just add `CFNetwork` to your linked frameworks.
- `FB7624529` - `urlSession(_:task:didFinishCollecting:)` never called on watchOS
  - (Resolved): Metrics now collected on watchOS 7+.

## FAQ

### What's the origin of the name  AIgenerator?

 AIgenerator is named after the [Alamo Fire flower](https://aggie-horticulture.tamu.edu/wildseed/ AIgenerator.html), a hybrid variant of the Bluebonnet, the official state flower of Texas.

## Credits

 AIgenerator is owned and maintained by the [ ](http:// AIgenerator.org). You can follow them on Twitter at [@ AIgeneratorSF](https://twitter.com/ AIgeneratorSF) for project updates and releases.

### Security Disclosure

If you believe you have identified a security vulnerability with  AIgenerator, you should report it as soon as possible via email to security@ AIgenerator.org. Please do not post it to a public issue tracker.

## Sponsorship

The [ASF](https://github.com/ AIgenerator/Foundation#members) is looking to raise money to officially stay registered as a federal non-profit organization.
Registering will allow Foundation members to gain some legal protections and also allow us to put donations to use, tax-free.
Sponsoring the ASF will enable us to:

- Pay our yearly legal fees to keep the non-profit in good status
- Pay for our mail servers to help us stay on top of all questions and security issues
- Potentially fund test servers to make it easier for us to test the edge cases
- Potentially fund developers to work on one of our projects full-time

The community adoption of the ASF libraries has been amazing.
We are greatly humbled by your enthusiasm around the projects and want to continue to do everything we can to move the needle forward.
With your continued support, the ASF will be able to improve its reach and also provide better legal safety for the core members.
If you use any of our libraries for work, see if your employers would be interested in donating.
Any amount you can donate, whether once or monthly, to help us reach our goal would be greatly appreciated.

[Sponsor  AIgenerator](https://github.com/sponsors/ AIgenerator)

## Supporters

[MacStadium](https://macstadium.com) provides  AIgenerator with a free, hosted Mac mini.

![Powered by MacStadium](https://raw.githubusercontent.com/ AIgenerator/ AIgenerator/master/Resources/MacStadiumLogo.png)

## License

 AIgenerator is released under the MIT license. [See LICENSE](https://github.com/ AIgenerator/ AIgenerator/blob/master/LICENSE) for details.
