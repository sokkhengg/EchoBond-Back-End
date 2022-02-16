class UserAttributesController < ApplicationController
  def index
      scores = UserAttribute.all
      #scores = UserAttribute.group(:quiz_id)
      render json: scores
  end

  def unique
      scores = UserAttribute.all
      uniqueScores = {}
      scores.each do |score|
          if !uniqueScores.key?(score.quiz_id)
              uniqueScores[score.quiz_id] = score
          end
      end
      render json: uniqueScores
      #render json: { message: "Something went wrong." }
  end

  def show
      scores = UserAttribute.where(quiz_id: params[:id])
      scoresByQuiz = {}
      scores.each do |score|
          scoresByQuiz[score.user_id] = {
              user_id: User.find_by(id: score.user_id)
          }
      end
      scores.each do |score|
          scoresByQuiz[score.user_id][score.attr] = score.score
      end
      if (scores)
          render json: scoresByQuiz
      else
          render json: { message: 'Quiz not found.'}
      end
  end

  def create
      #byebug
      user = User.find_by(name: score_params[:name])
      score_params[:userScore].each do |object|
          #byebug
          newScore = UserAttribute.create(
              user_id: user.id,
              attr: object[:attr],
              quiz_id: score_params[:quizID],
              score: object[:score]
          )
          if newScore.save
              print "IT WORKED"
          else
              print "Nope"
          end
      end
      render json: user
  end

  private
  def score_params
      params.permit(
          :name,
          :quizID,
          userScore: [ 
              :attr,
              :score
           ]
      )
          
  end
end

# - The code is trying to find the top scores for a quiz. - It starts by finding all of the users that have taken this quiz, then it goes through each user and finds their score. - The code is using UserAttribute which is an ActiveRecord model class that has methods like group, select, distinct, and all.
# - The code will render the following JSON. - { "scores": [ { "quiz_id": 1 }, { "quiz_id": 2 }, { "quiz_id": 3 } ] }

# - The code starts by finding all the users who have taken a quiz. - Then it loops through each user and finds their score for that quiz. - Finally, if there are scores, then it renders them in JSON format.
# - The code will render the following JSON: - { "scores": [ { "user_id": 1, "attr": 3 }, { "user_id": 2, "attr": 5 } ] }

# - The code starts by creating a new user object. - The code then iterates through the score_params hash and creates a new UserAttribute object for each key in the hash. - The code saves these objects to the database, and prints "IT WORKED" if they were saved successfully or "Nope" otherwise. - The render json: user function renders an HTML page with information about this particular user's quiz scores.
# - The code creates a new user object with the attributes quiz_id, score and name. - The code then finds the user with the given name and updates their score in that particular quiz.