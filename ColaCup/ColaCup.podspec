# pod lib lint --verbose --allow-warnings ColaCup.podspec
# pod trunk push --verbose --allow-warnings ColaCup.podspec

Pod::Spec.new do |s|
  
  s.name             = 'ColaCup'
  
  s.version          = '3.0.0-beta.1'
  
  s.summary          = '🥤 A tool for viewing logs. Use with RaLog.'
  
  s.description      = '🥤 A tool for viewing logs. Use with RaLog.'
  
  s.homepage         = 'https://github.com/rakuyoMo/ColaCup'
  
  s.license          = 'MIT'
  
  s.author           = { 'Rakuyo' => 'rakuyo.mo@gmail.com' }
  
  s.source           = { :git => 'https://github.com/rakuyoMo/ColaCup.git', :tag => s.version.to_s }
  
  s.requires_arc     = true
  
  s.platform         = :ios, '10.0'
  
  s.swift_version    = '5.0'
  
  s.static_framework = true
  
  s.module_name      = 'ColaCup'
  
  s.source_files     = 'ColaCup/ColaCup/Core/*/*', # Global,ColaCup,Filter,Details
                       'ColaCup/ColaCup/Core/*/*/*' # Filter/Model
  
  s.resource_bundle = {
      'ColaCupBundle' => [ 'ColaCup/ColaCup/Other/*.xcassets' ]
  }
  
  s.dependency 'RaLog'
  s.dependency 'JSONPreview'
  
end
