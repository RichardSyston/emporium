ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

##### minitest report #######
require "minitest/reporters"
Minitest::Reporters.use!
##### end minitest report ###

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...

  #def assert_difference(object, method, difference=1)
  #  initial_value = object.send(method)
  #  yield
  #  assert_equal initial_value + difference, object.send(method)
  #end

  #def assert_not_difference(object, method, &block)
  #  assert_difference object, method, 0, &block
  #end


end
