class Item < ApplicationRecord
  validates :name,            presence: true,
                              length: {within: 3..50}

  validates :item_type,       presence: true,
                              length: {within: 3..25}

  scope :sorted, -> {order('name ASC')
  }
end
