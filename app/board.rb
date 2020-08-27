require 'pry'
require 'colorize'

class Board
    attr_reader :squares, :rows, :columns

    def initialize
        @rows = SIZE
        @columns = SIZE
        @bg_colors = [:light_white, :cyan]
        create_squares(rows, columns)
    end

######################Create Squares###############################
    def create_squares(rows, columns)
        @squares = Array.new(rows) {Array.new(columns)}
    end

######################Draw Board###############################
    def draw_board
        draw_squares(@bg_colors[0])
        show_bottom_letters
    end

######################Create bottom letters###############################
    def show_bottom_letters
        puts "".center(6)+(97.chr..(97+7).chr).to_a.join("".center(7))
    end

######################Draw Squares###############################
    def draw_squares(bg_color)
        rows.times do |row|
            puts "".center(3) + draw_columns(bg_color)
            puts "#{rows-row}".center(3) + draw_columns(row,bg_color)
            puts "".center(3) + draw_columns(bg_color)
            bg_color = change_color(bg_color)
        end
    end

######################Draw Columns###############################
    def draw_columns(row=nil,bg_color)
        line = ""
        columns.times do |column|
            line += get_value_in(row,column).center(8).colorize(:color => :black, :background => bg_color)
            bg_color = change_color(bg_color)
        end
        line
    end
end
        














    ###############################################################################################
        # @player_1 = player_1
        # @player_2 = player_2
        # @squares = Array.new(64, " ")
        # start_pos


#         @positions = [  [a,1], [a,2],[a,3],[a,3],[a,4],[a,5],[a,6],[a,7], [a,8], 
#                         [b,1], [b,2],[b,3],[b,3],[b,4],[b,5],[b,6],[b,7], [b,8],
#                         [c,1], [c,2],[c,3],[c,3],[c,4],[c,5],[c,6],[c,7], [c,8], 
#                         [d,1], [d,2],[d,3],[d,3],[d,4],[d,5],[d,6],[d,7], [d,8], 
#                         [e,1], [e,2],[e,3],[e,3],[e,4],[e,5],[e,6],[e,7], [e,8], 
#                         [f,1], [f,2],[f,3],[f,3],[f,4],[f,5],[f,6],[f,7], [f,8], 
#                         [g,1], [g,2],[g,3],[g,3],[g,4],[g,5],[g,6],[g,7], [g,8], 
#                         [h,1], [h,2],[h,3],[h,3],[h,4],[h,5],[h,6],[h,7], [h,8]]
        
#     end

#     def start_pos
#         #####################Player_1 Pieces white ############################

#         @squares[48] = @player_1.pawn.piece
#         @player_1.pawn1.position = [g,1]
#         @squares[49] = @player_1.pawn.piece
#         @player_1.pawn2.position = [g,2]
#         @squares[50] = @player_1.pawn.piece
#         @player_1.pawn3.position = [g,3]
#         @squares[51] = @player_1.pawn.piece
#         @player_1.pawn4.position = [g,4]
#         @squares[52] = @player_1.pawn.piece
#         @player_1.pawn5.position = [g,5]
#         @squares[53] = @player_1.pawn.piece
#         @player_1.pawn6.position = [g,6]
#         @squares[54] = @player_1.pawn.piece
#         @player_1.pawn7.position = [g,7]
#         @squares[55] = @player_1.pawn.piece

#         #####################Player_2 Pieces black ############################

#         @player_2.pawn8.position = [g,8]
#         @squares[8] = @player_2.pawn.piece
#         @player_2.pawn1.position = [g,1]
#         @squares[9] = @player_2.pawn.piece
#         @player_2.pawn2.position = [g,2]
#         @squares[10] = @player_2.pawn.piece
#         @player_2.pawn3.position = [g,3]
#         @squares[11] = @player_2.pawn.piece
#         @player_2.pawn4.position = [g,4]
#         @squares[12] = @player_2.pawn.piece
#         @player_2.pawn5.position = [g,5]
#         @squares[13] = @player_2.pawn.piece
#         @player_2.pawn6.position = [g,6]
#         @squares[14] = @player_2.pawn.piece
#         @player_2.pawn7.position = [g,7]
#         @squares[15] = @player_2.pawn.piece
#         @player_2.pawn8.position = [g,8]
#     end

#     ########################Draw_Squares#######################

#     def draw_squares
  

binding.pry 
0