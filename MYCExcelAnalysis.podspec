
Pod::Spec.new do |s|

  s.name         = "MYCExcelAnalysis"
  s.version      = "0.0.1"
  s.summary      = "excel file analysis tool"
  s.homepage     = "https://www.jianshu.com/p/1d605ef252f9"
  s.license      = "MIT"
  s.author             = { "马雨辰" => "myc@mayuchen.com" }
  s.source       = { :git => "https://github.com/coderMYC/MYCExcelAnalysis.git", :tag => "#{s.version}" }
  s.source_files  = "MYCExcelAnalysis"
  s.ios.deployment_target = "8.0"
  s.dependency "SSZipArchive"
end


