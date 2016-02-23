# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.destroy_all
posts = Post.destroy_all
roasts = Roast.destroy_all


teembo = User.create(pref_name: "Teembo",
                     email: "teembo@email.com",
                     profile_img: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAJvAAAAJDFjNzQ0OWY0LTg0YTgtNGJjOS1iZWE4LTNmZTA4YTJhNWNmYQ.jpg",
                     password: "teembo",
                     password_confirmation: "teembo",
                     panel: true
                    )

stretch = User.create(pref_name: "Stretch",
                      email: "stretch@email.com",
                      profile_img: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/1/000/2aa/0c5/22efb52.jpg",
                      password: "stretch",
                      password_confirmation: "stretch",
                      panel: false
                     )

keith = User.create(pref_name: "Keith",
                    email: "keith@email.com",
                    profile_img: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAJvAAAAJDFjNzQ0OWY0LTg0YTgtNGJjOS1iZWE4LTNmZTA4YTJhNWNmYQ.jpg",
                    password: "keith",
                    password_confirmation: "keith",
                    panel: true)

yael = User.create(pref_name: "yael",
                   email: "yael@email.com",
                   profile_img: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/p/1/000/2aa/0c5/22efb52.jpg",
                   password: "yael",
                   password_confirmation: "yael",
                   panel: false)

blue_bottle = Roast.create(name: "BELLA DONNA SINGLE ORIGIN",
                           roaster: "Blue Bottle",
                           brand_icon_img: "https://d1yzzccmb3krkj.cloudfront.net/assets/fb-og-image-default-b0bce82fbf6759deaa8fb9b4b848783f6108edc78c42af454c1f82e7e999e093.png",
                           content_img: "https://res.cloudinary.com/hbhhv9rz9/image/upload/c_thumb,h_367,w_576/v1455735194/fce6pl3ovwserj5qyhrq.jpg",
                           price: 21.00)


Post.create(tldr: "Forged from the hands of God himself", content: "Seriously, whoever made this was thinking of the benevolent future of roast and how the tongue could be uplifted to the highest of highs.", flavor_rating: 8.5, originality_rating: 7.2, aroma_rating: 6.7, roast_rating: 9.2, user: teembo, roast: blue_bottle )
Post.create(tldr: "meh", content: "filler text", user_rating: 5, user: stretch, roast: blue_bottle )
Post.create(tldr: "Momo :(", content: "filler text", flavor_rating: 3.4, originality_rating: 8.6, aroma_rating: 2.9, roast_rating: 4.1, user: keith, roast: blue_bottle )
Post.create(tldr: "I got errors again", content: "filler text", user_rating: 5, user: yael, roast: blue_bottle )
