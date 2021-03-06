#
# Be sure to run `pod lib lint EPSDividerLine.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "EPSDividerLine"
  s.version          = "0.1.0"
  s.summary          = "A UIView subclass which acts as a dividing line."
  s.homepage         = "https://github.com/ElectricPeelSoftware/EPSDividerLine"
  s.license          = 'MIT'
  s.author           = { "Peter Stuart" => "peter@electricpeelsoftware.com" }
  s.source           = { :git => "https://github.com/ElectricPeelSoftware/EPSDividerLine.git", :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.frameworks = 'UIKit'
end
