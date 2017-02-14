# == Schema Information
#
# Table name: items
#
#  id                 :integer          not null, primary key
#  name               :string           not null
#  item_type          :string           not null
#  item_description   :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  user_id            :integer
#

class Item < ApplicationRecord

  belongs_to :user
  has_many :item_loans

  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#"}

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :name,            presence: true,
                              length: {within: 3..50}

  validates :item_type,       presence: true,
                              length: {within: 3..25}

  scope :sorted, -> {order('name ASC')
  }
end
