# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying Seeds"

# Company.destroy_all
# Review.destroy_all
User.destroy_all
Quiz.destroy_all
QuizQuestion.destroy_all
AnswerAttribute.destroy_all

puts "Replanting Seeds"

# Company.create!([
#   { 
#     name: "Meta",
#     image_url: "https://1000logos.net/wp-content/uploads/2021/10/Meta-Logo.png"
#   }, 
#   { 
#     name: "Amazon",
#     image_url: "https://1000logos.net/wp-content/uploads/2016/10/Amazon-Logo.png"
#   },
#   { 
#     name: "Tiktok",
#     image_url: "https://1000logos.net/wp-content/uploads/2019/06/Tiktok_Logo.png" 
#   }, 
#   { 
#     name: "Airbnb",
#     image_url: "https://1000logos.net/wp-content/uploads/2017/08/Airbnb-Logo.png" 
#   }, 
#   { 
#     name: "Bumble",
#     image_url: "https://1000logos.net/wp-content/uploads/2021/05/Bumble-logo.png" 
#   }, 
#   { 
#     name: "DoorDash",
#     image_url: "https://1000logos.net/wp-content/uploads/2021/06/DoorDash-logo.png" 
#   },
#   { 
#     name: "Ebay",
#     image_url: "https://1000logos.net/wp-content/uploads/2018/10/Ebay-Logo-1.png" 
#   },
#   { 
#     name: "Dropbox",
#     image_url: "https://1000logos.net/wp-content/uploads/2020/08/Dropbox-logo.png" 
#   },
#   { 
#     name: "GitHub",
#     image_url: "https://1000logos.net/wp-content/uploads/2021/05/GitHub-logo.png" 
#   },
#   { 
#     name: "Glassdoor",
#     image_url: "https://1000logos.net/wp-content/uploads/2021/12/Glassdoor-Logo.png" 
#   }
# ])

# User.create!(username: "joe1", password:"1", first_name: "joe", last_name: "1")
# User.create!(username: "yes2", password:"2", first_name: "yes", last_name: "2")
# User.create!(username: "okay3", password:"3", first_name: "okay", last_name: "3")

# Review.create!(title: "Good", description: "Amazing office and friendly coworker", score: 4, company_id: 34, user_id: 12)
# Review.create!(title: "Normal", description: "Everone are working hard here", score: 3, company_id: 35, user_id: 13)
# Review.create!(title: "Fun", description: "Team knows how to work in a fun way", score: 5, company_id: 36, user_id: 14)

user1 = User.create(name: "Ajoe", password_digest: "joe1", email: "joe1@joe1.com", user_type: "admin")
user1 = User.create(name: "Ujoe", password_digest: "joe2", email: "joe2@joe2.com", user_type: "user")
# user1 = User.create(name: "Walter", password_digest: "test", email: "test@test.com", user_type: "admin")
# user1 = User.create(name: "Karson", password_digest: "test", email: "test@test.com", user_type: "user")
# user1 = User.create(name: "Matteo", password_digest: "test", email: "test@test.com", user_type: "admin")
# user1 = User.create(name: "Leo", password_digest: "test", email: "test@test.com", user_type: "user")

# user_quiz_1 = Quiz.create(quiz_name: "Introvert Extrovert Quiz", user_id: 1)
# user_quiz_2 = Quiz.create(quiz_name: "React Pro Quiz", user_id: 2)
# user_quiz_3 = Quiz.create(quiz_name: "Small Doggo Quiz", user_id: 3)
# user_quiz_4 = Quiz.create(quiz_name: "AlgoPro Quiz", user_id: 4)
# user_quiz_5 = Quiz.create(quiz_name: "Don't Judge Me Quiz", user_id: 5)
# user_quiz_6 = Quiz.create(quiz_name: "Comedy Quiz", user_id: 6)
#test

# question1 = QuizQuestion.create(question: "On a Friday Night you prefer to be...", quiz_id: 1)
# question2 = QuizQuestion.create(question: "At a Party you are...", quiz_id: 1)
# question3 = QuizQuestion.create(question: "I am super talkative...", quiz_id: 1)

# answer1 = QuizAnswer.create(answer: "Out on the town with my friends", quiz_question_id: 1)
# answer2 = QuizAnswer.create(answer: "At home watching Netflix", quiz_question_id: 1)
# # answer3 = QuizAnswer.create(answer: "answer3", quiz_question_id: 1)
# answer4 = QuizAnswer.create(answer: "The center of attention", quiz_question_id: 2)
# answer5 = QuizAnswer.create(answer: "Petting the dog", quiz_question_id: 2)
# # answer6 = QuizAnswer.create(answer: "answer3", quiz_question_id: 2)
# answer7 = QuizAnswer.create(answer: "false", quiz_question_id: 3)
# answer8 = QuizAnswer.create(answer: "true", quiz_question_id: 3)
# # answer9 = QuizAnswer.create(answer: "answer3", quiz_question_id: 3)

# attribute1 = AnswerAttribute.create(answer_attribute: "extrovert", quiz_answer_id: 1)
# attribute2 = AnswerAttribute.create(answer_attribute: "introvert", quiz_answer_id: 2)
# # attribute3 = AnswerAttribute.create(answer_attribute: "attr 1", quiz_answer_id: 3)
# attribute4 = AnswerAttribute.create(answer_attribute: "extrovert", quiz_answer_id: 3)
# attribute5 = AnswerAttribute.create(answer_attribute: "introvert", quiz_answer_id: 4)
# # attribute6 = AnswerAttribute.create(answer_attribute: "attr 1", quiz_answer_id: 6)
# attribute7 = AnswerAttribute.create(answer_attribute: "introvert", quiz_answer_id: 5)
# attribute8 = AnswerAttribute.create(answer_attribute: "extrovert", quiz_answer_id: 6)
# attribute9 = AnswerAttribute.create(answer_attribute: "attr 1", quiz_answer_id: 9)


puts "Seeds Done ✅"
