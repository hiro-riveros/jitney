# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "zeus"
  s.version = "0.15.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Burke Libbey"]
  s.date = "2015-01-21"
  s.description = "Boot any rails app in under a second"
  s.email = ["burke@libbey.me"]
  s.executables = ["zeus"]
  s.extensions = ["ext/inotify-wrapper/extconf.rb"]
  s.files = ["bin/zeus", "ext/inotify-wrapper/extconf.rb"]
  s.homepage = "http://zeus.is"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Zeus is an intelligent preloader for ruby applications. It allows normal development tasks to be run in a fraction of a second."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<method_source>, [">= 0.6.7"])
      s.add_development_dependency(%q<bundler>, ["~> 1.6"])
    else
      s.add_dependency(%q<method_source>, [">= 0.6.7"])
      s.add_dependency(%q<bundler>, ["~> 1.6"])
    end
  else
    s.add_dependency(%q<method_source>, [">= 0.6.7"])
    s.add_dependency(%q<bundler>, ["~> 1.6"])
  end
end
