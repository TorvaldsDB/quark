# README

## How to use gem `Growl`
1. Buy and install growl in the AppStore(Mac shop store)
2. install`growlnotify`
`brew cask install growlnotify`
3. Add `growl` to `Gemfile`
```ruby
group :development do
  # other gems
  gem 'growl'
  
  # the two gems, you need also.
  gem 'guard'
  gem 'guard-rspec'
end
```
4. Install Gems
`bundle install`
5. Using `Guard` to guard rspec
`guard init rspec`
6. Add the following code to the nex-to-last line of tyour `Guardfile`
`notification :growl, sticky: true`
7. Run
`bundle exec guard`
