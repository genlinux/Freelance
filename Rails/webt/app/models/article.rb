class Article < ActiveRecord::Base
  #Associations
  has_many :article_contents
end
