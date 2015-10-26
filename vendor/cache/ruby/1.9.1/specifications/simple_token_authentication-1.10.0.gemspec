# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "simple_token_authentication"
  s.version = "1.10.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Gonzalo Bulnes Guilpain"]
  s.date = "2015-06-03"
  s.email = ["gon.bulnes@gmail.com"]
  s.homepage = "https://github.com/gonzalo-bulnes/simple_token_authentication"
  s.licenses = ["GPLv3"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Simple (but safe) token authentication for Rails apps or API with Devise."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<actionmailer>, ["< 5", ">= 3.2.6"])
      s.add_runtime_dependency(%q<actionpack>, ["< 5", ">= 3.2.6"])
      s.add_runtime_dependency(%q<devise>, ["~> 3.2"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<inch>, ["~> 0.4"])
      s.add_development_dependency(%q<activerecord>, ["< 5", ">= 3.2.6"])
      s.add_development_dependency(%q<mongoid>, ["< 5", ">= 3.1.0"])
    else
      s.add_dependency(%q<actionmailer>, ["< 5", ">= 3.2.6"])
      s.add_dependency(%q<actionpack>, ["< 5", ">= 3.2.6"])
      s.add_dependency(%q<devise>, ["~> 3.2"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<inch>, ["~> 0.4"])
      s.add_dependency(%q<activerecord>, ["< 5", ">= 3.2.6"])
      s.add_dependency(%q<mongoid>, ["< 5", ">= 3.1.0"])
    end
  else
    s.add_dependency(%q<actionmailer>, ["< 5", ">= 3.2.6"])
    s.add_dependency(%q<actionpack>, ["< 5", ">= 3.2.6"])
    s.add_dependency(%q<devise>, ["~> 3.2"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<inch>, ["~> 0.4"])
    s.add_dependency(%q<activerecord>, ["< 5", ">= 3.2.6"])
    s.add_dependency(%q<mongoid>, ["< 5", ">= 3.1.0"])
  end
end
