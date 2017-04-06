class User < ApplicationRecord
	 has_many :tasks, dependent: :destroy
	 accepts_nested_attributes_for :tasks, allow_destroy: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
