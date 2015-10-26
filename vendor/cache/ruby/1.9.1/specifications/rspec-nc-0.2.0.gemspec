# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rspec-nc"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Odin Dutton"]
  s.date = "2014-09-10"
  s.description = "https://github.com/twe4ked/rspec-nc"
  s.email = ["odindutton@gmail.com"]
  s.homepage = "https://github.com/twe4ked/rspec-nc"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "RSpec formatter for Mountain Lion's Notification Center"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<terminal-notifier>, [">= 1.4"])
      s.add_runtime_dependency(%q<rspec>, [">= 2.9"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<wwtd>, [">= 0"])
    else
      s.add_dependency(%q<terminal-notifier>, [">= 1.4"])
      s.add_dependency(%q<rspec>, [">= 2.9"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<wwtd>, [">= 0"])
    end
  else
    s.add_dependency(%q<terminal-notifier>, [">= 1.4"])
    s.add_dependency(%q<rspec>, [">= 2.9"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<wwtd>, [">= 0"])
  end
end
