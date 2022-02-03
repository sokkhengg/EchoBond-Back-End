# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying Seeds"

Company.destroy_all
Review.destroy_all
User.destroy_all

puts "Replanting Seeds"

Company.create!([
  { 
    name: "Meta",
    image_url: "https://1000logos.net/wp-content/uploads/2021/10/Meta-Logo.png"
  }, 
  { 
    name: "Amazon",
    image_url: "https://1000logos.net/wp-content/uploads/2016/10/Amazon-Logo.png"
  },
  { 
    name: "Tiktok",
    image_url: "https://1000logos.net/wp-content/uploads/2019/06/Tiktok_Logo.png" 
  }, 
  { 
    name: "Airbnb",
    image_url: "https://1000logos.net/wp-content/uploads/2017/08/Airbnb-Logo.png" 
  }, 
  { 
    name: "Bumble",
    image_url: "https://1000logos.net/wp-content/uploads/2021/05/Bumble-logo.png" 
  }, 
  { 
    name: "DoorDash",
    image_url: "https://1000logos.net/wp-content/uploads/2021/06/DoorDash-logo.png" 
  },
  { 
    name: "Ebay",
    image_url: "https://1000logos.net/wp-content/uploads/2018/10/Ebay-Logo-1.png" 
  },
  { 
    name: "Dropbox",
    image_url: "https://1000logos.net/wp-content/uploads/2020/08/Dropbox-logo.png" 
  },
  { 
    name: "GitHub",
    image_url: "https://1000logos.net/wp-content/uploads/2021/05/GitHub-logo.png" 
  },
  { 
    name: "Glassdoor",
    image_url: "https://1000logos.net/wp-content/uploads/2021/12/Glassdoor-Logo.png" 
  }
])

User.create!(username: "joe1", password:"1", first_name: "joe", last_name: "1")
User.create!(username: "yes2", password:"2", first_name: "yes", last_name: "2")
User.create!(username: "okay3", password:"3", first_name: "okay", last_name: "3")

# Review.create!(title: "Good", description: "Amazing office and friendly coworker", score: 4, company_id: 34, user_id: 12)
# Review.create!(title: "Normal", description: "Everone are working hard here", score: 3, company_id: 35, user_id: 13)
# Review.create!(title: "Fun", description: "Team knows how to work in a fun way", score: 5, company_id: 36, user_id: 14)

puts "Seeds Done ✅"
