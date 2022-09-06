puts "Destroing Users"
User.destroy_all

puts "Destroing Players"
Player.destroy_all

puts "Creating User"
user1 = User.create!(email: "giorgio@gmail.com", password: 123456, name: "giorgio")
puts "Created User with id: #{user1.id}"
user2 = User.create!(email: "marco@gmail.com", password: 123456, name: "mark")
puts "Created User with id: #{user2.id}"


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

player = Player.create!(name: "Kimmich",
              club: "Batern Munchen",
              nationality: "Germany",
              age: 27,
              value: 72,
              role: "Defender"
            )
puts "Created Player id: #{player.id}"

player = Player.create!(name: "Hernandez",
  club: "AC Milan",
  nationality: "France",
  age: 24,
  value: 50,
  role: "Defender"
)
puts "Created Player id: #{player.id}"

player = Player.create!(name: "Tonali",
  club: "AC Milan",
  nationality: "Italy",
  age: 22,
  value: 45,
  role: "Midfielder"
)
puts "Created Player id: #{player.id}"

player = Player.create!(name: "Lewandowski",
  club: "Barcelona",
  nationality: "Poland",
  age: 34,
  value: 40,
  role: "Forward"
)
puts "Created Player id: #{player.id}"

player = Player.create!(name: "Salah",
  club: "Liverpool",
  nationality: "Egypt",
  age: 30,
  value: 81,
  role: "Forward"
)
puts "Created Player id: #{player.id}"

player = Player.create!(name: "Fabinho",
  club: "Liverpool",
  nationality: "Brasil",
  age: 28,
  value: 54,
  role: "Midfielder"
)
puts "Created Player id: #{player.id}"

player = Player.create!(name: "Haaland",
  club: "Machester City",
  nationality: "Norway",
  age: 22,
  value: 135,
  role: "Forward"
)
puts "Created Player id: #{player.id}"


puts "Created #{Player.count} players"
puts "Finished!"
