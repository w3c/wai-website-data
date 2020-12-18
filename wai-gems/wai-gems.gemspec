# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "wai-gems"
  spec.version       = '1.0.0'
  spec.authors       = ["Steve Lee"]
  spec.email         = ["steve@opendirective.com"]

  spec.summary       = "Gem for dependencies of WAI theme gems."
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
