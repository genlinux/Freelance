class CreatePictures < ActiveRecord::Migration
  def self.up
    create_table :pictures do |t|
      t.string :name
      t.references :imageable, :polymorphic => true 
      t.timestamps
    end
  end

  def self.down
    drop_table :pictures
  end
end
