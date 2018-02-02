# Hide the puma server starting output
#
# https://github.com/rspec/rspec-rails/issues/1897
# https://github.com/rspec/rspec-rails/issues/1897#issuecomment-352923675
Capybara.server = :puma, { Silent: true }
