class User < ApplicationRecord
    has_many :characters
    has_many :enemies
    
    has_many :tables, through: :characters
    has_many :tables, through: :enemies
end


# user > player > character
# user > dm > enemy

# user > player/dm > character/enemy

# join monster to item but separate