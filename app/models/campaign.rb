class Campaign < ApplicationRecord
    has_many :characters
    has_many :enemies
end
