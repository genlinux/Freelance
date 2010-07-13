require 'test_helper'

class ArticleContentTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: article_contents
#
#  id               :integer(4)      not null, primary key
#  title            :string(255)
#  description      :text
#  content          :text
#  published_at     :datetime
#  created_at       :datetime
#  updated_at       :datetime
#  status_confirmed :integer(4)
#  article_id       :integer(4)
#

