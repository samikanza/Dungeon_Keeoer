class Dungeon < ActiveRecord::Base
	validates :name,	:presence => true,
						:length =>	{
										:in => 3..255, 
										:message => 'the length of the name must be between 3 and 255 chars long'
									}
	validates :levels,	:numericality =>	{	
												:greater_than => 0, 
												:less_than => 100, 
												:integer_only => true
											}
	
	#before_save :calculate_experience_points
	
	#def calculate_experience_points
		#self.experience_points = level ** 2 
	#end
	
	has_one :ultra_evil_witch
	
	scope :deep, where('dungeons.levels > 8')
	scope :search_by_name, lambda {|name| where('dungeons.name LIKE "?%"', name)}
	
end
