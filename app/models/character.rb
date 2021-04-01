class Character < ApplicationRecord
    include Combatable

    belongs_to :user
    belongs_to :campaign

    has_many :character_items
    has_many :items, through: :character_items

    has_many :encounters
    has_many :enemies, through: :encounters

    validates :name, presence: true 
    validates :experience, numericality: {greater_than_or_equal_to: 0 }
    validates :level, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 20 }

    def title #screen display
        "#{self.name} level #{self.level} Fighter"
    end

    def gain_experience(exp)  #used so character can gain experience to level up
        self.update(experience: ( (self.experience + exp).clamp(0,355000) ) )
    end
    
    def check_level #used to increate character level
        case self.experience 
            when 0..299 ; 1 ; when 300..899 ; 2 ; when 900..2699 ; 3 ; when 2700..6499 ; 4 ; when 6500..13999 ; 5 ; 
            when 14000..22999 ; 6 ; when 23000..33999 ; 7 ; when 34000..47999 ; 8 ; when 48000..63999 ; 9 ; when 64000..84999 ; 10 ; 
            when 85000..99999 ; 11 ; when 100000..119999 ; 12 ; when 120000..139999 ; 13 ; when 140000..164999 ; 14 ; when 165000..194999 ; 15 ;
            when 195000..224999 ; 16 ; when 225000..264999 ; 17 ; when 265000..304999 ; 18 ; when 305000..354999 ; 19 ; when 355000..1000000 ; 20 ;
        end
    end

    def next_level #used to check how much experience character needs to level up 
        case self.level 
            when 1 ; "300" ; when 2 ; "900" ; when 3 ; "2,700" ; when 4 ; "6,500" ; when 5 ; "14,000" ; 
            when 6 ; "23,000" ; when 7 ; "34,000" ; when 8 ; "48,000" ; when 9 ; "64,000" ; when 10 ; "85,000" ;
            when 11 ; "100,000" ; when 12 ; "120,000" ; when 13 ; "140,000" ; when 14 ; "165,000" ; when 15 ; "195,000" ;
            when 16 ; "225,000" ; when 17 ; "265,000" ; when 18 ; "305,000" ; when 19 ; "355,000" ; when 20 ; "355,000" ;
        end
    end

    def level_up #used to increase character level
        self.update(level: self.check_level)
    end

    def format_experience #comma seperated player experience for screen display
        self.experience.to_s.gsub(/(\d)(?=(\d{3})+(?!\d))/, "\\1,")
    end

    def experience_bar #screen display of character experience
        "Experience: #{self.format_experience} / #{self.next_level}"
    end

# items
    def items_attributes=(item_attribute_hash)
    item_attribute_hash.each do |index, attributes|
      if attributes && attributes["name"].blank?
        item = Item.find_or_create_by(name: item_attribute_hash["name"])
        self.items << item
      end
    end
  end
    
end
