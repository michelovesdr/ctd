# Maintains game board state
class Board
    def initialize
        # set up blank data structure
        @board = [[nil, nil, nil], 
                  [nil, nil, nil], 
                  [nil, nil, nil]]
        end

    # render
    def render
        # loop through data structure
        @board.each do |row|
            row.each do |column|
                # display an existing marker if any, else blank
                if column.nil? # if the column value is empty 
                    print "#" # print an underscore value to display the available spots on the board
                else
                    print column.to_s
                end
            end
            puts
        end
    end

    # add_piece
    def add_piece(row, column, piece)
        # IF piece_location_valid? place piece
        @board[row][column] = piece if piece_location_valid?(row, column)
        
        # @board[row][column] = piece
    end

    # piece_location_valid?
    def piece_location_valid?(row, column)
        if @board[row][column].nil?
            true
        else 
            false
        end
        # Is the placement within_valid_coordinates?
        # Are the piece coordinates_available?
    end

    def within_valid_coordinates?
        if ((row <= 2) && (row >= 0)) && (column <= 2) && (column >= 0)
            true
        else false
        end
    end

    # coordinates_available?
    def coordinates_available?()
        # UNLESS piece coords are not occupied
            # display error message
    end

    # winning_combination?
    def winning_combination?()
        # is there a winning_diagonal?
        # or winning_vertical? 
        # or winning_horizontal? for that piece?
    end

    # winning_diagonal?
    def winning_diagonal?()
        # check if specified piece has a triplet across diagonals
    end

    # winning_vertical?
    def winning_vertical?()
        # check if specified piece has a triplet across verticals
    end

    # winning_horizontal?
    def winning_horizontal?()
        # check if specified piece has a triplet across horizontals
    end

    # diagonals
    def diagonals
        # return the diagonal pieces
    end

    # verticals
    def verticals
        # return the vertical pieces
    end

    # horizontals
    def horizontals
        # return the horizontal pieces
    end

    # full?
    def full
        # does every square contain a piece?
    end
end