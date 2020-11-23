class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name
    validates :occupation
    validates :age
    validates :image
  end

  has_one :target
  has_many :messages
  has_many :comments
  has_many :room_users
  has_many :rooms, through: :room_users
  has_one_attached :image
end
