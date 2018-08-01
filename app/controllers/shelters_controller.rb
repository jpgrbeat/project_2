class SheltersController < ApplicationController

  def index
    @shelters = Shelter.all
  end

  def new
    @shelter = Shelter.new
  end

  def create
    @shelter = Shelter.new(shelter_params)

    if @shelter.valid?
      @shelter.save
      redirect_to shelter_path(@shelter)
    else
      render :edit
    end
  end

  def show
    @shelter = Shelter.find(params[:id])
  end

  private

  def shelter_params
    params.require(:shelter).permit(:id, :name, :address)
  end
end
