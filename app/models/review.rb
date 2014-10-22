class Review < ActiveRecord::Base
  belongs_to :product
  acts_as_taggable
end
