
require 'faker'

Review.destroy_all
User.destroy_all
Restaurant.destroy_all


resto_images = [ "https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                 "https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                 "https://images.pexels.com/photos/2087748/pexels-photo-2087748.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                 "https://images.pexels.com/photos/4194390/pexels-photo-4194390.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                 "https://images.pexels.com/photos/1437267/pexels-photo-1437267.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                 "https://images.pexels.com/photos/884600/pexels-photo-884600.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                 "https://images.pexels.com/photos/2098085/pexels-photo-2098085.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
               ]

categories = ["Salads", "Wraps", "Sushi", "Sandwiches", "Healthy", "Juices", "Chicken", "Western", "Acai", "Juices"]
delivery_price_cents = [499, 199, 449, 339]

def take_three_uniq(arr)
  new_arr = []
  while new_arr.uniq == new_arr && new_arr.length != 3
    new_arr << arr.sample
    new_arr.uniq!
  end
  new_arr
end


15.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    rating: rand + 4,
    review_count: rand(40..700),
    categories: take_three_uniq(categories),
    distance_meters: rand(100..200),
    delivery_price_cents: delivery_price_cents.sample,
    min_delivery_time: [10, 15, 20].sample,
    max_delivery_time: [30, 40, 50].sample,
    image_url: resto_images.sample
  )
end




30.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email
    )
end


100.times do
  Review.create(
    content: Faker::ChuckNorris.fact,
    user: User.all.sample,
    restaurant: Restaurant.all.sample
    )
end



