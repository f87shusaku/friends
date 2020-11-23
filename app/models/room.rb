class Room < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :title
  end

  has_many :room_users
  has_many :users, through: :room_users
  has_many :messages
end
