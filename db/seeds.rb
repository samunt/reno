# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# #
# # Examples:
# #
# #   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# #   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: 'Mary Jane', email:'test@test.com', password:'test', password_confirmation:'test')
User.create(name: 'John Doe', email:'test2@test2.com', password:'test2', password_confirmation:'test2')
User.create(name: 'Jane Doe', email:'test2@tessdfsdt2.com', password:'test2', password_confirmation:'test2')


Project.create(name: '123 Street Avenue, Toronto', description: 'Beautiful 3 bed, 2 bath for reno', picture_url: 'http://www.loghouse.fi/wp-content/uploads/2011/11/log-house-5.jpg', deadline: DateTime.new(2018, 6, 22), user_id: 1, max_shares: 200)
Project.create(name: '220 King Street West, Toronto', description: 'Awesome bungalo needs facelift', picture_url: 'https://www.hstudion.com/wp-content/uploads/2014/07/house-interior-interior-design-awesome-contemporary-manufactured-homes-in-arizona-contemporary-manufactured-homes-california-contemporary-manufactured-homes-for-sale-contemporary-manufactured-home.jpg', deadline: DateTime.new(2018, 6, 22), user_id: 1, max_shares: 100)
Project.create(name: '837 Hampton Street, Toronto', description: 'Get a piece of this 4 bedroom flip', picture_url: 'http://www.mindgem.com/wp-content/uploads/2013/03/cheap-houses-588x400.jpg', deadline: DateTime.new(2018, 6, 22), user_id: 2, max_shares: 100)
Project.create(name: '22 Markwood Avenue, Toronto', description: '1930s vintage house with 2 bedroom and 2 bathrooms', picture_url: 'http://clv.h-cdn.co/assets/cm/15/09/54f0d9d889efa_-_01-millertinyhouse-048-edit1-lgn.jpg', deadline: DateTime.new(2018, 6, 22), user_id: 2, max_shares: 70)
Project.create(name: '1395 Convair Drive, Toronto', description: 'College house needs reno to flip, 2 bed 2 bath', picture_url: 'http://st.hzcdn.com/simgs/4841b4bc00d88ef0_4-2993/rustic-exterior.jpg', deadline: DateTime.new(2018, 6, 22), user_id: 1, max_shares: 100)
Project.create(name: '289 Kennedy Road, Toronto', description: '1 bed 1 bath house', picture_url: 'http://1cqgxm3l59yi2wwbnn3qy35h.wpengine.netdna-cdn.com/wp-content/uploads/2011/08/Texas-Tiny-Houses-Round-Top-green-house1.jpg', deadline: DateTime.new(2018, 6, 22), user_id: 1, max_shares: 70)
Project.create(name: '1903 Yonge Street, Toronto', description: 'Amazing 3 bed 2 bath home for renovation', picture_url: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSd3vGO2yfhhO1x6DsKbPDHsOdbNW7b3MJJVqZl-ko73jKl2XFx', deadline: DateTime.new(2018, 6, 22), user_id: 2, max_shares: 100)

Share.create(share_type: 'voting', price: 5, project_id:1)
Share.create(share_type: 'non-voting (A)', price: 3, project_id:1)
Share.create(share_type: 'non-voting (B)', price: 2, project_id:1)
Share.create(share_type: 'voting', price: 5, project_id:2)
Share.create(share_type: 'non-voting (A)', price: 3, project_id:2)
Share.create(share_type: 'non-voting (B)', price: 2, project_id:2)
Share.create(share_type: 'voting', price: 10, project_id:3)
Share.create(share_type: 'non-voting (A)', price: 5, project_id:3)
Share.create(share_type: 'non-voting (B)', price: 4, project_id:3)
Share.create(share_type: 'voting', price: 25, project_id:4)
Share.create(share_type: 'non-voting (A)', price: 15, project_id:4)
Share.create(share_type: 'non-voting (B)', price: 10, project_id:4)
Share.create(share_type: 'voting', price: 15, project_id:5)
Share.create(share_type: 'non-voting (A)', price: 10, project_id:5)
Share.create(share_type: 'non-voting (B)', price: 5, project_id:5)
Share.create(share_type: 'voting', price: 5, project_id:6)
Share.create(share_type: 'non-voting (A)', price: 2, project_id:6)
Share.create(share_type: 'non-voting (B)', price: 1, project_id:6)
Share.create(share_type: 'voting', price: 5, project_id:7)
Share.create(share_type: 'non-voting (A)', price: 2, project_id:7)
Share.create(share_type: 'non-voting (B)', price: 1, project_id:7)

Purchase.create(number_of_shares: 50, user_id: 1, project_id: 1, share_id: 1)
Purchase.create(number_of_shares: 10, user_id: 1, project_id: 2, share_id: 4)
Purchase.create(number_of_shares: 20, user_id: 1, project_id: 3, share_id: 7)
Purchase.create(number_of_shares: 5, user_id: 1, project_id: 4, share_id: 10)
Purchase.create(number_of_shares: 10, user_id: 1, project_id: 5, share_id: 13)
Purchase.create(number_of_shares: 5, user_id: 1, project_id: 6, share_id: 16)
Purchase.create(number_of_shares: 5, user_id: 1, project_id: 7, share_id: 19)

Purchase.create(number_of_shares: 5, user_id: 1, project_id: 1, share_id: 2)
Purchase.create(number_of_shares: 5, user_id: 1, project_id: 2, share_id: 5)
Purchase.create(number_of_shares: 5, user_id: 1, project_id: 3, share_id: 8)
Purchase.create(number_of_shares: 5, user_id: 1, project_id: 4, share_id: 11)
Purchase.create(number_of_shares: 5, user_id: 1, project_id: 5, share_id: 14)
Purchase.create(number_of_shares: 5, user_id: 1, project_id: 6, share_id: 17)
Purchase.create(number_of_shares: 5, user_id: 1, project_id: 7, share_id: 20)

Purchase.create(number_of_shares: 10, user_id: 1, project_id: 1, share_id: 3)
Purchase.create(number_of_shares: 10, user_id: 1, project_id: 2, share_id: 6)
Purchase.create(number_of_shares: 10, user_id: 1, project_id: 3, share_id: 9)
Purchase.create(number_of_shares: 10, user_id: 1, project_id: 4, share_id: 12)
Purchase.create(number_of_shares: 10, user_id: 1, project_id: 5, share_id: 15)
Purchase.create(number_of_shares: 10, user_id: 1, project_id: 6, share_id: 18)
Purchase.create(number_of_shares: 10, user_id: 1, project_id: 7, share_id: 21)
