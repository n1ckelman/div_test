class Player < ActiveRecord::Base
	has_and_belongs_to_many :poker_tables
	#validates :email, uniqueness: true
end
 