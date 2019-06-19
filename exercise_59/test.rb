Components We Need
Players
- initialize
-- type of player
-- codebreaker that use colors (R, B, G, O, W, Y)
Humans
- move
-- Ask for input of four colors
-- store the movement that is made
-- pass it to the game to mark on board

Computers
-- randomly generate four colors 
-- store the movement that is made
-- pass it to the game to mark on board
-- give feedback on the guess that made by the codebreaker
# ---- set correct position = red (use colorize gem)
# ---- set incorrect_position = white (use colorize gem)
# ---- set incorrect position = nil (use colorize gem)
-- report the winner /winning points



Board
- initialize - Create the game board
-- store the grid with the markers of the players
- empty? - check if a position is empty or not?
- full? - check if the board is already full?
- place_color_marker - place marker at array to fill
- get_marker - get color marker and give back the result of that particular guess
- to_s - Display the grid (with 12 arrays)
- winner - shows the winning matched colors
- 



Game
- initialize (takes 2 players)
-- 
- play_game
-- Should loop
--- Show board
--- get user input colors
--- check if the position is full then pass it to the board and continue to second try so on.  restart loop
--- Check if there is a winner or the game is over? If it is over, then show board
--- go to the next player

- show
-- ask for the board's representation (to_s)
