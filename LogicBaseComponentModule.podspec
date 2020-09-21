#
# Be sure to run `pod lib lint LogicBaseComponentModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LogicBaseComponentModule'
  s.version          = '0.0.6'
  s.summary          = '业务基础组件'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
业务基础组件，主要用于对抽象化组件结合业务特点而进行的实例化，属于快速搭建架构的部分
                       DESC

  s.homepage         = 'https://github.com/jiaojiaozhe/LogicBaseComponentModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jiaojiaozhe' => 'bluebiao@163.com' }
  s.source           = { :git => 'https://github.com/jiaojiaozhe/LogicBaseComponentModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'LogicBaseComponentModule/Classes/**/*'
  
   s.resource_bundles = {
     'LogicBaseComponentModule' => [
        'LogicBaseComponentModule/Assets/**/*.png',
        'LogicBaseComponentModule/Assets/**/*.xib'
        ]
   }
  
  s.dependency 'XAbstractionLibrary-UICommon'
  s.dependency 'Masonry', '~> 1.1.0'
  s.dependency 'SDWebImage'
  s.dependency 'lottie-ios', '~> 2.5.3'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
