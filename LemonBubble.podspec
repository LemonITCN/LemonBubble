Pod::Spec.new do |s|
  s.name             = "LemonBubble"
  s.version          = "1.0.1"
  s.summary          = "A very NB HUD view ! instead of MBProgressHUD and SVProgressHUD"
  s.description      = <<-DESC
                       A very NB HUD view ! instead of MBProgressHUD and SVProgressHUD.
                       DESC
  s.homepage         = "https://github.com/1em0nsOft/LemonBubble"
  s.license          = 'MIT'
  s.author           = { "1em0nsOft-Liuri" => "liuri@lemonsoft.net" }
  s.source           = { :git => "https://github.com/1em0nsOft/LemonBubble.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://www.lemonsoft.net'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'LemonBubble/LemonBubble/*'
  s.frameworks = 'Foundation', 'CoreGraphics', 'UIKit'

end