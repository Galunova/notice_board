# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin = User.create!(email: 'admin@example.com',
										name: 'Admin' ,
										password: 'qweqwe', 
										password_confirmation: 'qweqwe', 
										admin: true)
user1 = User.create!(email: 'boris.ogurkis@example.com', 
										name: 'Boris',
										password: 'qweqwe', 
										password_confirmation: 'qweqwe')

category1 = Category.create!(title: 'simple category')

notice = Notice.create!(title: "simple notice",
									     content: "This is sample notice",
									     contact_details: "ololo street, 9379992",
									     user_id: user1.id,
									     category_id: category1.id)