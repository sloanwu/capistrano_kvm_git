require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('capistrano_kvm_git', '1.0.0') do |p|
  p.description    = "Capistrano KVM Git"
  p.url            = "http://github.com/sloanwu/capistrano_kvm_git.git"
  p.author         = "Philip"
  p.email          = ""
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
