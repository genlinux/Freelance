require 'test/unit'
require File.dirname(__FILE__) + '/../lib/rubyist'

class TemperatureTest < Test::Unit::TestCase
  def setup
    @num = Temperature.new(2)
  end
  def simple_test
    asser_equal(53,@num.conversion(12))
  end
end
