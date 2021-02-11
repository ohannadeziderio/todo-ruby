class Task < ApplicationRecord

    validates :title, presence: true
	validates :description, presence: false
    validates :day, presence: true

end
