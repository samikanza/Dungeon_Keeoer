class WitchCat < ActiveRecord::Base
  
  belongs_to :ultra_evil_witch
  
  COLOURS = ["black", "white", "black and white", "tabby", "ginger"]
  
  validates :colour, :inclusion => COLOURS
  validates :power_level, :numericality =>	{	
												                        :greater_than => 0, 
												                        :less_than => 10, 
												                        :integer_only => true
											                      }

  
end
