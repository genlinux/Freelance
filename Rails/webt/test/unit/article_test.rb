require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: articles
#
#  id           :integer(4)      not null, primary key
#  created_at   :datetime
#  updated_at   :datetime
#  published_at :datetime
#  status       :boolean(1)      default(FALSE)
#

