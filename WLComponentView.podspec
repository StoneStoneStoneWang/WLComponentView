Pod::Spec.new do |spec|
  
  spec.name         = "WLComponentView"
  spec.version      = "0.0.1"
  spec.summary      = "A Lib For view."
  spec.description  = <<-DESC
  文本框的工具类
  DESC
  
  spec.homepage     = "https://github.com/StoneStoneStoneWang/WLComponentView"
  spec.license      = { :type => "MIT", :file => "LICENSE.md" }
  spec.author             = { "StoneStoneStoneWang" => "yuanxingfu1314@163.com" }
  spec.platform     = :ios, "9.0"
  spec.ios.deployment_target = "9.0"
  
  spec.swift_version = '5.0'
  
  spec.frameworks = 'UIKit', 'Foundation'
  
  spec.source = { :git => "https://github.com/StoneStoneStoneWang/WLComponentView.git", :tag => "#{spec.version}" }
  
  spec.subspec 'Picker' do |picker|
    
    picker.subspec 'DatePicker' do |datePicker|
      
      datePicker.source_files = "Code/Picker/DatePicker/*.{swift}"
    end
  end
  
  
  
end


