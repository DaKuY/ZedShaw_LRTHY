# Exercise 23: Read Some Code

1. Go to github.com with your favorite web browser and search for “ruby”.
2. Pick a random project and click on it.
3. Click on the Source tab and browse through the list of files and directories until you find a .rb file.
4. Start at the top and read through it, taking notes on what you think it does.
5. If any symbols or strange words seem to interest you, write them down to research later.

Now try several other sites:
• heroku.com
• rubygems.org
• bitbucket.org


https://github.com/daveworth
https://github.com/JoelWalden >> Dave Ramsey Employee

https://github.com/joelwalden/ruby-snake/blob/master/snake.rb

require 'gosu' >> Gosu is a 2d game dev lib
Class Snake

class Foo
  attr_accessor :bar
end
is equivalent to this code:

class Foo
  def bar
    @bar
  end
  def bar=( new_value )
    @bar = new_value
  end
end

defining a new variable
attr_accessor >> read and write
attr_reader >> only read (get)
attr_writer >> only write (set)


4 classes
- Snake
	+ Window size, position
	+ has methods
		- draw (draw the snake in Green)
		- update position (update were the snake is)
		- add segment (making the snake longer)
		- ate apple? (did the snake eat the applereturns boolean )
		- hit self (did the snake hit its self, is the head in the same position as the full snake? returns boolean)
		- out of bounds (did the snake go off the grid? returns boolean)
- Segment
	+ draws the snake (length using x and y coordinates)
- Apple
	+ creates a new apple using the random function for x and y
- Game Window
	+ initializes the window and the other classes
	+ methods
		- update 
			+ updates snake position by calling the snake class and sending the direction
			+ Calls the apple class to see if the snake eats the apple then it increases the snake length, score, and speed.
			+ Checks to see if the snake hit itself by calling the snake class, method ate_apple?, if so start a new game
			+ Checks to see if the snake is out of bounds by calling the snake class, method hit_self?, if so then start a new game
		- draw
			+ new game
				- menu to start again
			+ existing game
				- update the snake class, apple class, and the score