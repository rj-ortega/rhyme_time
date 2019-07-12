# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pringle = Poem.create( { title: "pringle", poem: "To be, or not to be, that is the question:\n
    Whether 'tis nobler in the mind to suffer\n
    The slings and arrows of outrageous fortune,\n
    Or to take Arms against a Sea of troubles,\n
    And by opposing end them: to die, to sleep" } )
albatross = Poem.create( { title: "albatross", poem: "To be, or not to be, that is the question:\n
    Whether 'tis nobler in the mind to suffer\n
    The slings and arrows of outrageous fortune,\n
    Or to take Ar kefieomeoms against a Sea of troubles,\n
    And by opposing end them: to die, to sleep" } )
volcano = Poem.create( { title: "volcano", poem: "To be, or not to be, that is the question:\n
    Whether 'tis nobler in the mind to suffer\n
    The slings and arrowsakdflj 'eof of outrageous fortune,\n
    Or to take Arms against a Sea of troubles,\n
    And by opposing end them: to die, to sleep" } )

dustino = User.create(name: "Dustin", username: "Dustino", password: "password")
UserPoem.create(user: dustino, poem: volcano)
UserPoem.create(user: dustino, poem: pringle)
UserPoem.create(user: dustino, poem: albatross)