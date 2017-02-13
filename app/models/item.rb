class Item < ApplicationRecord
  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#"}

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :name,            presence: true,
                              length: {within: 3..50}

  validates :item_type,       presence: true,
                              length: {within: 3..25}

  scope :sorted, -> {order('name ASC')
  }
end
