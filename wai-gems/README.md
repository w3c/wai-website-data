# wai-gems gem

This gem contains only the dependecies for the website so thet an be used consistenly between all the WAI site repos

## Using in WAI website repo

Put the following in the repos `Gemfile` and run `bundle install` as usual

```
gem "wai-gems", :path => "_external/data/wai-gems"
```

## To alter the dependencies

* edit  `wai-gems.gemspec` adding any new dependencies
* run `gem build wai-gems.gemspec`
* commit
