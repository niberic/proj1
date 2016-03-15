# Q0: Why is this error being thrown?
  The pokemon model hasn't been created yet.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
  The random pokemon are appearing everytime the home page is refreshed. They're all starters (well, Pikachu isn't really a starter).
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
  The line creates a button that is used to update/patch the @pokemon object via the capture method found by capture_path.
# Question 3: What would you name your own Pokemon?

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
