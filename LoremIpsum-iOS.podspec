#
# Be sure to run `pod lib lint LoremIpsum-iOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = "LoremIpsum-iOS"
s.version          = "0.1.0"
s.summary          = "Lorem Ipsum generator for iOS."


s.description      = <<-DESC
Lorem Ipsum is a lightweight generator for iOS.
DESC

s.homepage         = "https://github.com/mjeffers1/LoremIpsum-iOS"
s.license          = 'MIT'
s.author           = { "Martin Jeffers" => "martin.jeffers1@gmail.com" }
s.source           = { :git => "https://github.com/mjeffers1/LoremIpsum-iOS.git", :tag => s.version.to_s }
s.social_media_url = 'https://twitter.com/MartinJeffers1'

s.ios.deployment_target = '8.0'
s.requires_arc  = true

s.source_files = 'LoremIpsum-iOS/Classes/**/*'

end