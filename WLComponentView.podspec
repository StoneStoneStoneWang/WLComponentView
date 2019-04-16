Pod::Spec.new do |spec|
  
  spec.name         = "WLComponentView"
  spec.version      = "0.0.3"
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
  
  spec.subspec 'TextFeild' do |tf|
    tf.subspec 'Setting' do |setting|
      setting.source_files = "Code/TF/Setting/*.{swift}"
    end
    tf.subspec 'Base' do |base|
      base.source_files = "Code/TF/Base/*.{swift}"
      base.dependency 'WLToolsKit/WLThen'
      base.dependency 'WLComponentView/TextFeild/Setting'
    end
    
    tf.subspec 'LeftTitle' do |leftTitle|
      leftTitle.source_files = "Code/TF/LeftTitle/*.{swift}"
      leftTitle.dependency 'WLComponentView/TextFeild/Base'
      leftTitle.dependency 'WLToolsKit/WLColor'
    end
    tf.subspec 'LeftImage' do |leftImage|
      leftImage.source_files = "Code/TF/LeftImg/*.{swift}"
      leftImage.dependency 'WLComponentView/TextFeild/Base'
    end
    tf.subspec 'NickName' do |nickName|
      nickName.source_files = "Code/TF/NickName/*.{swift}"
      nickName.dependency 'WLComponentView/TextFeild/Base'
    end
    
    tf.subspec 'Password' do |password|
      password.source_files = "Code/TF/Password/*.{swift}"
      password.dependency 'WLComponentView/TextFeild/LeftImage'
      password.dependency 'WLComponentView/TextFeild/LeftTitle'
    end

    tf.subspec 'Vcode' do |vcode|
      vcode.source_files = "Code/TF/Vcode/*.{swift}"
      vcode.dependency 'WLComponentView/TextFeild/LeftImage'
      vcode.dependency 'WLComponentView/TextFeild/LeftTitle'
    end
  end
  
end


