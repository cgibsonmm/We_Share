# == Schema Information
#
# Table name: items
#
#  id               :integer          not null, primary key
#  name             :string           not null
#  item_type        :string           not null
#  item_description :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer
#  image            :string
#

class Item < ApplicationRecord

  belongs_to :user
  has_many :item_loans

  mount_uploader :image, ImageUploader

  validates :name,            presence: true,
                              length: {within: 3..50}

  validates :item_type,       presence: true,
                              length: {within: 3..25}

  scope :sorted, -> {order('name ASC')
  }
end
