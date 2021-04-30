class Car < ApplicationRecord
    def make_and_model
        "Car #{model} by #{make}"
    end
end
