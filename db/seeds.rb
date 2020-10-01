# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
     

    u1 = User.create(full_name: 'Bobo Theo', username: 'Boby', email: 'bobo.email.com')
    e1 = Event.create(title: 'Sample Event facebook 1', description: 'This is event one', event_date: Date.current, creator: u1)
    e2 = Event.create(title: 'Sample Event facebook 2', description: 'This is event two', event_date: Date.current - 5, creator: u1)
    e3 = Event.create(title: 'Sample Event facebook 3', description: 'This is event three', event_date: Date.current + 5, creator: u1)

    u2 = User.create(full_name: 'Goodluck Mercy', username: 'Lucky', email: 'goodluck.email.com')
    e4 = Event.create(title: 'Sample Event developer meet 1', description: 'This is event one', event_date: Date.current, creator: u2)
    e5 = Event.create(title: 'Sample Event developer meet 2', description: 'This is event two', event_date: Date.current - 7, creator: u2)
    e6 = Event.create(title: 'Sample Event developer meet 3', description: 'This is event three', event_date: Date.current + 8, creator: u2)