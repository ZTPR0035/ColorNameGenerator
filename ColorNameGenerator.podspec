Pod::Spec.new do |spec|
  spec.name         = "ColorNameGenerator"
<<<<<<< HEAD
  spec.version = "v1.0.4"
=======
  spec.version = "1.0.5"
>>>>>>> 2decc15357a59086dfdb2b8341af5a71543ee27a
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
end
