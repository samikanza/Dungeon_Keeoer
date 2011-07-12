class UltraEvilWitch < ActiveRecord::Base
  belongs_to :dungeon
  
  MAGIC_TYPES = ["transfiguration mistress", "potion mistress", "charms mistress", "flying mistress"]
  
  validates :magic_type, :inclusion => MAGIC_TYPES
	validates :spell_power, :numericality =>   {
	                                              :greater_than => 0
	                                              :less_than => 10
	                                              :integer_only => true
	                                            }
	                                            
	has_many :evil_wizard
	has_one :witch_cat
end
