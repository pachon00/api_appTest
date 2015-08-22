class DietsController < ApplicationController
 # before_action :set_diet, only: [:show, :edit, :update, :destroy]
  # GET /diets
  def index
    render json:  Diet.all
  end

  def create
	diet = Diet.new(diet_params)
		if diet.save 
			render json: diet, status: :created
		else
			render json: {errors: diet.errors}, status: 422
		end
  end

  def update
	diet = Diet.find(params[:id])

		if diet.update(diet_params)
			render json: diet, status: :ok
		end 	

  end

  def destroy
  		
	Diet.find(params[:id]).destroy
		head :no_content
 end

 private
  	def diet_params
		params.require(:diet).permit(:name, :description, :calories)
	end
end
