# -*- encoding: utf-8 -*-
# stub: barometer 0.9.7 ruby lib

Gem::Specification.new do |s|
  s.name = "barometer"
  s.version = "0.9.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Mark Gangl"]
  s.date = "2014-05-06"
  s.description = "A multi API consuming weather forecasting superstar."
  s.email = ["mark@attackcorp.com"]
  s.homepage = "http://github.com/attack/barometer"
  s.licenses = ["MIT"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.4.3"
  s.summary = "A multi API consuming weather forecasting superstar."

  s.installed_by_version = "2.4.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httpclient>, [">= 0"])
      s.add_runtime_dependency(%q<tzinfo>, [">= 0.3.14"])
      s.add_runtime_dependency(%q<nokogiri>, [">= 0"])
      s.add_runtime_dependency(%q<addressable>, [">= 0"])
      s.add_runtime_dependency(%q<nori>, [">= 0"])
      s.add_runtime_dependency(%q<virtus>, [">= 1.0.0"])
      s.add_runtime_dependency(%q<choc_mool>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
    else
      s.add_dependency(%q<httpclient>, [">= 0"])
      s.add_dependency(%q<tzinfo>, [">= 0.3.14"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<addressable>, [">= 0"])
      s.add_dependency(%q<nori>, [">= 0"])
      s.add_dependency(%q<virtus>, [">= 1.0.0"])
      s.add_dependency(%q<choc_mool>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
    end
  else
    s.add_dependency(%q<httpclient>, [">= 0"])
    s.add_dependency(%q<tzinfo>, [">= 0.3.14"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<addressable>, [">= 0"])
    s.add_dependency(%q<nori>, [">= 0"])
    s.add_dependency(%q<virtus>, [">= 1.0.0"])
    s.add_dependency(%q<choc_mool>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
  end
end
