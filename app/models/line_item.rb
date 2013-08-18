class LineItem < ActiveRecord::Base
  attr_accessible :product, :id, :update_at, :create_at, :quantity, :cart_id, :product_id
  belongs_to :product
  belongs_to :cart
  belongs_to :order
  
  def total_price
    product.price * quantity
  end
 
end
