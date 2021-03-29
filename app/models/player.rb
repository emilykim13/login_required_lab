class Player < ApplicationRecord
    has_many :users, as: :role_type
    has_many :characters
    has_many :encounters, through: :characters
end
