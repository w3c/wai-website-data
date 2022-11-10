# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "wai-gems"
  spec.version       = '1.0.0'
  spec.authors       = ["Steve Lee"]
  spec.email         = ["steve@opendirective.com"]

  spec.summary       = "Gem for dependencies of WAI theme gems."
  # Use old version of rouge as latest jekyl defaults to 4.0.0 that requires ruby 2.7.0 and we use 2.6.2
  spec.add_dependency "rouge", '3.30.0'
  spec.add_dependency "jekyll-github-metadata"
  spec.add_dependency "jekyll-relative-links"
  spec.add_dependency "jekyll-seo-tag"
  spec.add_dependency "jekyll-sitemap"
  spec.add_dependency "jekyll-redirect-from"
  spec.add_dependency "jekyll-include-cache"
  spec.add_dependency "jekyll-remote-theme"
  spec.add_dependency "jekyll-paginate"
  spec.add_dependency "wai-website-plugin"
end
