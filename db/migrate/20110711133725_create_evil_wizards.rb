class CreateEvilWizards < ActiveRecord::Migration
  def self.up
    create_table :evil_wizards do |t|
      t.string :name,:null => false
      t.string :magic_type, :null => false
      t.integer :experience_points, :null => false, :default => 1 
	    t.belongs_to :ultra_evil_witch

      t.timestamps
    end
  end

  def self.down
    drop_table :evil_wizards
  end
end
