# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(username: "Sander", email: "sander@gmail.com", password: "12345")
u2 = User.create(username: "Stu", email: "stu@gmail.com", password: "12345")
u3 = User.create(username: "Kian", email: "kian@gmail.com", password: "12345")
u4 = User.create(username: "Sofia", email: "sofia@gmail.com", password: "12345")

p1 = Practitioner.create(profile_img: "https://scontent-lht6-1.xx.fbcdn.net/v/t31.0-8/21316123_1645765828788964_3443909986466353549_o.jpg?_nc_cat=107&_nc_ht=scontent-lht6-1.xx&oh=83d9d76339439da65e4f00158d037b64&oe=5D7793BD",name: "Dr Sander", address: "Park close, London")
p2 = Practitioner.create(profile_img: "https://hcplive.s3.amazonaws.com/v1_media/_image/happydoctor.jpg",name: "Sofias Salon", address: "Park close, London")
p3 = Practitioner.create(profile_img: "https://hcplive.s3.amazonaws.com/v1_media/_image/happydoctor.jpg",name: "Stus clinic", address: "Gothenburg")
p4 = Practitioner.create(profile_img: "https://ichef.bbci.co.uk/news/624/cpsprodpb/E212/production/_98747875_002563998-2.jpg",name: "Dr Kian", address: "Park close, London")

r1 = Review.create(title: "Great", text: "Very good", star: 5, practitioner_id: p1.id, user_id: u1.id, before_image: "https://www.uni-regensburg.de/Fakultaeten/phil_Fak_II/Psychologie/Psy_II/beautycheck/english/prototypen/w_sexy_gr.jpg", after_image: "https://dxs1x0sxlq03u.cloudfront.net/sites/default/files/article-image/eminence-organics-acne-face-mapping.jpg")
r1 = Review.create(title: "Bad", text: "Not good", star: 1, practitioner_id: p1.id, user_id: u2.id, before_image: "https://www.uni-regensburg.de/Fakultaeten/phil_Fak_II/Psychologie/Psy_II/beautycheck/english/prototypen/w_sexy_gr.jpg", after_image: "https://dxs1x0sxlq03u.cloudfront.net/sites/default/files/article-image/eminence-organics-acne-face-mapping.jpg")
r1 = Review.create(title: "Coool", text: "Cool / good", star: 4, practitioner_id: p3.id, user_id: u3.id, before_image: "https://www.uni-regensburg.de/Fakultaeten/phil_Fak_II/Psychologie/Psy_II/beautycheck/english/prototypen/w_sexy_gr.jpg", after_image: "https://dxs1x0sxlq03u.cloudfront.net/sites/default/files/article-image/eminence-organics-acne-face-mapping.jpg")
r1 = Review.create(title: "OK", text: " OK", star: 3, practitioner_id: p4.id, user_id: u4.id, before_image: "https://www.uni-regensburg.de/Fakultaeten/phil_Fak_II/Psychologie/Psy_II/beautycheck/english/prototypen/w_sexy_gr.jpg", after_image: "https://dxs1x0sxlq03u.cloudfront.net/sites/default/files/article-image/eminence-organics-acne-face-mapping.jpg")
