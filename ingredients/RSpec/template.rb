gem_group :development, :test do
  gem "rspec-rails"
end

puts "DEBUG: About to run bundle install"
puts "DEBUG: Current directory: #{Dir.pwd}"
puts "DEBUG: Gemfile contents:"
puts File.read("Gemfile")
puts "DEBUG: Bundler version: #{Bundler::VERSION}"
puts "DEBUG: Ruby version: #{RUBY_VERSION}"

run "bundle install"

puts "DEBUG: Bundle install completed"

generate "rspec:install"

run "rm -rf test"