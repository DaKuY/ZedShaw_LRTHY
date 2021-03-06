# Exercise 36: Designing and Debugging

# Rules For If-Statements
# 1. Every if-statement must have an else.
# 2. If this else should never be run because it doesn’t make sense, then you must use a die function in the else
# that prints out an error message and dies, just like we did in the last exercise. This will find many errors.
# 3. Never nest if-statements more than 2 deep and always try to do them 1 deep. This means if you put an
# if in an if then you should be looking to move that second if into another function.
# 4. Treat if-statements like paragraphs, where each if,‘‘elsif‘‘,‘‘else‘‘ grouping is like a set of sentences.
# Put blank lines before and after.
# 5. Your boolean tests should be simple. If they are complex, move their calculations to variables earlier in your
# function and use a good name for the variable.
# If you follow these simple rules, you will start writing better code than most programmers. Go back to the last exercise
# and see if I followed all of these rules. If not, fix it.
# Warning: Never be a slave to the rules in real life. For training purposes you need to follow these rules to make
# your mind strong, but in real life sometimes these rules are just stupid. If you think a rule is stupid, try not using
# it.

# Rules For Loops
# 1. Use a while-loop only to loop forever, and that means probably never. This only applies to Ruby, other
# languages are different.
# 2. Use a for-loop for all other kinds of looping, especially if there is a fixed or limited number of things to loop
# over.

# Tips For Debugging
# 1. Do not use a “debugger”. A debugger is like doing a full-body scan on a sick person. You do not get any specific
# useful information, and you find a whole lot of information that doesn’t help and is just confusing.
# 2. The best way to debug a program is to use puts or p to print out the values of variables at points in the program
# to see where they go wrong.
# 3. Make sure parts of your programs work as you work on them. Do not write massive files of code before you try
# to run them. Code a little, run a little, fix a little.

# Homework
# Now write a similar game to the one that I created in the last exercise. It can be any kind of game you want in the same
# flavor. Spend a week on it making it as interesting as possible. For extra credit, use arrays, functions, and modules
# (remember those from Ex. 13?) as much as possible, and find as many new pieces of Ruby as you can to make the
# game work.
# There is one catch though, write up your idea for the game first. Before you start coding you must write up a map for
# your game. Create the rooms, monsters, and traps that the player must go through on paper before you code.
# Once you have your map, try to code it up. If you find problems with the map then adjust it and make the code match.
# One final word of advice: Every programmer becomes paralyzed by irrational fear starting a new large project. They
# then use procrastination to avoid confronting this fear and end up not getting their program working or even started. I
# do this. Everyone does this. The best way to avoid this is to make a list of things you should do, and then do them one
# at a time.
# Just start doing it, do a small version, make it bigger, keep a list of things to do, and do them.

# TODO:
# A1. Come up with an idea or a theme. Theme: The Revelation Cave of the Afterlife 
# A2. Design the layout of the rooms. 
# ---------------------------------------------------------------
# |  entrance	| The Saved    	|The Sacrifice  | The Action	|
# | After Death	|	how do		| Do you know	|Romans 3:23	|
# |hell-condemn | you know?		|What God gave	|Romans 10:9-10	|
# |heaven- saved| Jesus-action	|for you?John316|Grace Faith	|
# |else-condemn |else-sacrifice	| The Action	|	The Choice	|
# --------------------------------------------------------------
# |	The Choice	| The Condemned	| The New Belief|The Revelation	|
# |Change your 	|Let me show you|Prayer asking	|	Celebrate!  |
# |ways, change	|what you are 	|Jesus into		|				|
# |thewayyoulive|getting into	|their heart	|				|
# |y-new n-cond	|ok-sac no-end	| Revelation	| end			|
# ---------------------------------------------------------------
# A3. Design the choices in each rooms.
# B1. Design the functions 
# B2. Make sure to use Arrays, Functions, Comments, Save state (save to a file), boolean, loops, if-statements

def prompt()
  print "\n> ";
end

def wait(time)
  sleep(time);
end

def entrance()
  print "\n\nYou walk into 'The Revelation Cave of the Afterlife' and see a wise old man.
Wise Old Man(With a creepy slow voice): 'Hey There! I have a question for ya.\nWhat do you think is going to happen to you after you die?'"
  
  prompt;  next_move = gets.chomp
  
  if next_move.include? "heaven"
    theSaved();
  elsif next_move.include? "hell"
    theCondemned();
  else
    theCondemned();
  end
  
end

def theSaved()
  print "\nHow do you know?\nDo you Know Jesus?"
  
  prompt; next_move = gets.chomp
  
  if next_move == "yes"
    theAction();
  elsif next_move == "no" || next_move == "maybe" || next_move == "kind of"
    theSacrifice();
  else
    print "huh? Let me try to ask you again.";
	wait(1.5);
	theSaved();
  end
  
end

def theSacrifice()
end

def theAction()
  print "\nRomans 3:23 says, 'For all have sinned, and come short of the glory of God.'";
  wait(5);
  print "\n\nRomans 10:9-10 says, 'that if you confess with your mouth the Lord Jesus and \nbelieve in your heart that God has raised Him from the dead, you will be saved.'";
  wait(11);
  print "\nEphesians 2:8-9 says, 'For it is by grace you have been saved, through faith-and this is not from yourselves, it is the gift of God - not by works, so that no \none can boast.'"
  wait(14);
  
  theChoice();

end

def theChoice()
#TODO: He died on the cross (explain crucifixion) for you. Will you accept Jesus Christ as your Lord and Saviour?
end

def theCondemned()
  print "Condemned";
end

def theNewBelief()
end

def theRevelation()
end

entrance();