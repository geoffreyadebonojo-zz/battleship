# battleship
# interaction pattern

#setup...
  11: board_2 = Board.new
  12: player_1 = Player.new(board_1)
  13: player_2 = Player.new(board_2)
  14: game = Game.new(player_1, player_2)
  15:
=> 16: binding.pry

#[1] pry(main)> game.player_1.ship("A2", "A3")
=> true
#[2] pry(main)> game.player_1.board.hash[:A2]
=> #<Space:0x007ffba1a36ac0 @column="2", @name=:A2, @occupied=true, @row="A", @status="~">
#[3] pry(main)> game.player_1.board.hash[:A3]
=> #<Space:0x007ffba1a36868 @column="3", @name=:A3, @occupied=true, @row="A", @status="~">
#[4] pry(main)> game.player_shot(player_1, player_2, "A2")
=> "M"
#[5] pry(main)> game.player_shot(player_2, player_1, "A2")
=> "H"
#[6] pry(main)> game.player_2.ship("D2", "D3")
=> true
#[7] pry(main)> game.player_shot(player_1, player_2, "D1")
=> "M"
#[9] pry(main)> game.player_shot(player_1, player_2, "D3")
=> "H"

