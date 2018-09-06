require 'pry'
require 'date'
require './lib/game'
require './lib/player'
require './lib/board'
require './lib/space'
require './lib/computer'


board_1 = Board.new
board_2 = Board.new
player_1 = Player.new(board_1)
player_2 = Computer.new(board_2)
game = Game.new(player_1, player_2)



def boards_setup(game)
  game.player_2.board_setup
  p "It's time to place your ship."
  p "..."
  p "you only get one"
  game.player_1.board_setup
end

def display_player_1_target_field(game)
  puts "PLAYER 1 BOARD:"

  a0 = game.player_2.board.hash[:A0].status
  a1 = game.player_2.board.hash[:A1].status
  a2 = game.player_2.board.hash[:A2].status
  a3 = game.player_2.board.hash[:A3].status

  b0 = game.player_2.board.hash[:B0].status
  b1 = game.player_2.board.hash[:B1].status
  b2 = game.player_2.board.hash[:B2].status
  b3 = game.player_2.board.hash[:B3].status

  c0 = game.player_2.board.hash[:C0].status
  c1 = game.player_2.board.hash[:C1].status
  c2 = game.player_2.board.hash[:C2].status
  c3 = game.player_2.board.hash[:C3].status

  d0 = game.player_2.board.hash[:D0].status
  d1 = game.player_2.board.hash[:D1].status
  d2 = game.player_2.board.hash[:D2].status
  d3 = game.player_2.board.hash[:D3].status
  
  puts ".  A B C D |"
  puts "0  #{a0} #{b0} #{c0} #{d0} |"
  puts "1  #{a1} #{b1} #{c1} #{d1} |"
  puts "2  #{a2} #{b2} #{c2} #{d2} |"
  puts "3  #{a3} #{b3} #{c3} #{d3} |"
  puts "  .........|"

 
  

end

def player_1_sonar(game)
  puts "ENEMY SHIPS:"

  a0 = game.player_2.board.hash[:A0].occupied
  a1 = game.player_2.board.hash[:A1].occupied
  a2 = game.player_2.board.hash[:A2].occupied
  a3 = game.player_2.board.hash[:A3].occupied

  b0 = game.player_2.board.hash[:B0].occupied
  b1 = game.player_2.board.hash[:B1].occupied
  b2 = game.player_2.board.hash[:B2].occupied
  b3 = game.player_2.board.hash[:B3].occupied

  c0 = game.player_2.board.hash[:C0].occupied
  c1 = game.player_2.board.hash[:C1].occupied
  c2 = game.player_2.board.hash[:C2].occupied
  c3 = game.player_2.board.hash[:C3].occupied

  d0 = game.player_2.board.hash[:D0].occupied
  d1 = game.player_2.board.hash[:D1].occupied
  d2 = game.player_2.board.hash[:D2].occupied
  d3 = game.player_2.board.hash[:D3].occupied
  
  puts ".    A     B     C     D |"
  puts "0  #{a0} #{b0} #{c0} #{d0} |"
  puts "1  #{a1} #{b1} #{c1} #{d1} |"
  puts "2  #{a2} #{b2} #{c2} #{d2} |"
  puts "3  #{a3} #{b3} #{c3} #{d3} |"
  puts "  .........|"

end

def player_1_check_hits(game)
  puts "PLAYER 1:"
  puts "Choose a target space (A0..D3)"
  input = gets.chomp.to_sym

  target = game.player_2.board.hash[input]

  game.player_1.shoot(target)
  if game.player_1.shots.last.occupied == true
    target.status = "H"
  else
    target.status = "M"
  end

end


