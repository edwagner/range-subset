# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{range-subset}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ed Wagner"]
  s.date = %q{2009-02-18}
  s.description = %q{A simple extension to Ruby's core Range class to determine overlaps between two Ranges.}
  s.email = %q{ed@edwagner.org}
  s.files = ["README.rdoc", "VERSION.yml", "lib/core_ext", "lib/core_ext/range.rb", "lib/range_subset.rb", "spec/range_subset_spec.rb", "spec/spec_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/edwagner/range-subset}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A simple extension to Ruby's core Range class to determine overlaps between two Ranges.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
