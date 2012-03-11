class SpecialoffersController < ApplicationController
  skip_before_filter :authorize
   def index
     @products = Product.find(:all,:conditions => ["type1=?","Special"])
     @cart = current_cart
   end
end
