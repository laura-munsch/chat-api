# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Message.destroy_all

user1 = User.create(name: "Carlson", firstname: "Anne", phone: 684539203)
user2 = User.create(name: "Foster", firstname: "Nathan", phone: 722487490)
user1 = User.create(name: "Koyne", firstname: "Frankie", phone: 667884291)

message1 = Message.create(content: "Bonjour Nathan", sender_id: 1, recipient_id: 2)
message2 = Message.create(content: "Bonjour Anne !", sender_id: 2, recipient_id: 1)