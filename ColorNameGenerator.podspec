Pod::Spec.new do |spec|
  spec.name         = "ColorNameGenerator"
  spec.version = "1.0.4"
  spec.summary      = "Find Color name using the dependency"
  spec.description  = <<-DESC
          Find Color name using the dependency.
        DESC
  spec.homepage     = "https://github.com/ztpr0035/ColorNameGenerator"
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author             = { "Zehntech" => "piyush.zehntech@gmail.com" }
  spec.source       = { :git => "https://github.com/ztpr0035/ColorNameGenerator.git", :tag => "#{spec.version}" }
  spec.ios.deployment_target = '15.0'
  spec.frameworks = 'UIKit', 'Foundation'
  spec.vendored_frameworks = 'ColorNameGenerator.xcframework'
  spec.swift_version = '5.0'
  spec.script_phase = {
  :name => 'Sign XCFramework',
  :script => <<-SCRIPT
    codesign --force --deep --sign - "${PODS_ROOT}/ColorNameGenerator/ColorNameGenerator.xcframework/ios-arm64/ColorNameGenerator.framework"
    codesign --force --deep --sign - "${PODS_ROOT}/ColorNameGenerator/ColorNameGenerator.xcframework/ios-arm64_x86_64-simulator/ColorNameGenerator.framework"
  SCRIPT
}
end
