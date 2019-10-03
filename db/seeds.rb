# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

carmakes_list = [
    ["Mercedes-Benz", "Germany"],
    ["Bentley", "UK"],
    ["BMW","Germany"],
    ["Audi","Germany"],
    ["Tesla","USA"],
    ["Porsche","Germany"],
    ["Ford","USA"],
    ["Toyota","Japan"]
]

carmodels_list = [
    [ 1, "C-Class", "Gasoline"],
    [ 1, "G-Wagen", "Gasoline"],
    [ 1, "EQ", "Electric"],
    [ 2, "Continental", "Gasoline"],
    [ 2, "Mulsanne", "Gasoline"],
    [ 2, "Flying Spur", "Gasoline"],
    [ 3, "i8", "Electric"],
    [ 3, "M3", "Gasoline"],
    [ 3, "5-Series", "Gasoline"],
    [ 4, "A5", "Gasoline"],
    [ 4, "TT", "Gasoline"],
    [ 4, "R8", "Gasoline"],
    [ 5, "Model X", "Electric"],
    [ 5, "Model S", "Electric"],
    [ 5, "Roadster", "Electric"],
    [ 6, "911", "Gasoline"],
    [ 6, "Cayenne", "Gasoline"],
    [ 6, "Taycan", "Electric"],
    [ 7, "F150", "Gasoline"],
    [ 7, "Mustang", "Gasoline"],
    [ 7, "Pinto", "Gasoline"],
    [ 8, "Supra", "Gasoline"],
    [ 8, "Prius", "Electric"],
    [ 8, "FT1", "Gasoline"]
]

carmakes_list.each do |make, country|
    CarMake.create(make: make, country: country)
end

carmodels_list.each do |make_id, model, fuel|
    CarModel.create(car_make_id: make_id, model: model, fuel: fuel)
end