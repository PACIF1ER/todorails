class Task < ApplicationRecord
	belongs_to :user
	 validates :name, presence: true,
  					length:{ minimum: 3 }
  	 validates	:priority, numericality: { only_integer: true }
  	 validate :duedate_cannot_be_in_the_past
  	 private
    def duedate_cannot_be_in_the_past
      if duedate.present? && duedate < Date.today
        errors.add(:duedate, "Due date can't be in the past")
      end
    end
end
