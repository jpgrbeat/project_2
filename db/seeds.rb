# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
shelter1 = Shelter.create(id: 1, name: 'Happy Animals', address: '11111 Great Falls, MD')
shelter2 = Shelter.create(id: 2,name: 'Terrific Pets', address: '1032 Maple Ln, VA')
shelter3 = Shelter.create(id: 3,name: 'Pets4Everyone', address: '674 Caring Street, MD')
shelter4 = Shelter.create(id: 4, name: 'Barks and Meows Pet Store', address: '9834 Chesapeake Street, VA')

fluffy = Animal.create(name: 'Fluffy', type_of_animal_id: 2, description: "Fluffy is a old and lazy cat. Perfect for people who don't want to interact with their pets.", adopted: false, shelter_id: 3)
killer = Animal.create(name: 'Killer', type_of_animal_id: 1, description: "Killer is a mean killing machine. Perfect for former cops.", adopted: false, shelter_id: 1)
bubbles = Animal.create(name: 'Bubbles', type_of_animal_id:  3, description: "Bubbles loves to float around the tank doing nothing.", adopted: false, shelter_id:1)
kiki = Animal.create(name: 'Kiki', type_of_animal_id: 2, description: "Kiki is indeed a boy cat but he goes by Kiki. Great at killing mice.", adopted: false, shelter_id: 2)
spot = Animal.create(name: 'Spot', type_of_animal_id: 1, description: "Spot is high energy and loves cuddles.", adopted: false, shelter_id:2)
shark = Animal.create(name: 'Shark', type_of_animal_id: 3 , description: "Shark is a harmless gold-fish that is easy to maintain.", adopted: false, shelter_id: 3)
fuzz = Animal.create(name: 'FuzzBalls', type_of_animal_id: 2 , description: "FuzzBalls is a fluffy white cat that often throws up hairballs. Not for squemish people.", adopted: false, shelter_id: 4)
lassie = Animal.create(name: 'Lassie', type_of_animal_id: 1, description: "Lassie is a hearding dog that loves to rescue people from wells.", adopted: false, shelter_id: 4)

dog = TypeOfAnimal.create(id: 1, name: "Dog")
cat = TypeOfAnimal.create(id: 2, name: "Cat")
fish = TypeOfAnimal.create(id: 3,name: "Fish")
bird = TypeOfAnimal.create(id: 4, name: "Bird")
