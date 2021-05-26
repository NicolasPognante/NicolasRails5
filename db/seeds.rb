puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 10, category: 'belgian' }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: 11, category: 'italian' }
mc_do =  { name: "Mc DO", address: "Rue du McDo, Marseille", phone_number: 12, category: 'french' }
restochinois = { name: "Restochinois", address: "78 Boundary St, Pekin E28 5JE", phone_number: 12, category: 'chinese' }
restojap = { name: "Restojap", address: "72 Boundary St, London E22 2JE", phone_number: 14, category: 'japanese' }

[ dishoom, pizza_east, mc_do, restochinois, restojap ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
