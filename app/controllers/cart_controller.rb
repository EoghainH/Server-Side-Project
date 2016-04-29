class CartController < ApplicationController
  
  before_action :authenticate_user!, except: [:index]
  
  def add
    #if the cart has already been created, use existing cart else create a new cart
    id =params[:id]
    if session[:cart] then
      cart = session[:cart]
    else
      session[:cart] = {}
      cart = session[:cart]
    end
    # if the product has already been added to the cart, increment the value esle set the value 
    if cart[id] then
      cart[id] = cart[id] + 1
    else
      cart[id] = 1
    end
    redirect_to :action => :index
  end
  
  def clearCart
    session[:cart] = nil
    redirect_to :action => :index
  end
  #if there is a cart, pass it to the page for display else pass an empty value
  def index
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end
  end
    
end
