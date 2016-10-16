class FoodItemsController < ApplicationController
  before_action :set_food_item, only: [:show, :edit, :update, :destroy]

  # GET /food_items
  # GET /food_items.json
  def index
    @food_items = FoodItem.all
  end

  # GET /food_items/1
  # GET /food_items/1.json
  def show
  end

  # GET /food_items/new
  def new
    @food_item = FoodItem.new
  end

  # GET /food_items/1/edit
  def edit
  end

  # POST /food_items
  # POST /food_items.json
  def create
    @food_item = FoodItem.new(food_item_params)

      if @food_item.save
        render 'success'
      else
       
      end
  end

  # PATCH/PUT /food_items/1
  # PATCH/PUT /food_items/1.json
  def update
      if @food_item.update(food_item_params)

      else

      end
  end

  # DELETE /food_items/1
  # DELETE /food_items/1.json
  def destroy
    @food_item.destroy
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_item
      @food_item = FoodItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_item_params
      params.require(:food_item).permit(:name, :description, :price, :remote_image_url, :section_id)
    end
end
