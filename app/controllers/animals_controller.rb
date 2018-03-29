class AnimalsController < ApplicationController
  before_action :set_race

  def index
    @animals = race_class.all
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
end
