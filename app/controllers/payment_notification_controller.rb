class PaymentNotificationController < ApplicationController
  protect_from_forgery :except => [:create]
  def create
    raise params.inspect
    PaymentNotification.create!(:params => params,:cart_id => params[:invoice],:status=>params[:payment_status],transaction_id => params[:txn_id])
    render :nothing => true
  end
end
