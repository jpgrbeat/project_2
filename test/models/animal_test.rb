require 'test_helper'

class AnimalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  describe "#name" do
    "returns the correct name" do
      @animal.name.should eql "Barnaby"
    end
  end

  describe "#description" do
    "returns a description of the animal" do
      @animal.description.should eql ""
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
end
