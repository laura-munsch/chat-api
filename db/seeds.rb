# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Message.destroy_all
User.destroy_all

user1 = User.create(name: "Carlson", firstname: "Anne", phone: 684539203)
user2 = User.create(name: "Foster", firstname: "Nathan", phone: 722487490)
user3 = User.create(name: "Koyne", firstname: "Frankie", phone: 667884291)

message1 = Message.create(content: "Bonjour Nathan", sender_id: user1.id, recipient_id: user2.id)
message2 = Message.create(content: "Bonjour Anne !", sender_id: user2.id, recipient_id: user1.id)
message3 = Message.create(content: "Salut Frankie, comment vas-tu ?", sender_id: user1.id, recipient_id: user3.id)
message4 = Message.create(content: "Ça va ?", sender_id: user1.id, recipient_id: user2.id)