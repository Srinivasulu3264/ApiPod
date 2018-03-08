#
#  Be sure to run `pod spec lint ApiPod.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "ApiPod"

  s.version      = "0.0.4"

  s.summary      = "it will call web services"

  s.description  = " it will helps u to call get and post webservices using url session "

  s.homepage     = "http://vmokshagroup.com"

  s.license      = "MIT"

  s.author       = { "Srinivasulu3264" => "srinivasulu.budharapu@vmokshagroup.com" }


  s.platform     = :ios, "9.0"

  s.ios.deployment_target = "11.0"

  #

  s.source       = { :git => "https://github.com/Srinivasulu3264/ApiPod.git", :tag => "0.0.4" }


  s.source_files  = "ApiPod", "ApiPod/**/*.{h,m,swift}"

  s.resources = "ApiPod/**/*.{xcassets,png,jpeg,jpg,storyboard,xib}"

#  s.resource_bundle = {
#      'ApiPod' => 
#        'ApiPod/**/*.{xcassets,png,jpeg,jpg,storyboard,xib}'
#    }


  s.framework = "UIKit"

  s.requires_arc = true

 `echo "3.2" > .swift-version`
end
