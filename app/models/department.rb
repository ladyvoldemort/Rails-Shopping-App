class Department < ApplicationRecord
  belongs_to :store
  has_many :items, dependent: :destroy

  validates :name, presence: true

  def self.order_dept
    order(:name)
  end

end
