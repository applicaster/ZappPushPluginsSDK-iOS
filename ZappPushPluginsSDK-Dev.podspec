Pod::Spec.new do |s|
  s.name             = "ZappPushPluginsSDK"
  s.version          = '1.0.0'
  s.summary          = "ZappPushPluginsSDK"
  s.description      = <<-DESC
                        ZappPushPluginsSDK container.
                       DESC
  s.homepage         = "https://github.com/applicaster/ZappPushPluginsSDK-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "a.zchut@applicaster.com" }
  s.source           = { :git => "git@github.com:applicaster/ZappPushPluginsSDK-iOS.git", :tag => s.version.to_s }
  s.static_framework = true

  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins'

end
