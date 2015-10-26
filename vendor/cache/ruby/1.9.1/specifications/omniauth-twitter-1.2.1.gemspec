# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "omniauth-twitter"
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Arun Agrawal"]
  s.date = "2015-07-29"
  s.description = "OmniAuth strategy for Twitter"
  s.email = ["arunagw@gmail.com"]
  s.homepage = "https://github.com/arunagw/omniauth-twitter"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "OmniAuth strategy for Twitter"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, ["~> 1.3"])
      s.add_runtime_dependency(%q<omniauth-oauth>, ["~> 1.1"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
    else
      s.add_dependency(%q<json>, ["~> 1.3"])
      s.add_dependency(%q<omniauth-oauth>, ["~> 1.1"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<json>, ["~> 1.3"])
    s.add_dependency(%q<omniauth-oauth>, ["~> 1.1"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
  end
end
