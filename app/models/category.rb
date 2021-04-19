class Category < ApplicationRecord
    has_and_belongs_to_many :authors
    has_many :recipes
end
