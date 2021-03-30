# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Enemy.destroy_all
Character.destroy_all
User.destroy_all
Campaign.destroy_all

cam1 = Campaign.create(title: "land of the oof")
cam2 = Campaign.create(title: "oof em port")

usr1 = User.create(username: "emily13", password: "milk")

e1 = Enemy.create( name: "oof" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), challenge_rating: 1  , max_hp: 5, current_hp: 3, experience_value: rand(0..20), campaign: cam1, user: usr1 )

usr1 = User.create(username:"my oofs tho", password_digest: "oof")

e1 = Enemy.create( name: "oof" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), challenge_rating: 1  , max_hp: 3 , current_hp: 3 , experience_value: rand(0..20), campaign: cam1 , user: usr1 )
e2 = Enemy.create( name: "oofer" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), challenge_rating: 1  , max_hp: 3 , current_hp: 3 , experience_value: rand(0..20), campaign: cam1 , user: usr1)
e3 = Enemy.create( name: "oofest" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), challenge_rating: 1  , max_hp: 3 , current_hp: 3 , experience_value: rand(0..20), campaign: cam1 , user: usr1)
e4 = Enemy.create( name: "oofy" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), challenge_rating: 1  , max_hp: 3 , current_hp: 3 , experience_value: rand(0..20), campaign: cam2 , user: usr1)
e5 = Enemy.create( name: "oofem" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), challenge_rating: 1  , max_hp: 3 , current_hp: 3 , experience_value: rand(0..20), campaign: cam2 , user: usr1)

c1 = Character.create( name: "foo" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), max_hp: 3 , current_hp: 3 , experience: rand(0..20), campaign: cam1 , user: usr1 )
c2 = Character.create( name: "refoo" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), max_hp: 3 , current_hp: 3 , experience: rand(0..20), campaign: cam1 , user: usr1)
c3 = Character.create( name: "tsefoo" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), max_hp: 3 , current_hp: 3 , experience: rand(0..20), campaign: cam1 , user: usr1)
c4 = Character.create( name: "yfoo" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), max_hp: 3 , current_hp: 3 , experience: rand(0..20), campaign: cam2 , user: usr1)
c5 = Character.create( name: "mefoo" , strength: rand(0..20) , dexterity: rand(0..20) , constitution: rand(0..20) , intelligence: rand(0..20) , wisdom: rand(0..20) , charisma: rand(0..20) , armor_rating: rand(0..10), max_hp: 3 , current_hp: 3 , experience: rand(0..20), campaign: cam2 , user: usr1)
