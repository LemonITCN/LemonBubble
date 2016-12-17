Pod::Spec.new do |s|
  s.name             = "LemonBubble"
  s.version          = "1.0.0"
  s.summary          = "A very NB HUD view ! instead of MBProgressHUD and SVProgressHUD"
  s.description      = <<-DESC
                       A very NB HUD view ! instead of MBProgressHUD and SVProgressHUD.
                       DESC
  s.homepage         = "https://github.com/1em0nsOft/LemonBubble"
  # s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "1em0nsOft-Liuri" => "liuri@lemonsoft.net" }
  s.source           = { :git => "https://github.com/1em0nsOft/LemonBubble-objc.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://www.lemonsoft.net'

  s.platform     = :ios, '8.0'
  # s.ios.deployment_target = '5.0'
  # s.osx.deployment_target = '10.7'
  s.requires_arc = true

  s.source_files = 'LemonBubble/LemonBubble/*'
  # s.resources = 'Assets'

  # s.ios.exclude_files = 'Classes/osx'
  # s.osx.exclude_files = 'Classes/ios'
  # s.public_header_files = 'Classes/**/*.h'
  s.frameworks = 'Foundation', 'CoreGraphics', 'UIKit'

end