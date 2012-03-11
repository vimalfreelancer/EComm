class Special < ActiveRecord::Base
 # has_many :line_items
  validates :oldprice, :numericality => {:greater_than_or_equal_to => 0.01 } 
  validates :discount, :numericality => {:greater_than_or_equal_to => 0.01 } 
  validates :title, :uniqueness => true 
  
  has_attached_file :photo,
                    :url  => "/assets/products/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
  
end
