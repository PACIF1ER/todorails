class Task < ApplicationRecord
	belongs_to :user
	 validates :name, presence: true,
  					length:{ minimum: 3 }
  	 validates	:priority, numericality: { only_integer: true }
end
