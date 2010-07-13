class Article < ActiveRecord::Base
  #Associations
  has_many :article_contents
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

