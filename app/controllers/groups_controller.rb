class GroupsController < ApplicationController
 # before_action :set_group, only: [:show, :edit, :update, :destroy]

  # GET /groups
  def index
    render json:  Group.all
  end

  def create
	group = Group.new(group_params)
		if group.save 
			render json: group, status: :created
		else
			render json: {errors: group.errors}, status: 422
		end
  end

  def update
	group = Group.find(params[:id])

		if group.update(group_params)
			render json: group, status: :ok
		end 	

  end

  def destroy
  		
	Group.find(params[:id]).destroy
		head :no_content
 end

 private
  	def group_params
		params.require(:group).permit(:name, :day, :time)
	end


end
