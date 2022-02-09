class QuizQuestionsController < ApplicationController
  def index
      quiz_questions = QuizQuestion.all
      #render json: QuizQuestionSerializer.new(quiz_questions)
      render json: quiz_questions
  end

  def show
      quiz_questions = QuizQuestion.find_by(id: params[:id])
      if (quiz_questions)
          render json: QuizQuestionSerializer.new(quiz_questions)
      else
          render json: { message: 'Quiz not found.'}
      end
  end

  def create
      quiz_question = QuizQuestion.new(quiz_question_params)
      if quiz_question.save
          render json: QuizQuestionSerializer.new(quiz_question)
      else
          render json: { message: "Something went wrong." }
      end
  end

  private
  def quiz_question_params
      params.permit(:question, :quiz_id)
  end
end
