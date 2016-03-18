# Q0: Why is this error being thrown?
  The pokemon model hasn't been created yet.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
  The random pokemon are appearing everytime the home page is refreshed. They're all starters (well, Pikachu isn't really a starter).
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
  The line creates a button that is used to update/patch the @pokemon object via the capture method found by capture_path.
# Question 3: What would you name your own Pokemon?
  Rando, and it'll have four abilities, Metronome, Metronome, Metronome, and finally Metronome.
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
  It wasn't a path. I passed in "Trainer.find_by(id: @poke.trainer_id)" because we're redirecting
  to a specific trainer's page, which we can't get to using a path.
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
  The line looks at the @pokemon instance variable and prints out the error message set by the failed call to @pokemon.save.
# Give us feedback on the project and decal below!
  Decal so far has been interesting. The project itself was pretty straight forward with the documentation, however, I had some issues where the spec told us to create a 'pokemon' controller, instead of a 'pokemons' controller. I ran into some bugs where I couldn't get my routing to work out, but once I changed the controller to 'pokemons', it all worked out. It would've saved a bit of debugging time if the names were consistent.

# Extra credit: Link your Heroku deployed app
https://gentle-atoll-12252.herokuapp.com/
