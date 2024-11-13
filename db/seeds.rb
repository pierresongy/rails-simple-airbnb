# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Gorgeous penthouse Paris',
  address: '1 rue de la Paix, 75008 Paris',
  description: 'Un goût de luxe et de volupté',
  price_per_night: 150,
  number_of_guests: 6
)

Flat.create!(
  name: 'Appart étudiant La Rochelle',
  address: '3 rue des Ecoles, La Rochelle',
  description: 'Pratique et fonctionnel, logement idéal pour un étudiant',
  price_per_night: 225,
  number_of_guests: 12
)

Flat.create!(
  name: 'Chalet à la montagne',
  address: '10 rue des Alpes, Chamonix',
  description: 'Venez skier ou randonner puis vous reposer dans ce lovely chalet traditionnel',
  price_per_night: 345,
  number_of_guests: 5
)

puts "You just created #{Flat.count} flats"

puts "Finished!"
