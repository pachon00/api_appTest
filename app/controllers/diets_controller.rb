class DietsController < ApplicationController
  before_action :set_diet, only: [:show, :edit, :update, :destroy]

  # GET /diets
  def index
    @diets = Diet.all
  end

  # GET /diets/1
  def show
  end

  # GET /diets/new
  def new
    @diet = Diet.new
  end

  # GET /diets/1/edit
  def edit
  end

  # POST /diets
  def create
    @diet = Diet.new(diet_params)

    if @diet.save
      redirect_to @diet, notice: 'Diet was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /diets/1
  def update
    if @diet.update(diet_params)
      redirect_to @diet, notice: 'Diet was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /diets/1
  def destroy
    @diet.destroy
    redirect_to diets_url, notice: 'Diet was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diet
      @diet = Diet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def diet_params
      params.require(:diet).permit(:name, :description, :calories)
    end
end
