# -*- encoding: utf-8 -*-
# stub: cors 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "cors".freeze
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Kim Burgestrand".freeze]
  s.date = "2019-08-08"
  s.description = "Cross-origin resource sharing (CORS) is great; it allows your visitors to\nasynchronously upload files to e.g. Filepicker or Amazon S3, without the\nfiles having to round-trip through your web server. Unfortunately, giving\nyour users complete write access to your online storage also exposes you to\nmalicious intent.\n\nTo combat harmful usage, good upload services that allow client-side\nupload, support a mechanism that allows you to validate and sign all upload\nrequests to your online storage. By validating every request, you can give\nyour visitors a nice upload experience, while keeping the bad visitors at\nbay.\n\nThe CORS gem comes with support for the Amazon S3 REST API.\n".freeze
  s.email = ["kim@burgestrand.se".freeze]
  s.homepage = "http://github.com/elabs/cors".freeze
  s.post_install_message = "[DEPRECATED] The CORS gem is deprecated and will not receive further updates.\nThe functionality of CORS is now provided by the ruby AWS SDK:\n\n  https://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/S3/PresignedPost.html\n".freeze
  s.rubygems_version = "3.4.18".freeze
  s.summary = "CORS policy validation- and signing library for Amazon S3 REST API.".freeze

  s.installed_by_version = "3.4.18" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<multi_json>.freeze, [">= 0"])
  s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
end
