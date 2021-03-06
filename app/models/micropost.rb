# == Schema Information
#
# Table name: microposts
#
#  id         :bigint(8)        not null, primary key
#  content    :text
#  user_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Micropost < ApplicationRecord
  acts_as_paranoid

  belongs_to :user
  # belongs_to :author, class_name: 'User', foreign_key: :user_id
  default_scope -> { order(created_at: :desc)  }

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140  }
end
