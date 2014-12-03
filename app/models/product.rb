class Product < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  belongs_to :company
  validates :name, presence: true
end
