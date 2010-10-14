# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{capistrano_kvm_git}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Philip"]
  s.date = %q{2010-10-14}
  s.description = %q{Capistrano KVM Git}
  s.email = %q{}
  s.extra_rdoc_files = ["README", "lib/capistrano/recipes/deploy/scm/kvm_git.rb"]
  s.files = ["Manifest", "README", "Rakefile", "lib/capistrano/recipes/deploy/scm/kvm_git.rb", "capistrano_kvm_git.gemspec"]
  s.homepage = %q{http://github.com/sloanwu/capistrano_kvm_git.git}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Capistrano_kvm_git", "--main", "README"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{capistrano_kvm_git}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Capistrano KVM Git}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
