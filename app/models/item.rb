class Item < ApplicationRecord
  belongs_to :department

  validates :name, uniqueness: true
  validates :price, numericality: { only_float: true }
  validates :name, :price, presence: true

  def list_item
   puts "#{self.name} - #{self.price}"
  end
end
