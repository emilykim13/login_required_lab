# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CharacterItem.destroy_all
Encounter.destroy_all
Item.destroy_all
Enemy.destroy_all
Dialogue.destroy_all
Character.destroy_all
User.destroy_all
Campaign.destroy_all



cam1 = Campaign.create(title: "Get that BREAD", description: "The art of getting bread, loaf, and buns", dialogue: [], response: [])
cam2 = Campaign.create(title: "Get that bruh", description: "The art of getting bruh, bursh, and burhs", dialogue: ["blur", "hur", "dude"], response: ["poop", "doop", "boop"])
d1 = Dialogue.create(campaign_id: cam1.id, sentence: "Apple Sauce")

weapon1 = Item.create(name: "oof sword", cost: "50", weight: 11, damage_dice: 4)
weapon2 = Item.create(name: "bruh sword", cost: "50", weight: 13, damage_dice: 5)
weapon3 = Item.create(name: "dope sword", cost: "50", weight: 13, damage_dice: 7)
weapon4 = Item.create(name: "pope sword", cost: "50", weight: 19, damage_dice: 9)
weapon5 = Item.create(name: "lul sword", cost: "50", weight: 12, damage_dice: 10)

shield1 = Item.create(name: "not so okay shield", cost: "50", weight: 12, armor: 11)
shield2 = Item.create(name: "decent shield", cost: "50", weight: 12, armor: 15)
shield3 = Item.create(name: "less than decent shield", cost: "50", weight: 12, armor: 13)
shield4 = Item.create(name: "dope ass shield", cost: "50", weight: 12, armor: 18)
shield5 = Item.create(name: "slightly okay shield =", cost: "50", weight: 12, armor: 12)

# potion1 = Item.create(name: "lul sword", cost: "50", weight: 12, damage_dice: 10)
# potion2 = Item.create(name: "lul sword", cost: "50", weight: 12, damage_dice: 10)
# potion3 = Item.create(name: "lul sword", cost: "50", weight: 12, damage_dice: 10)
# potion4 = Item.create(name: "lul sword", cost: "50", weight: 12, damage_dice: 10)
# potion5 = Item.create(name: "lul sword", cost: "50", weight: 12, damage_dice: 10)



# Event.create( title: , chapter?, dialogue )

# what if we created a model that shovels the user's responses into an array and comsumes it in order



usr1 = User.create(username: "emily13", password: "milk")
usr2 = User.create(username:"my oofs tho", password_digest: "oof")

e1 = Enemy.create( name: "oof" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), max_hp: 3 , current_hp: 3 ,  campaign: cam1 , user: usr1 )
e2 = Enemy.create( name: "oofer" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), max_hp: 3 , current_hp: 3,  campaign: cam1 , user: usr1)
e3 = Enemy.create( name: "oofest" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), max_hp: 3 , current_hp: 3,   campaign: cam1 , user: usr1)
e4 = Enemy.create( name: "oofy" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), max_hp: 3 , current_hp: 3,  campaign: cam2 , user: usr1)
e5 = Enemy.create( name: "oofem" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), max_hp: 3 , current_hp: 3 ,  campaign: cam2 , user: usr1)

c1 = Character.create( name: "foo" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , max_hp: 3 , current_hp: 3 ,  campaign: cam1 , user: usr1 )
c2 = Character.create( name: "refoo" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , max_hp: 3 , current_hp: 3 ,  campaign: cam1 , user: usr1)
c3 = Character.create( name: "tsefoo" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , max_hp: 3 , current_hp: 3 ,  campaign: cam1 , user: usr1)
c4 = Character.create( name: "yfoo" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , max_hp: 3 , current_hp: 3 , campaign: cam2 , user: usr1)
c5 = Character.create( name: "mefoo" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , max_hp: 3 , current_hp: 3 ,  campaign: cam2 , user: usr1)


encounter_1 = Encounter.create(character: c1, enemy: e1)
