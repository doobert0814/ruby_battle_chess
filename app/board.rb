class board
    attr_accessor :squares

    def initialize(player_1, player_2)
        @player_1 = player_1
        @player_2 = player_2
        @squares = Array.new(64, " ")
        start_pos


        @positions = [  [a,1], [a,2],[a,3],[a,3],[a,4],[a,5],[a,6],[a,7], [a,8], 
                        [b,1], [b,2],[b,3],[b,3],[b,4],[b,5],[b,6],[b,7], [b,8],
                        [c,1], [c,2],[c,3],[c,3],[c,4],[c,5],[c,6],[c,7], [c,8], 
                        [d,1], [d,2],[d,3],[d,3],[d,4],[d,5],[d,6],[d,7], [d,8], 
                        [e,1], [e,2],[e,3],[e,3],[e,4],[e,5],[e,6],[e,7], [e,8], 
                        [f,1], [f,2],[f,3],[f,3],[f,4],[f,5],[f,6],[f,7], [f,8], 
                        [g,1], [g,2],[g,3],[g,3],[g,4],[g,5],[g,6],[g,7], [g,8], 
                        [h,1], [h,2],[h,3],[h,3],[h,4],[h,5],[h,6],[h,7], [h,8]]
        
    end

    def start_pos
        #####################Player_1 Pieces############################

        @squares[48] = @player_1.pawn.piece
        @player_1.pawn1.position = [g,1]
        @squares[49] = @player_1.pawn.piece
        @player_1.pawn2.position = [g,2]
        @squares[50] = @player_1.pawn.piece
        @player_1.pawn3.position = [g,3]
        @squares[51] = @player_1.pawn.piece
        @player_1.pawn4.position = [g,4]
        @squares[52] = @player_1.pawn.piece
        @player_1.pawn5.position = [g,5]
        @squares[53] = @player_1.pawn.piece
        @player_1.pawn6.position = [g,6]
        @squares[54] = @player_1.pawn.piece
        @player_1.pawn7.position = [g,7]
        @squares[55] = @player_1.pawn.piece

        #####################Player_2 Pieces############################

        @player_1.pawn8.position = [g,8]
        @squares[8] = @player_1.pawn.piece
        @player_2.pawn1.position = [g,1]
        @squares[9] = @player_2.pawn.piece
        @player_2.pawn2.position = [g,2]
        @squares[10] = @player_2.pawn.piece
        @player_2.pawn3.position = [g,3]
        @squares[11] = @player_2.pawn.piece
        @player_2.pawn4.position = [g,4]
        @squares[12] = @player_2.pawn.piece
        @player_2.pawn5.position = [g,5]
        @squares[13] = @player_2.pawn.piece
        @player_2.pawn6.position = [g,6]
        @squares[14] = @player_2.pawn.piece
        @player_2.pawn7.position = [g,7]
        @squares[15] = @player_2.pawn.piece
        @player_2.pawn8.position = [g,8]
    end

    def show(piece = nil, start_position = [nil,nil], finish_position = [nil,nil])
        piece.position = finish_position if !piece.nil?
        i = 0
        @positions.each do |position|
            i += 1
            if position == start_position
            @squares[i-1] = " "
            end
            if position == finish_position
            @squares[i-1] = piece.piece
            end
        end
                puts "\n", " --+---+---+---+---+---+---+---+---+"
                puts " 8 | #{@squares[57]} | #{@squares[58]} | #{@squares[59]} | #{@squares[60]} | #{@squares[61]} | #{@squares[62]} | #{@squares[63]} | #{@squares[64]} | => #{@player_1.name}"
                puts " --+---+---+---+---+---+---+---+---+"
                puts " 7 | #{@squares[49]} | #{@squares[50]} | #{@squares[51]} | #{@squares[52]} | #{@squares[53]} | #{@squares[54]} | #{@squares[55]} | #{@squares[56]} |"
                puts " --+---+---+---+---+---+---+---+---+"
                puts " 6 | #{@squares[41]} | #{@squares[42]} | #{@squares[43]} | #{@squares[44]} | #{@squares[45]} | #{@squares[46]} | #{@squares[47]} | #{@squares[48]} |"
                puts " --+---+---+---+---+---+---+---+---+"
                puts " 5 | #{@squares[33]} | #{@squares[34]} | #{@squares[35]} | #{@squares[36]} | #{@squares[37]} | #{@squares[38]} | #{@squares[39]} | #{@squares[40]} |"
                puts " --+---+---+---+---+---+---+---+---+"
                puts " 4 | #{@squares[25]} | #{@squares[26]} | #{@squares[27]} | #{@squares[28]} | #{@squares[29]} | #{@squares[30]} | #{@squares[31]} | #{@squares[32]} |"
                puts " --+---+---+---+---+---+---+---+---+"
                puts " 3 | #{@squares[17]} | #{@squares[18]} | #{@squares[19]} | #{@squares[20]} | #{@squares[21]} | #{@squares[22]} | #{@squares[23]} | #{@squares[24]} |"
                puts " --+---+---+---+---+---+---+---+---+"
                puts " 2 | #{@squares[9]} | #{@squares[10]} | #{@squares[11]} | #{@squares[12]} | #{@squares[13]} | #{@squares[14]} | #{@squares[15]} | #{@squares[16]} |"
                puts " --+---+---+---+---+---+---+---+---+"
                puts " 1 | #{@squares[1]} | #{@squares[2]} | #{@squares[3]} | #{@squares[4]} | #{@squares[5]} | #{@squares[6]} | #{@squares[7]} | #{@squares[8]} | => #{@player_2.name}"
                puts " --+---+---+---+---+---+---+---+---+"
                puts "   | a | b | c | d | e | f | g | h |", "\n"
    end
end