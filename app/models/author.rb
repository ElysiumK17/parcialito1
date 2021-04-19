class Author < ApplicationRecord
    has_and_belongs_to_many :categories
    has_many :recipes
    validates :first_name, last_name, presence: true
end
