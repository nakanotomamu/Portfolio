class PropertyController < ApplicationController
  def index
    @properties = Property.where(utilityfrom: 1)
  end

  def buy
    @properties = Property.where(utilityfrom: 2)
  end
  
  def show
  end
end
