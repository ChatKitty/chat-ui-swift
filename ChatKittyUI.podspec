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
  s.summary          = 'A short description of ChatKittyUI.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/ChatKitty/chat-ui-swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ChatKitty' => 'development@chatkitty.com' }
  s.source           = { :git => 'git@github.com:ChatKitty/chat-ui-swift.git', :tag => s.version.to_s }

  s.ios.deployment_target = '15.0'

  s.source_files = 'ChatKittyUI/Classes/**/*'
  
  s.dependency 'FlexHybridApp', '~> 1.0.4'
end
