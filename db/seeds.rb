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
p1 = Pressing.create(name: "surprised goldblum", image_url: "/assets/1.gif", rarity: 3)
p2 = Pressing.create(name: "sexy goldblum", image_url: "/assets/2.gif", rarity: 1)
p3 = Pressing.create(name: "heavy-breathing goldblum", image_url: "/assets/3.gif", rarity: 4)
p4 = Pressing.create(name: "happy goldblum", image_url: "/assets/4.gif", rarity: 10)
p5 = Pressing.create(name: "steamy goldblum", image_url: "/assets/5.gif", rarity: 1)
p6 = Pressing.create(name: "monkey goldblum", image_url: "/assets/6.gif", rarity: 5)
p7 = Pressing.create(name: "harvey goldblum", image_url: "/assets/7.gif", rarity: 3)
p8 = Pressing.create(name: "cigar goldblum", image_url: "/assets/8.gif", rarity: 7)
p9 = Pressing.create(name: "champion goldblum", image_url: "/assets/9.gif", rarity: 8)
p10 = Pressing.create(name: "budapest goldblum", image_url: "/assets/10.gif", rarity: 6)

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
