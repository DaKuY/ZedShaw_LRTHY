#Exercise 10: What Was That?

#\t tab \n new line \\ is one slash
tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split \non a line."
backslash_cat = "I'm \\ a \\ cat."

# << indicates a paragraph 
fat_cat = <<MY_HEREDOC
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
MY_HEREDOC

#prints
puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat