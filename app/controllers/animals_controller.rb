class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end
  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)

    if @animal.valid?
      @animal.save
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end

  def show
    @animal = Animal.find(params[:id])
  end

  private

  def animal_params
    params.require(:animal).permit(:id, :name, :type_of_animal_id, :shelter_id, :description, :adopted)
  end
end
