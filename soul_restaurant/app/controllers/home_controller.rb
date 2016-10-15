class HomeController < ApplicationController
  def index

  	@sections = Section.all
  	@items = FoodItem.all	

    if params[:search]
      @items = FoodItem.search(params[:search]).order("created_at DESC")
    else
      @items = FoodItem.all.order('created_at DESC')
    end

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
