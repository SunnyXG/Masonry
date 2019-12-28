Pod::Spec.new do |s|
  s.name     = 'MasonryFork'
  s.version  = '1.2.0'
  s.license  = 'MIT'
  s.summary  = 'This is fork from Masonry/warpling and Masonry/SnapKit, it fixed the issues(the many warnings when use xcode11)'
  s.homepage = 'https://github.com/SunnyXG/Masonry'
  s.author   = { 'Jonas Budelmann' => 'jonas.budelmann@gmail.com' }
  s.social_media_url = ""

  s.source   = { :git => 'https://github.com/SunnyXG/Masonry.git', :tag => "v#{s.version}" }

  s.description = %{
    Masonry is a light-weight layout framework which wraps AutoLayout with a nicer syntax.
	Masonry has its own layout DSL which provides a chainable way of describing your
	NSLayoutConstraints which results in layout code which is more concise and readable.
    Masonry supports iOS and Mac OSX.

    When the Masonry run at xcode11, the project has more warnings, so create this to fixed the issues.
  }

  pch_AF = <<-EOS
    #ifndef TARGET_OS_IOS
        #define TARGET_OS_IOS TARGET_OS_IPHONE
    #endif
    #ifndef TARGET_OS_TV
        #define TARGET_OS_TV 0
    #endif
  EOS

  s.source_files = 'Masonry/*.{h,m}'

  s.ios.frameworks = 'Foundation', 'UIKit'
  s.tvos.frameworks = 'Foundation', 'UIKit'
  s.osx.frameworks = 'Foundation', 'AppKit'

  s.ios.deployment_target = '6.0' # minimum SDK with autolayout
  s.osx.deployment_target = '10.7' # minimum SDK with autolayout
  s.tvos.deployment_target = '9.0' # minimum SDK with autolayout
  s.requires_arc = true
end
