#
# Be sure to run `pod lib lint TWFoundation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TWFoundation'
  s.version          = '0.0.3'
  s.summary          = 'TWFoundation.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Foundation tool.'

  s.homepage         = 'https://github.com/tanwang11/TWFoundation'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tanwang11' => 'aihy@linrunwc.com' }
  s.source           = { :git => 'https://github.com/tanwang11/TWFoundation.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'TWFoundation/Classes/TWFoundation.h'
  
  # s.resource_bundles = {
  #   'TWFoundation' => ['TWFoundation/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.frameworks = 'UIKit', 'Foundation', 'CoreText'
  
  
  s.subspec 'NSArray' do |ss|
      # 需要引入的其他文件的的 .h 文件
      ss.dependency  'TWFoundation/NSObject'
      ss.dependency  'TWFoundation/Prefix'
      ss.source_files = 'TWFoundation/Classes/NSArray/*.{h,m}'
  end
  
  
  s.subspec 'TWAssistant' do |ss|
      # 需要引入的其他文件的的 .h 文件
      ss.dependency  'TWFoundation/Prefix'
      ss.source_files = 'TWFoundation/Classes/TWAssistant/*.{h,m}'
  end
  
  
  s.subspec 'NSData' do |ss|
      ss.source_files = 'TWFoundation/Classes/NSData/*.{h,m}'
  end
  
  
  s.subspec 'NSDate' do |ss|
      # 需要引入的其他文件的的 .h 文件
      ss.dependency  'TWFoundation/NSString'
      ss.source_files = 'TWFoundation/Classes/NSDate/*.{h,m}'
  end
  
  
  s.subspec 'NSDecimalNumber' do |ss|
      # 需要引入的其他文件的的 .h 文件
      ss.dependency  'TWFoundation/NSObject'
      ss.source_files = 'TWFoundation/Classes/NSDecimalNumber/*.{h,m}'
  end
  
  
  s.subspec 'NSDictionary' do |ss|
      # 需要引入的其他文件的的 .h 文件
      ss.dependency  'TWFoundation/NSObject'
      ss.dependency  'TWFoundation/Prefix'
      ss.source_files = 'TWFoundation/Classes/NSDictionary/*.{h,m}'
  end
  
  
  s.subspec 'NSFileManager' do |ss|
      ss.source_files = 'TWFoundation/Classes/NSFileManager/*.{h,m}'
  end
  
  
  s.subspec 'NSObject' do |ss|
      ss.source_files = 'TWFoundation/Classes/NSObject/*.{h,m}'
  end
  
  
  s.subspec 'NSString' do |ss|
      # 需要引入的其他文件的的 .h 文件
      ss.dependency  'TWFoundation/NSObject'
      ss.dependency  'TWFoundation/Prefix'
      
      ss.source_files = 'TWFoundation/Classes/NSString/*.{h,m}'
  end
  
  
  s.subspec 'Prefix' do |ss|
      ss.source_files = 'TWFoundation/Classes/Prefix/*.{h,m}'
  end
  
  
  
  
end
