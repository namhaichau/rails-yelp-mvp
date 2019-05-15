class Restaurant < ApplicationRecord
   validates :name, uniqueness: true, presence: true
   validates :address, presence: true
   validates :category, inclusion: { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
end

# A restaurant must have at least a name, an address and a category.
# The restaurant category should belong to a fixed list ["chinese", "italian", "japanese",
#   "french", "belgian"].
# A review must have a parent restaurant.
# A review must have content and a rating. The rating should be a number between 0 and 5.
# When a restaurant is destroyed, all of its reviews should be destroyed as well.
# Validate all model tests before moving to the routing layer. You can use this command:
