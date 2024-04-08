# ChatKittyUI

[![Version](https://img.shields.io/cocoapods/v/ChatKittyUI.svg?style=flat)](https://cocoapods.org/pods/ChatKittyUI)
[![License](https://img.shields.io/cocoapods/l/ChatKittyUI.svg?style=flat)](https://cocoapods.org/pods/ChatKittyUI)
[![Platform](https://img.shields.io/cocoapods/p/ChatKittyUI.svg?style=flat)](https://cocoapods.org/pods/ChatKittyUI)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

ChatKittyUI is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ChatKittyUI'
```

```bash
pod install
```

## Usage

```swift
    let connectionApi = ConnectionApi(apiKey: "YOUR_API_KEY") // Optional to use API Key 
    let configuration = ChatUIConfiguration(widgetId: "YOUR_WIDGET_ID",
                                            username: "YOUR_USERNAME",
                                            connectionApi: connectionApi,
                                            theme: .light)
    
    let components = ChatUIComponents(
        onMounted: { context in
            print("Chat UI mounted with context:", context)
        },
        onHeaderSelected: { channel in
            print("Header selected for channel:", channel)
        },
        onMenuActionSelected: { action in
            print("Menu action selected:", action)
        }
    )
    
    let view = ChatUIView(configuration: configuration, components: components)
                                                
```
Replace `YOUR_API_KEY`, `YOUR_WIDGET_ID`, and `YOUR_USERNAME` with your actual API key, widget ID, and username.

## Customization
ChatKittyUI supports extensive customization to fit the look and feel of your app. You can customize themes, fonts, colors, and many other aspects of the chat UI. For detailed customization options, refer to the documentation.

## Contributing
We welcome contributions to ChatKittyUI! If you have suggestions or issues, please file them via GitHub issues. If you'd like to contribute code, please submit a pull request.

## License

ChatKittyUI is available under the MIT license. See the LICENSE file for more info.
