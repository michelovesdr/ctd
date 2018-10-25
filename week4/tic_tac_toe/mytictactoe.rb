class TicTacToe
    def initialize
        @board = Board.new
        @player_1 = Player.new("Player 1", :x, @board)
        @player_2 = Player.new("Player 2", :y, @board)