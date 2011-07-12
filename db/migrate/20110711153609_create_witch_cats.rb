class CreateWitchCats < ActiveRecord::Migration
  def self.up
    create_table :witch_cats do |t|
      t.string :name,  :null => false
      t.string :color, :null => false
      t.integer :power_level, :null => false, :default => 1
      t.belongs_to :ultra_evil_witch

      t.timestamps
    end
  end

  def self.down
    drop_table :witch_cats
  end
end
