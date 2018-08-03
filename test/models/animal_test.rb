require 'test_helper'

class AnimalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  @animal = Animal.find(1)
  describe "#name" do
    "returns the correct name" do
      @animal.name.should eql "Fluffy"
    end
  end

  describe "#description" do
    "returns a description of the animal" do
      @animal.description.should eql "Fluffy is a old and lazy cat. Perfect for people who don't want to interact with their pets.

"
    end
  end

  describe "#filter" do
    "returns an array of animals by type" do
      Animal.filter("Dog").should eql []
    end
  end

  describe "#filter" do
    "Does not throw error if user enters animal in wrong case" do
      Animal.filter("dog").should eql []
    end
  end

  describe "#create" do
    "Creates a new animal type if one does not exist" do
      TypeOfAnimal.all.include?("Dinosaur")
    end
  end

  describe "#adopted" do
    "returns the amount of animals that's status is adopted" do
      Animal.adopted.should eql 3
    end
  end

  describe "#not_adopted" do
    "returns amount of animals that have a status of not adopted" do
      Animal.not_adopted.should eql 5
    end
  end
end
