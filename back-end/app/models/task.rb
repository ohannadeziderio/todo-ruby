class Task < ApplicationRecord

    validates :title, presence: true
	validates :description, presence: true
    validates :day, presence: true

end
