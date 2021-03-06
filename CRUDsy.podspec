#
# Be sure to run `pod lib lint CRUDsy.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "CRUDsy"
  s.version          = "0.1.0"
  s.summary          = "A short description of CRUDsy."
  s.description      = <<-DESC
                       An optional longer description of CRUDsy

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/<GITHUB_USERNAME>/CRUDsy"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "vlad gorbenko" => "mojidabckuu.22.06.92@gmail.com" }
  s.source           = { :git => "https://github.com/<GITHUB_USERNAME>/CRUDsy.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'CRUDsy' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
    s.dependency 'Mantle', '2.0.2'
    s.dependency 'AFNetworking', '~> 2.5.4'
    s.subspec 'CoreData' do |ss|
        ss.dependency 'MTLManagedObjectAdapter'
        ss.dependency 'MagicalRecord', '~> 2.3'
    end

end
