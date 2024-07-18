# coding: utf-8

Pod::Spec.new do |s|
  s.name         = "GrowingAutoTrackKit"
  s.version      = "2.10.2"
  s.summary      = "GrowingIO-SDK-GrowingAutoTrackKit"

  s.description  = <<-DESC
                   This Pod contains GrowingIO SDK -- GrowingAutoTrackKit. For more informations, please read https://docs.growingio.com/v3 (in Chinese).
                   DESC

  s.homepage     = "https://www.growingio.com/"
  s.license = { type: 'MIT', text: <<-LICENSE
Copyright (c) 2015-2021 GrowingIO <support@growingio.com>
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
                       LICENSE
                   }
  s.authors      = {
                     'GrowingIO' => 'support@growingio.com'
                   }
  s.platform     = :ios
  s.ios.deployment_target = "8.0"

  s.source       = { :http => "https://assets.growingio.com/sdk/ios/GrowingIO-iOS-AutoTrackKit-#{s.version.to_s}.zip" }  
  s.static_framework = true
  s.requires_arc = true
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  s.preserve_paths = 'GrowingIO-iOS-AutoTrackKit/ReleaseNote.txt', 'GrowingIO-iOS-AutoTrackKit/VERSION'

  s.dependency 'GrowingCoreKit', s.version.to_s
  s.frameworks = 'Foundation' , 'WebKit'
  s.vendored_frameworks = 'GrowingIO-iOS-AutoTrackKit/*.framework'
end
