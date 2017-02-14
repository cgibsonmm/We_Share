class Item < ApplicationRecord

  belongs_to :user
  mount_uploader :image, ImageUploader

  validates :name,            presence: true,
                              length: {within: 3..50}

  validates :item_type,       presence: true,
                              length: {within: 3..25}

  scope :sorted, -> {order('name ASC')
  }
end
