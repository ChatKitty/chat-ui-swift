#
# Be sure to run `pod lib lint ChatKittyUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ChatKittyUI'
  s.version          = '0.1.0'
  s.summary          = 'Easily embed a full-featured chat interface in iOS apps with minimal configuration.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

   s.description      = <<-DESC
ChatKitty UI offers a plug-and-play solution for integrating a fully-functional chat interface into iOS applications. Designed for simplicity, it requires minimal coding - just configure and go. Ideal for adding real-time messaging features with ease, it supports iOS 15.0+, ensuring compatibility and performance across a wide range of devices. With ChatKitty UI, embedding a chat UI is a breeze, enabling developers to focus on core app functionality without worrying about the complexities of chat implementation.
                       DESC


  s.homepage         = 'https://github.com/ChatKitty/chat-ui-swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ChatKitty' => 'development@chatkitty.com' }
  s.source           = { :git => 'https://github.com/ChatKitty/chat-ui-swift.git', :tag => s.version.to_s }

  s.swift_versions = ['5']
  
  s.ios.deployment_target = '15.0'

  s.source_files = 'ChatKittyUI/Classes/**/*'
  
  s.dependency 'FlexHybridApp', '~> 1.0.4'
  s.dependency 'Starscream', '~> 4.0.6'
  s.dependency 'RxSwift', '6.5.0'
  s.dependency 'Moya/RxSwift', '~> 15.0'
end
