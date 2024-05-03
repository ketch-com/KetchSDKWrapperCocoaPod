Pod::Spec.new do |s|
  s.name             = 'KetchSDKWrapperCocoaPod'
  s.version          = '0.3.0'
  s.summary          = 'An example of wrapping the Ketch iOS SDK within a CocoaPods package'
  s.swift_versions   = '4.0'

  s.description      = <<-DESC
  An example of wrapping the Ketch iOS SDK within a CocoaPods package. Also includes an example application to demonstrate functionality.
                       DESC

  s.homepage         = 'https://github.com/ketch-com/KetchSDKWrapperCocoaPod'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Justin Boileau' => 'justin.boileau@ketch.com' }
  s.source           = { :git => 'https://github.com/ketch-com/KetchSDKWrapperCocoaPod.git', :tag => s.version.to_s }

  s.ios.deployment_target = '15.0'

  s.source_files = 'KetchSDKWrapperCocoaPod/Classes/**/*'

  # Add the Ketch iOS SDK as a dependency
  s.dependency 'KetchSDK', '4.0.3'
end
