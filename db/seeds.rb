# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# create drugs
{
  "mordena": {
    ailment: 'lungs',
    site_effects: ['cold', 'fever']
  }
}

["mordena", 'phizer', 'BCG', 'DTP', 'Polio'].each do |drug|
  Drug.create!({name: })
end
