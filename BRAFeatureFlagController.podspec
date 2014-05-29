#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = "BRAFeatureFlagController"
  s.version          = "0.1.0"
  s.summary          = "Feature flags for iOS applications."
  s.description      = <<-DESC
                       Feature flags are simple booleans that allow you to enable or disable
                       features across different parts of your userbase. BRAFeatureFlagController
                       makes use of a clean interface to help you manage what your users see when 
                       they use your application.
                       DESC
  s.homepage         = "http://EXAMPLE/NAME"
  s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Bruno Abrantes" => "inf0rmer.realm@gmail.com" }
  s.source           = { :git => "http://github.com/inf0rmer/BRAFeatureFlagController.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/inf0rmer'

  # s.platform     = :ios, '5.0'
  # s.ios.deployment_target = '5.0'
  # s.osx.deployment_target = '10.7'
  s.requires_arc = true

  s.source_files = 'Classes/**/*.{h,m}'
  s.resources = 'Assets/*.png'

  s.ios.exclude_files = 'Classes/osx'
  s.osx.exclude_files = 'Classes/ios'
  s.public_header_files = 'Classes/**/*.h'
  
  s.dependency 'ObjectiveSugar'
end
