class CreateArticleContents < ActiveRecord::Migration
  def self.up
    create_table :article_contents do |t|
      t.string :title
      t.text :description
      t.text :content
      t.datetime :published_at

      t.timestamps
    end
  end

  def self.down
    drop_table :article_contents
  end
end
