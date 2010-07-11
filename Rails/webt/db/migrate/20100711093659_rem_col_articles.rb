class RemColArticles < ActiveRecord::Migration
  def self.up
    remove_columns :articles,:title,:description,:content
    add_column :articles,:status,:boolean,:default=>false
    add_column :article_contents,:status_confirmed,:integer
  end

  def self.down
  end
end
