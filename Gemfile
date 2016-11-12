source 'https://rubygems.org'

######## PLATFORM ###########
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
######## PLATFORM ###########

######## UI/UX ###########
# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'
gem 'simple_form'
gem 'momentjs-rails', '>= 2.8.1'
gem 'selectize-rails'

# Font-awesome: https://github.com/FortAwesome/font-awesome-sass
gem 'font-awesome-sass'
gem 'bootstrap-sass'
gem 'bootstrap-datepicker-rails'

# Use Exception Notifier to let developers know about production issues
gem 'exception_notification'
######## UI/UX ###########

######## SECURITY ###########
gem 'devise'
gem 'rolify'
gem 'authority'
gem 'bcrypt'
######## SECURITY ###########

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Figaro: https://github.com/laserlemon/figaro
  gem 'figaro'

  # Annotate_Models: https://github.com/ctran/annotate_models
  gem 'annotate'

  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'quiet_assets'
  gem 'bullet', github: 'flyerhzm/bullet'
  gem 'active_record_query_trace'
  gem 'meta_request'
end

group :production do
  gem 'rails_12factor'
  gem 'puma'
end

