# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
shelter1 = Shelter.create( name: 'Happy Animals', address: '11111 Great Falls, MD', email: 'info@happyanimals.com', phone: '444-111-3333')
shelter2 = Shelter.create(name: 'Terrific Pets', address: '1032 Maple Ln, VA', email: 'contact@terrficpets.com', phone: '111-111-1111')
shelter3 = Shelter.create(name: 'Pets4Everyone', address: '674 Caring Street, MD', email: 'info@pets4everyone.com', phone: '222-222-2222')
shelter4 = Shelter.create( name: 'Barks and Meows Pet Store', address: '9834 Chesapeake Street, VA', email: 'contact@barksandmeows.com', phone: '333-333-3333')

dog = TypeOfAnimal.create( name: "Dog")
cat = TypeOfAnimal.create( name: "Cat")
fish = TypeOfAnimal.create(name: "Fish")
bird = TypeOfAnimal.create( name: "Bird")

fluffy = Animal.create(name: 'Fluffy', age: 3, type_of_animal_id: cat.id, description: "Fluffy is a old and lazy cat. Perfect for people who don't want to interact with their pets.", shelter_id: shelter1.id, adopted: true, image_html: "https://www.catster.com/wp-content/uploads/2017/11/A-Siamese-cat.jpg")
killer = Animal.create(name: 'Killer', age: 4, type_of_animal_id: dog.id, description: "Killer is a mean killing machine. Perfect for former cops.", shelter_id: shelter1.id, adopted: true, image_html: "//goo.gl/images/2O3hyB")
bubbles = Animal.create(name: 'Bubbles', age: 5, type_of_animal_id:  fish.id, description: "Bubbles loves to float around the tank doing nothing.", shelter_id: shelter1.id, adopted: true, image_html: "https://blog.auntybinnaz.com/wp-content/uploads/fish.jpg")
kiki = Animal.create(name: 'Kiki', age: 6, type_of_animal_id:  cat.id, description: "Kiki is indeed a boy cat but he goes by Kiki. Great at killing mice.", shelter_id: shelter2.id, image_html: "https://www.cesarsway.com/sites/newcesarsway/files/styles/large_article_preview/public/Common-dog-behaviors-explained.jpg?itok=FSzwbBoi" )
spot = Animal.create(name: 'Spot',  age:3,type_of_animal_id: dog.id, description: "Spot is high energy and loves cuddles.", shelter_id: shelter2.id, image_html: "https://www.cesarsway.com/sites/newcesarsway/files/styles/large_article_preview/public/Natural-Dog-Law-2-To-dogs%2C-energy-is-everything.jpg?itok=Z-ujUOUr")
shark = Animal.create(name: 'Shark', age:4, type_of_animal_id: cat.id , description: "Shark is a harmless gold-fish that is easy to maintain.", shelter_id: shelter3.id, image_html: "https://www.rd.com/wp-content/uploads/2016/04/01-cat-wants-to-tell-you-laptop.jpg" )
fuzz = Animal.create(name: 'FuzzBalls', age:5, type_of_animal_id: cat.id , description: "FuzzBalls is a fluffy white cat that often throws up hairballs. Not for squemish people.", shelter_id: shelter4.id, image_html: "https://i.ytimg.com/vi/YCaGYUIfdy4/maxresdefault.jpg" )
lassie = Animal.create(name: 'Lassie', age:6, type_of_animal_id: dog.id, description: "Lassie is a hearding dog that loves to rescue people from wells.", shelter_id: shelter4.id, image_html: "https://www.petmd.com/sites/default/files/salmonella-infection-dogs.jpg" )
