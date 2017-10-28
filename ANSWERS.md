# Q0: Why is this error being thrown?
	The pokemon model has not been created

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
	There's a randomization running through the 4 starter Pokemon. They are all the first starters of gen 1.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
	It creates a path to tell the Pokemon controller to call the capture method

# Question 3: What would you name your own Pokemon?
	Mumuchu

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
	"/trainers/"+current_trainer.id.to_s
	It's okay because Rails is able to convert it into the right view anyway

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
	in views/layouts/application.html.erb, it is rendering something at the very end

# Give us feedback on the project and decal below!
	This project really brought together all the concepts we've been doing so far

# Extra credit: Link your Heroku deployed app
https://github.com/spacelass/proj1
