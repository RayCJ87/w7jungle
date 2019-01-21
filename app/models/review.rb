class Review < ActiveRecord::Base
  belongs_to :product
  validates_presence_of :product_id, :user_id, :rating


end
