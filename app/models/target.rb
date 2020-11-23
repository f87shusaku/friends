class Target < ApplicationRecord

  with_options presence: true do
    validates :week
    validates :day
    validates :free
    validates :money
  end

  belongs_to :user
end
