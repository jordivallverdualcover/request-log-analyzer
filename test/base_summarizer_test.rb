require 'test/unit'

require "#{File.dirname(__FILE__)}/../lib/base/summarizer"

class BaseSummarizerTest < Test::Unit::TestCase
  
  def test_compare_string_dates
    summarizer = Base::Summarizer.new
    assert_equal 0,   summarizer.compare_string_dates('2008-01-01 12:11:20', '2008-01-01 12:11:20')
    assert_equal -1,  summarizer.compare_string_dates('2007-01-01 12:11:20', '2008-01-01 12:11:20')
    assert_equal 1,   summarizer.compare_string_dates('2008-01-01 12:11:20', '2007-01-01 12:11:20')
    
    assert_equal -1,  summarizer.compare_string_dates('2008-01-01 12:11:20', '2008-02-01 12:11:20')
    assert_equal 1,   summarizer.compare_string_dates('2008-02-01 12:11:20', '2008-01-01 12:11:20')

    assert_equal -1,  summarizer.compare_string_dates('2008-01-01 12:11:20', '2008-01-02 12:11:20')
    assert_equal 1,   summarizer.compare_string_dates('2008-01-02 12:11:20', '2008-01-01 12:11:20')
  end
end