def display_player_2_target_field(game)
  puts "ENEMY SHIPS:"

  a0 = game.player_1.board.hash[:A0].status
  a1 = game.player_1.board.hash[:A1].status
  a2 = game.player_1.board.hash[:A2].status
  a3 = game.player_1.board.hash[:A3].status

  b0 = game.player_1.board.hash[:B0].status
  b1 = game.player_1.board.hash[:B1].status
  b2 = game.player_1.board.hash[:B2].status
  b3 = game.player_1.board.hash[:B3].status

  c0 = game.player_1.board.hash[:C0].status
  c1 = game.player_1.board.hash[:C1].status
  c2 = game.player_1.board.hash[:C2].status
  c3 = game.player_1.board.hash[:C3].status

  d0 = game.player_1.board.hash[:D0].status
  d1 = game.player_1.board.hash[:D1].status
  d2 = game.player_1.board.hash[:D2].status
  d3 = game.player_1.board.hash[:D3].status
  
  puts ".  A B C D |"
  puts "0  #{a0} #{b0} #{c0} #{d0} |"
  puts "1  #{a1} #{b1} #{c1} #{d1} |"
  puts "2  #{a2} #{b2} #{c2} #{d2} |"
  puts "3  #{a3} #{b3} #{c3} #{d3} |"
  puts "  .........|"
end

def player_2_sonar(game)
  puts "PLAYER 2 BOARD:"

  a0 = game.player_1.board.hash[:A0].occupied
  a1 = game.player_1.board.hash[:A1].occupied
  a2 = game.player_1.board.hash[:A2].occupied
  a3 = game.player_1.board.hash[:A3].occupied

  b0 = game.player_1.board.hash[:B0].occupied
  b1 = game.player_1.board.hash[:B1].occupied
  b2 = game.player_1.board.hash[:B2].occupied
  b3 = game.player_1.board.hash[:B3].occupied

  c0 = game.player_1.board.hash[:C0].occupied
  c1 = game.player_1.board.hash[:C1].occupied
  c2 = game.player_1.board.hash[:C2].occupied
  c3 = game.player_1.board.hash[:C3].occupied

  d0 = game.player_1.board.hash[:D0].occupied
  d1 = game.player_1.board.hash[:D1].occupied
  d2 = game.player_1.board.hash[:D2].occupied
  d3 = game.player_1.board.hash[:D3].occupied
  
  puts ".    A     B     C     D |"
  puts "0  #{a0} #{b0} #{c0} #{d0} |"
  puts "1  #{a1} #{b1} #{c1} #{d1} |"
  puts "2  #{a2} #{b2} #{c2} #{d2} |"
  puts "3  #{a3} #{b3} #{c3} #{d3} |"
  puts "  .........|"

end

def player_2_check_hits(game)
  puts "PLAYER 2:"
  puts "Choose a target space (A0..D3)"

  @random = game.player_2.select_space.name
  target = game.player_1.board.hash[@random]

  game.player_2.shoot(target)
  if game.player_2.shots.last.occupied == true
    target.status = "H"
  else
    target.status = "M"
  end

end

def shooting_gallery(game, turns)
  boards_setup(game)
  turns.times do
    display_player_1_target_field(game)
    player_1_sonar(game)
    player_1_check_hits(game)
  end
end # dev tool for mechanics


def run(game, turns)
  boards_setup(game)
  display_player_2_target_field(game)
  puts "*"*10
  display_player_1_target_field(game)

  turns.times do 
    player_1_check_hits(game)
    player_2_check_hits(game)
    display_player_1_target_field(game)
    puts "*"*10
    display_player_2_target_field(game)
  end
end


puts ""
puts "Welcome to BATTLESHIP"
puts ""
puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
print "> "

reply = gets.chomp.to_s.downcase
if reply == "p"
  puts "How many turns?"
  print "> "
  turns = gets.chomp.to_i
  puts "Ship layout phase"

  run(game, turns)
  
elsif reply == "i"
  puts "What, you've never played battleship before??"
  puts "What, do you live under a rock or something??"
  
elsif reply == "q"
  puts "A wise decision, not tangling with the likes of me"
  puts "Maybe we can meet again NEXT #{Date.today.strftime("%A")}???"
end



