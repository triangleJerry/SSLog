Pod::Spec.new do |s|
  s.name             = 'SSLog'
  s.version          = '1.0.4'
  s.summary          = 'SSLog is Simple Swift Log library.'
  s.swift_version = '5.7'
  s.homepage         = 'https://github.com/dortus47'
  s.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
      Licensed under the Apache License, Version 2.0 (the "License");
      you may not use this file except in compliance with the License.
      You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

      Unless required by applicable law or agreed to in writing, software
      distributed under the License is distributed on an "AS IS" BASIS,
      WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
      See the License for the specific language governing permissions and
      limitations under the License.
      LICENSE
    }
  s.author           = { 'dortus47' => 'dortus47@naver.com' }
  s.source           = { :git => 'https://github.com/dortus47/SSLog.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.source_files = 'Sources/**/*.swift'
end
