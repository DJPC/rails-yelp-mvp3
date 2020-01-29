class Restaurant < ApplicationRecord
# When a restaurant is destroyed, all of its reviews should be destroyed as well.
  has_many :reviews, dependent: :destroy

# Validation: A restaurant must have at least a name, an address and a category.
  validates :name, :address, presence: :true

# The restaurant category should belong to a fixed list ["chinese", "italian", "japanese", "french", "belgian"].
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: CATEGORIES }
end
