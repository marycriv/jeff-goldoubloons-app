# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying now"
Coin.destroy_all
User.destroy_all
Pressing.destroy_all
puts "Destroying complete"

puts "Creating users"
u1 = User.create(username: "mary", password: "mary1", display_name: "mary criv")
u2 = User.create(username: "chris", password: "chris1", display_name: "chris y")
u3 = User.create(username: "rishi", password: "rishi1", display_name: "squishy")
u4 = User.create(username: "kevin", password: "kevin1", display_name: "kebin")
u5 = User.create(username: "jaimie", password: "jaimie1", display_name: "jamjam")
puts "Users are created"



puts "Creatin pressins"
p1 = Pressing.create(name: "surprised goldblum", image_url: "/assets/1.gif")
p2 = Pressing.create(name: "sexy goldblum", image_url: "/assets/2.gif")
p3 = Pressing.create(name: "heavy-breathing goldblum", image_url: "/assets/3.gif")
p4 = Pressing.create(name: "happy goldblum", image_url: "/assets/4.gif")
p5 = Pressing.create(name: "steamy goldblum", image_url: "/assets/5.gif")
p6 = Pressing.create(name: "monkey goldblum", image_url: "/assets/6.gif")
puts "Pressins be done"

puts "Creatin some coins"
c1 = Coin.create(user_id: u1.id, pressing_id: p1.id)
c2 = Coin.create(user_id: u1.id, pressing_id: p2.id)
c3 = Coin.create(user_id: u1.id, pressing_id: p4.id)
c4 = Coin.create(user_id: u2.id, pressing_id: p1.id)
c5 = Coin.create(user_id: u3.id, pressing_id: p3.id)
c6 = Coin.create(user_id: u4.id, pressing_id: p5.id)
c7 = Coin.create(user_id: u4.id, pressing_id: p6.id)
c8 = Coin.create(user_id: u5.id, pressing_id: p4.id)
c9 = Coin.create(user_id: u5.id, pressing_id: p5.id)
c10 = Coin.create(user_id: u5.id, pressing_id: p6.id)
puts "Coins be created"
