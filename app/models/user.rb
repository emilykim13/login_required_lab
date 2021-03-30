class User < ApplicationRecord
    has_secure_password

    has_many :characters
    has_many :enemies
    
    has_many :tables, through: :characters
    has_many :tables, through: :enemies



end