class AnimalsController < ApplicationController
  def index
    if params[:animal]
      @animals = Animal.filter(params[:animal][:type_of_animal_id])
    else
      @animals = Animal.all
    end
  end
  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)

    anim = params[:animal_type]
    type = TypeOfAnimal.find_or_create_by(name: anim)
    @animal.type_of_animal_id = type[:id]


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
