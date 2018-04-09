class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :edit, :update, :destroy]
  before_action :set_race

  def index
    @animals = race_class.all
  end

  def new
    @animal = race_class.new
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to @animal, notice: "#{race} was successfully created."
    else
      render action: :new
    end
  end

  def show
  end

  private
    def set_race
      @race = race
    end

    def race
      params[:type].present? && Animal.races.include?(params[:type]) ? params[:type] : "Animal"
    end

    def race_class
      race.constantize
    end

    def set_animal
      @animal = race_class.find(params[:id])
    end

    def animal_params
      params.require(race.underscore.to_sym).permit(:name, :age, :race)
    end
end
