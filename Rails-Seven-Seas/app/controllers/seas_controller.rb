class SeasController < ApplicationController
  #define your controller actions here

  def welcome
  end 

  def index
    @seas = Sea.all 
  end 

  def new 
    @sea = Sea.new
  end 

  def show 
    @sea = Sea.find(params[:id])
  end 

  def create 
    @sea = Sea.create(sea_params)
    redirect_to seas_path
  end 

  def edit
    @sea = Sea.find(params[:id])
  end 

  def update 
    @sea = Sea.find(params[:id])
    @sea.update(sea_params) 
    redirect_to sea_path(@sea)
  end 

  def destroy 
    Sea.destroy(params[:id])
    redirect_to seas_path
  end 

  private
   def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end

end


 # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
