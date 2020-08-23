class Player
    attr_accessor :color, :pieces, :captured_pieces
    def initialize(color)
        @color = color
        @caputure_pieces = []
        @pieces = Pawn.new(color)
        
    end
end