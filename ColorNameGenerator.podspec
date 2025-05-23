Pod::Spec.new do |spec|
  spec.name         = "ColorNameGenerator"
  spec.version = "1.1.4"
  spec.summary      = "Find Color name using the dependency"
  spec.description  = <<-DESC
          Find Color name using the dependency.
        DESC
  spec.homepage     = "https://github.com/axeldeploy/uptick-ios"
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author             = { "Zehntech" => "piyush.zehntech@gmail.com" }
  spec.source       = { :git => "https://github.com/ztpr0035/ColorNameGenerator.git", :tag => "v#{spec.version}" }
  spec.ios.deployment_target = '15.0'
  spec.frameworks = 'UIKit', 'Foundation'
  spec.vendored_frameworks = 'ColorNameGenerator.xcframework'
  spec.swift_version = '5.0'
end


