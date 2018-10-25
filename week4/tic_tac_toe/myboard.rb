class Board
    def initialize
    @board = Array.new(3) do
        [nil, nil, nil]
    end
    
    def render
        @board.each do |row|
            row.each do |column|
                if column.nil?
                    print "#"
                else 
                    print column.to_s
                end
            end
        end
    end