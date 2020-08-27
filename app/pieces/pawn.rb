# A pawn can move forward one space and back one space in standard movement.
# A pawn can only attack to a forward diagonal

class Pawn < piece
    attr_accessor :color, :icon, :move_count, :status
    attr_reader :name
  
    def initialize(color)
        @name = "Pawn"
        @color = color
        @moves = 0
        @status = "active"

        case
        when @color == "black"
            @icon = "♟".black
        when @color == "white"
            @icon = "♙".black
        end
    end

    def moves
      
    end

    def straigh_move
    end

    def diag_moves
  
end