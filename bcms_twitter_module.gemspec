# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{bcms_twitter_module}
  s.version = "1.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Freddy Andersen"]
  s.date = %q{2011-01-14}
  s.description = %q{A BrowserCMS module which fetches Twitter timelines}
  s.email = %q{freddy@zerolimitstech.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
     "README.markdown"
  ]
  s.files = [
    "app/controllers/application_controller.rb",
     "app/helpers/application_helper.rb",
     "app/models/timeline.rb",
     "app/portlets/helpers/twitter_user_timeline_portlet_helper.rb",
     "app/portlets/twitter_user_timeline_portlet.rb",
     "app/views/layouts/templates/default.html.erb",
     "app/views/portlets/twitter_user_timeline/_form.html.erb",
     "app/views/portlets/twitter_user_timeline/render.html.erb",
     "db/migrate/20101029045339_create_timelines.rb",
     "lib/bcms_twitter_module.rb",
     "lib/bcms_twitter_module/routes.rb",
     "rails/init.rb"
  ]
  s.homepage = %q{http://github.com/heimdull/bcms_twitter_module}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.4.1}
  s.summary = %q{Twitter in BrowserCMS}
  s.test_files = [
    "test/performance/browsing_test.rb",
     "test/test_helper.rb",
     "test/unit/portlets/twitter_user_timeline_portlet_test.rb",
     "test/unit/timeline_test.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<twitter>, [">= 0"])
    else
      s.add_dependency(%q<twitter>, [">= 0"])
    end
  else
    s.add_dependency(%q<twitter>, [">= 0"])
  end
end
