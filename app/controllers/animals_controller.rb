class AnimalsController < ApplicationController
    def index
        animals = Animal.all
        @animals_sorted = animals.sort_by {|animal| animal[:name]}
        @animals_sorted
    end

    def show
        animal_id = params[:id]
        animal = Animal.find_by(id: animal_id)
        render json: animal
    end
end
