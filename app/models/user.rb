class User < ApplicationRecord
  has_many :messages
  has_many :chatrooms, through: :messages
  validates :name, presence: true, uniqueness: true
end
