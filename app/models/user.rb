class User < ApplicationRecord
	has_one :diary
	has_many :three_digit_draws
	has_many :four_digit_draws
	has_many :mega_draws
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
