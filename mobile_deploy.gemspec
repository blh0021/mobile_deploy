Gem::Specification.new do |s|
  s.name        = 'mobile_deploy'
  s.version     = '0.0.1'
  s.date        = Time.now.strftime("%Y-%m-%d")
  s.summary     = "Mobile Application Deployment Gem"
  s.description = "mobile_deploy is a gem that allows you to deploy your application to multiple connected devices"
  s.authors     = ["Ben Harrington"]
  s.email       = 'ben@harringtonweb.com'
  s.homepage    = 'https://github.com/blh0021/mobile_deploy'
  s.license     = 'MIT'

  s.files       = ["lib/IOSDeploy.rb", "lib/AndroidDeploy.rb", "bin/deploy_ios", "bin/deploy_android"]
  s.executables << 'deploy_ios' 
  s.executables << 'deploy_android' 
  s.require_paths = ["lib"]
end
