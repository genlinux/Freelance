class AddColArtcontent < ActiveRecord::Migration
  def self.up
    add_column :article_contents,:article_id,:integer
  end

  def self.down
    remove_column :article_contents,:article_id
  end
end
