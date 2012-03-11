class User < ActiveRecord::Base
  attr_accessor :password
  before_save :encrypt_password
  # validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates :name, :presence => true, :uniqueness=>true
  
   def authenticate(password)
      User.find_by_password_digest(password)
    end
  
  private 
    def ensure_an_admin_remains
      if User.count.zero?
        raise "Can't delete last user"
      end
    end
    
    def encrypt_password
      self.password_digest = password
    end
    
   
end
