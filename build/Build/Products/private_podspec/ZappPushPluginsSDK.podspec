Pod::Spec.new do |s|
  s.name  = "ZappPushPluginsSDK"
  s.version = '5.0.0'
  s.platform  = :ios, '9.0'
  s.summary = "ZappPushPluginsSDK"
  s.description = "ZappPushPluginsSDK container."
  s.homepage  = "https://github.com/applicaster/ZappPushPluginsSDK-iOS"
  s.license = 'CMPS'
  s.author = { "cmps" => "Applicaster LTD." }
  s.source  = { :git => "git@github.com:applicaster/ZappPushPluginsSDK-iOS.git", :tag => s.version.to_s }
  s.requires_arc = true
  s.static_framework = true

  s.source_files  = 'ZappPushPluginsSDK/**/*.{h,m,swift}'
  s.xcconfig =  { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                'ENABLE_BITCODE' => 'YES',
                'SWIFT_VERSION' => '4.1',
                'OTHER_CFLAGS'  => '-fembed-bitcode'
              }

  s.dependency 'ZappPlugins'
  s.dependency 'Toaster'
end
