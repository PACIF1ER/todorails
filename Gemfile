source 'https://rubygems.org'
ruby '2.4.0'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.2'
gem 'bootstrap-datepicker-rails'

gem 'momentjs-rails'
gem 'bootstrap3-datetimepicker-rails'
gem 'devise-bootstrap-views'
gem 'twitter-bootstrap-rails'
gem 'puma', '~> 3.0'
gem 'uglifier', '>= 1.3.0'

gem 'bootstrap-sass'
gem 'devise'
gem 'devise-i18n'
gem 'coffee-rails', '~> 4.2'
gem 'sass-rails'
gem 'therubyracer'

gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'simple_form'
group :production do
  gem 'pg', '0.18.4'
  gem 'rails_12factor'
end

group :development, :test do
  gem 'sqlite3', '1.3.12'
  gem 'byebug',  '9.0.0', platform: :mri
  gem 'rspec-rails'
end




group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
