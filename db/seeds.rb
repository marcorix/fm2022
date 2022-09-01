puts "Destroing Users"
User.destroy_all

puts "Destroing Players"
Player.destroy_all

puts "Creating User"
user = User.create!(email: "giorgio@gmail.com", password: 123456)
puts "Created User with id: #{user.id}"

puts "Creating Players"
player = Player.create!(name: "Ronaldo",
              club: "Manchester United",
              nationality: "Portugall",
              age: 34,
              value: 50,
              role: "Forward"
            )
puts "Created Player id: #{player.id}"

player = Player.create!(name: "Lukaku",
              club: "Inter",
              nationality: "Belgium",
              age: 29,
              value: 120,
              role: "Forward"
            )
puts "Created Player id: #{player.id}"

player = Player.create!(name: "Verratti",
              club: "Paris Saint Germain",
              nationality: "Italy",
              age: 29,
              value: 90,
              role: "Midfielder"
            )
puts "Created Player id: #{player.id}"

player = Player.create!(name: "Donnarumma",
              club: "Paris Saint Germain",
              nationality: "Italy",
              age: 23,
              value: 130,
              role: "Keeper"
            )
puts "Created Player id: #{player.id}"

player = Player.create!(name: "Rodrygo",
              club: "Real Madrid",
              nationality: "Brasil",
              age: 21,
              value: 60,
              role: "Defender"
            )
puts "Created Player id: #{player.id}"

puts "Finished!"
