class Recipe < ApplicationRecord
  belongs_to :Category
  belongs_to :recipe_type
  belongs_to :author
  validates :name, :ingredients, :steps, :image_url, presence: true
  validates :name, uniqueness: true
end
