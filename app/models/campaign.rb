class Campaign < ApplicationRecord
    has_many :characters
    has_many :enemies
    has_many :dialogues
    serialize :dialogue, Array
    serialize :response, Array
end
