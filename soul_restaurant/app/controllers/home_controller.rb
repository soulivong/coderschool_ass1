class HomeController < ApplicationController
  def index
  	@sections = Section.all
  	@items = FoodItem.all	
  end

  def contact

  end

  def menu
  	if params[:id]
  		@items = FoodItem.where section_id: params[:id]
  		@section = Section.find(params[:id])
  	else
  		@items = FoodItem.all
  	end
  end
end
