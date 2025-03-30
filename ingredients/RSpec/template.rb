gem_group :development, :test do
  gem "rspec-rails"
end

run "bundle install"
rails_command "generate rspec:install"

run "rm -rf test"