class PokerTable < ActiveRecord::Base
	has_and_belongs_to_many :players
	validates_length_of :players, maximum: 6

	scope :available, proc { where("actual_time > '#{Time.now}'") }
	default_scope {available}
end
