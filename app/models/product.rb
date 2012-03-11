class Product < ActiveRecord::Base
  
  has_many :line_items
  before_destroy :ensure_not_referencing_by_any_line_item
  
  validates :title, :description, :presence => true
 # validates :image_url, :allow_blank => true, :format => {:with => %r{\.(gif|jpg|png)$}i,:message => 'must me a URL for GIF,JPG or PNG image.'}
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01 } 
  validates :title, :uniqueness => true 
  
  has_attached_file :photo,
                    :url  => "/assets/products/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
  
   PRODUCT_TYPES = ["Normal","Special"]
 
 private 
 
 #ensure that there is no line items referencing this product.
 
 def ensure_not_referencing_by_any_line_item
   if line_items.empty?
     return true
   else
     errors.add(:base,'Line Items presents')
     return false
   end
 end
end
