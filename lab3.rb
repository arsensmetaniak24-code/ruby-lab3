# Task 1

games = {
  :"Our Squishy Hero" => { genre: "Platformer", players: 1008 },
  :Minecraft          => { genre: "Sandbox",    players: 100000000 },
  :Terraria           => { genre: "",    players: 70000000 },
  :"Hollow Knight"    => { genre: "Metroidvania", players: 15000000 },
  :"Stardew Valley"   => { genre: "Farming Sim", players: 30000000 },
  :Celeste            => { genre: "Platformer", players: 2500000 },
  :Hades              => { genre: "Roguelike",  players: 6000000 },
  :"Portal 2"         => { genre: "Puzzle",     players: 13000000 },
  :"Dead Cells"       => { genre: "Roguelike",  players: 10000000 },
  :"Outer Wilds"      => { genre: "Exploration", players: 3000000 }
}


# Task 2

puts 'Task 2'
puts games.to_a

# Task 3
puts 'Task 3'

p games.sort_by {|name, details| name }
p games.sort_by {|name, details| details[:genre] }

# Task 4
puts 'Task 4'

p games.sort_by {|name, details| name.length }.slice(0, 3)

# Task 5
puts 'Task 5'

p games
    .reject {|name, details| details[:players] == 0 }
    .sort_by {|name, details| details[:players] }
    .slice(0, 5)

# Task 6
puts 'Task 6'

puts "Enter game you'd like to get: "
game_name = gets.chomp.to_sym
if games.has_key?(game_name)
  puts "Game: #{game_name}"
  puts "Genre: #{games[game_name][:genre]}"
  puts "Players : #{games[game_name][:players]}"
else
  puts "No game found"
end

# Task 7
puts 'Task 7'
p games
    .uniq { |_, details| details[:genre] }
    .map { |_, details| details[:genre] }
    .reject(&:empty?)
    .size

# Task 8
no_genre_games = games
                   .filter { |_, details| details[:genre].nil? || details[:genre].empty? }
                   .map { |name, _| name.to_s }

puts "Games without genres: #{no_genre_games}"

no_genre_games.each do |game|
  puts "Enter genre for #{game}: "
  games[game.to_sym][:genre] = gets.chomp
end

puts games
