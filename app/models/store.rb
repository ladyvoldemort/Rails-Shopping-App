class Store < ApplicationRecord
  has_many :departments, dependent: :destroy

  validates :address, uniqueness: true
  validates :name, presence: true
end
