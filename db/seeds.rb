# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Annaface", email: "anna@me.com")
User.create(name: "Your Mom", email: "your@mom.com")
User.create(name: "Barack Obama", email: "president@us.gov")

Article.create(title: "What is Lorem Ipsum?", body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", user_id: 1)
Article.create(title: "This Article Loves Your Mom and Your Mom Loves It Back", body: "Your Mom (born roughly twelve years before you and eleven before her mom) is a well known parent and parental figure. She's celebrated for her dedication to keeping you out of R-rated movies, calling just to 'check up on you', and swallowing more semen than the Bermuda triangle, Moby Dick and the cast of High School Musical put together. Despite a certain 'lack of credibility' most likely caused by said sluttery, your mom is always there to do your laundry, include love as an ingredient in her recipes, teach your sisters the finer points of pole dancing, or crush you with her massive gravitational pull.", user_id: 2)
Article.create(title: "State of the Union 2014", body: "When US President Barack Obama delivered his sixth State of the Union address Tuesday night, those listening at home may have heard variations on a theme that Obama focused on in his fifth address: the US economy and a growing inequality gap.", user_id: 3)
