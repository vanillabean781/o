class PagesController < ApplicationController
  def home
  end

 def action

 end

def pin_params
   params.permit(:pin,:description, :image, :tag)
end

def projects
  @pin = Pin.all
end


end


