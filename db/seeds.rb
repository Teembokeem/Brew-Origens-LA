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
                     panel: true,
                     admin: true
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
                    profile_img: "https://i.imgur.com/Imo6HDt.png",
                    password: "keith",
                    password_confirmation: "keith",
                    panel: true)

yael = User.create(pref_name: "yael",
                   email: "yael@email.com",
                   profile_img: "https://i.imgur.com/D15PgNW.png",
                   password: "yael",
                   password_confirmation: "yael",
                   panel: false)

blue_bottle = Roast.create(name: "BELLA DONNA SINGLE ORIGIN",
                           roaster: "Blue Bottle",
                           brand_icon_img: "https://d1yzzccmb3krkj.cloudfront.net/assets/fb-og-image-default-b0bce82fbf6759deaa8fb9b4b848783f6108edc78c42af454c1f82e7e999e093.png",
                           content_img: "https://res.cloudinary.com/hbhhv9rz9/image/upload/c_thumb,h_367,w_576/v1455735194/fce6pl3ovwserj5qyhrq.jpg",
                           price: 21.00)

stumptown = Roast.create(name: "GUATEMALA FINCA EL INJERTO",
                           roaster: "Stumptown",
                           brand_icon_img: "https://i.imgur.com/FzPpQH2.png",
                           content_img: "https://images.food52.com/wahFd7i90LtMfUbbaYqmxeoBjXE=/2000x0/68db4d1e-321f-484d-8e94-6123b157d0c8--2013-0930_stumptown_guatemala-finca_bundle-of-2-021.jpg",
                           price: 19.00)

pig_iron = Roast.create(name: "KENYA GATHAITHI",
                           roaster: "Pig Iron",
                           brand_icon_img: "https://i.imgur.com/G9Spu6M.png",
                           content_img: "http://www.blogto.com/upload/2013/12/2013129-coffee-roasters-toronto.jpg",
                           price: 23.00)

dogwood = Roast.create(name: "EL MERIDIANO + MORA MORA",
                           roaster: "Dogwood",
                           brand_icon_img: "http://static1.squarespace.com/static/54d3c710e4b026182d0162cb/54dd10afe4b09a066bb8bb26/54dd10b0e4b0c1fcf286aeb8/1423773873631/Dogwood-Coffee-Co-logo-03.jpg",
                           content_img: "http://cdn.shopify.com/s/files/1/0063/4412/products/newsnow_prod1_1024x1024.jpg?v=1453150947",
                           price: 21.00)

alabaster = Roast.create(name: "EL SALVADOR / JAIME GUAVARA",
                           roaster: "Alabaster",
                           brand_icon_img: "https://i.imgur.com/Zt4gq2u.png",
                           content_img: "http://static1.squarespace.com/static/5315f5ebe4b01f792da14de1/533acd2de4b020a169fd2222/55afb0d7e4b07bd79ef5107f/1437577447065/IMG_7538.JPG?format=750w",
                           price: 21.00)


Post.create(tldr: "Forged from the hands of God himself", content: "yum", flavor_rating: 2, originality_rating: 3.5, aroma_rating: 5.5, roast_rating: 8.5, user: teembo, roast: blue_bottle )
Post.create(tldr: "meh", content: "filler text", user_rating: 10, user: stretch, roast: blue_bottle )
Post.create(tldr: "Momo :(", content: "filler text", flavor_rating: 2, originality_rating: 2.5, aroma_rating: 5.0, roast_rating: 7.5, user: keith, roast: blue_bottle )
Post.create(tldr: "I got errors again", content: "filler text", user_rating: 10, user: yael, roast: blue_bottle )

Post.create(tldr: "Forged from the hands of God himself", content: "yum", flavor_rating: 10, originality_rating: 4.5, aroma_rating: 4.5, roast_rating: 7.8, user: teembo, roast: stumptown )
Post.create(tldr: "meh", content: "filler text", user_rating: 8, user: stretch, roast: stumptown )
Post.create(tldr: "Momo :(", content: "filler text", flavor_rating: 10, originality_rating: 2.5, aroma_rating: 3.5, roast_rating: 6.8, user: keith, roast: stumptown )
Post.create(tldr: "I got errors again", content: "filler text", user_rating: 8, user: yael, roast: stumptown )

Post.create(tldr: "Forged from the hands of God himself", content: "yum", flavor_rating: 7, originality_rating: 9.5, aroma_rating: 3.5, roast_rating: 6.4, user: teembo, roast: pig_iron )
Post.create(tldr: "meh", content: "filler text", user_rating: 6, user: stretch, roast: pig_iron )
Post.create(tldr: "Momo :(", content: "filler text", flavor_rating: 7, originality_rating: 8.5, aroma_rating: 2.9, roast_rating: 5.9, user: keith, roast: pig_iron )
Post.create(tldr: "I got errors again", content: "filler text", user_rating: 6, user: yael, roast: pig_iron )

Post.create(tldr: "Forged from the hands of God himself", content: "yum", flavor_rating: 5, originality_rating: 7.5, aroma_rating: 9.2, roast_rating: 6.1, user: teembo, roast: dogwood )
Post.create(tldr: "meh", content: "filler text", user_rating: 4, user: stretch, roast: dogwood )
Post.create(tldr: "Momo :(", content: "filler text", flavor_rating: 5, originality_rating: 6.5, aroma_rating: 8.2, roast_rating: 5.2, user: keith, roast: dogwood )
Post.create(tldr: "I got errors again", content: "filler text", user_rating: 4, user: yael, roast: dogwood )

Post.create(tldr: "Forged from the hands of God himself", content: "yum", flavor_rating: 2.5, originality_rating: 5.5, aroma_rating: 7.5, roast_rating: 5.5, user: teembo, roast: alabaster )
Post.create(tldr: "meh", content: "filler text", user_rating: 2, user: stretch, roast: alabaster )
Post.create(tldr: "Momo :(", content: "filler text", flavor_rating: 2.5, originality_rating: 4.5, aroma_rating: 6.5, roast_rating: 4.5, user: keith, roast: alabaster )
Post.create(tldr: "I got errors again", content: "filler text", user_rating: 2, user: yael, roast: alabaster )
