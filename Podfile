# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'
source 'git@github.com:applicaster/CocoaPods.git'
source 'git@github.com:applicaster/CocoaPods-Private.git'

target 'ZappPushPluginsSDK' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for ZappPushPluginsSDK
  pod 'ZappPlugins', :git => 'git@github.com:applicaster/ZappPlugins-iOS.git', :tag => '11.0.0'

  target 'ZappPushPluginsSDKTests' do
    # Pods for testing
  end

  post_install do |installer|
      installer.pods_project.targets.each do |target|
          target.build_configurations.each do |config|
              # This works around a unit test issue introduced in Xcode 10.
              # We only apply it to the Debug configuration to avoid bloating the app size
              if config.name == "Debug" && defined?(target.product_type) && target.product_type == "com.apple.product-type.framework"
                  config.build_settings['ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES'] = "YES"
              end
          end
      end
  end
end
