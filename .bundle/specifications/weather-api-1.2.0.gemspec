# -*- encoding: utf-8 -*-
# stub: weather-api 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "weather-api"
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Andrew Stewart"]
  s.date = "2015-06-16"
  s.description = "A wrapper for the Yahoo! Weather XML RSS feed"
  s.email = ["andrew@stwrt.com"]
  s.homepage = "https://github.com/stewart/weather-api"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.3"
  s.summary = "Weather-API provides an object-oriented interface to the Yahoo! Weather XML RSS feed service."

  s.installed_by_version = "2.4.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<chronic>, ["~> 0.10.2"])
      s.add_runtime_dependency(%q<map>, ["~> 6.5.1"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.14.1"])
      s.add_development_dependency(%q<webmock>, ["~> 1.13.0"])
      s.add_development_dependency(%q<rake>, ["~> 10.1.0"])
      s.add_development_dependency(%q<vcr>, ["~> 2.6.0"])
    else
      s.add_dependency(%q<chronic>, ["~> 0.10.2"])
      s.add_dependency(%q<map>, ["~> 6.5.1"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.14.1"])
      s.add_dependency(%q<webmock>, ["~> 1.13.0"])
      s.add_dependency(%q<rake>, ["~> 10.1.0"])
      s.add_dependency(%q<vcr>, ["~> 2.6.0"])
    end
  else
    s.add_dependency(%q<chronic>, ["~> 0.10.2"])
    s.add_dependency(%q<map>, ["~> 6.5.1"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.14.1"])
    s.add_dependency(%q<webmock>, ["~> 1.13.0"])
    s.add_dependency(%q<rake>, ["~> 10.1.0"])
    s.add_dependency(%q<vcr>, ["~> 2.6.0"])
  end
end
