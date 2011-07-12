class CreateUltraEvilWitches < ActiveRecord::Migration
  def self.up
    create_table :ultra_evil_witches do |t|
      t.string :name, :null => false
      t.string :magic_type, :null => false
      t.integer :experience_points, :null => false, :default => 1
      t.integer :spell_power, :null => false, :default => 1
      t.belongs_to :dungeon

      t.timestamps
    end
  end

  def self.down
    drop_table :ultra_evil_witches
  end
end
