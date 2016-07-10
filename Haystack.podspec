Pod::Spec.new do |s|

  s.name         = "Haystack"
  s.version      = "0.9.6"
  s.summary      = "A collection of simple iOS classes and categories that fit in almost every project."

  s.description  = <<-DESC
                   Haystack SDK contains a collection of simple iOS classes and small libraries that fit in almost every project. Most of these classes are not large or structured enough to fit in a special library or framework, but are regurarely needed throughout the most projects you are working on.
                   DESC

  s.homepage     = "http://github.com/Legoless/Haystack"
  s.license      = 'MIT'
  s.author       = { "Dal Rupnik" => "legoless@gmail.com" }
  s.platform     = :ios, '8.0'
  s.source       = { :git => "https://github.com/Legoless/Haystack.git", :tag => s.version }

  s.frameworks   = 'CoreText' 
  s.source_files = 'SDK/Categories/**/*.{h,m}', 'SDK/Classes/**/*.{h,m}', 'SDK/Haystack.h'
  s.requires_arc = true
end
