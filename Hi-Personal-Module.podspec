#
# Be sure to run `pod lib lint Hi-Personal-Module.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Hi-Personal-Module'
  s.version          = '0.1.0'
  s.summary          = 'A short description of Hi-Personal-Module.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/linlei/Hi-Personal-Module'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'linlei' => 'stoneuou@163.com' }
  s.source           = { :git => 'https://github.com/linlei/Hi-Personal-Module.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'Hi-Personal-Module/Classes/**/*.{h,m,swift}'
  s.resources = ['Hi-Personal-Module/**/*.xcassets']
  
  s.dependency 'Hi-Network-Module'
  s.dependency 'Hi-Helper-Module'
  s.dependency 'Hi-Router-Module'
  s.dependency 'Hi-Kit-Module'
  
  s.dependency 'SnapKit'
  s.dependency 'HandyJSON'
  s.dependency 'Alamofire'
  
  # s.resource_bundles = {
  #   'Hi-Personal-Module' => ['Hi-Personal-Module/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
