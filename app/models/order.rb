class Order < ActiveRecord::Base
  
  PAYMENT_TYPES = ["Check","Credit card","Cash"]

  has_many :line_items, :dependent => :destroy
  has_many :transactions, :class_name => "OrderTransaction"
  validates :name, :address1, :email, :presence => true
  #validates :pay_type, :inclusion => PAYMENT_TYPES
  
  before_create :validate_card
  
  attr_accessor :card_number, :card_verification

  def purchase(cart)
    response = GATEWAY.purchase(price_in_cents(cart), credit_card, purchase_options)
    transactions.create!(:action => "purchase",:amont => price_in_cents(cart),:response => response)
    cart.update_attribute(:purchased_at,Time.now) if response.success?
    response.success?
  end
  
  def price_in_cents(cart)
    (cart.total_price*100).round
  end
  
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end

  private
  
  def purchase_options
    {
      :ip => ip_address,
      :billing_address =>{
        :name => name,
        :address1 => address1,
        :city => city,
        :state => state,
        :country => country,
        :zip => "1001"
      }
    }
  end
  
  def validate_card
    unless credit_card.valid?
      
    end
  end
  
  def credit_card
    @credit_card ||= ActiveMerchant::Billing::CreditCard.new(
    :type => card_type,
    :number => card_number,
    :verification_value => card_verification,
    :month => card_expires_on.month,
    :year => card_expires_on.year,
    :first_name => "first_name",
    :last_name => "last_name"
    )
  end
  
end
