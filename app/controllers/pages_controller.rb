class PagesController < ApplicationController
  def home
  end

 def action

 end

def pin_params
   params.require(:pin).permit(:description, :image)
end

end


