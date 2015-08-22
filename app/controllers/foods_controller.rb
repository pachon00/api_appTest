class FoodsController < ApplicationController
 # before_action :set_food, only: [:show, :edit, :update, :destroy]

  # GET /foods
  def index
    render json:  Food.all
  end

  def create
	food = Food.new(food_params)
		if food.save 
			render json: food, status: :created
		else
			render json: {errors: food.errors}, status: 422
		end
  end

  def update
	food = Food.find(params[:id])

		if food.update(food_params)
			render json: food, status: :ok
		end 	

  end

  def destroy
  		
	Food.find(params[:id]).destroy
		head :no_content
 end

 private
  	def food_params
		params.require(:food).permit(:name, :description, :unit, :cuantity, :calories)
	end

end
