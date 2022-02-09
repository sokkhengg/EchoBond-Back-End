class QuizAnswersController < ApplicationController
  def index
      quiz_answers = QuizAnswer.all
      #render json: QuizAnswerSerializer.new(quiz_answers)
      render json: quiz_answers
  end

  def show
      quiz_answers = QuizAnswer.find_by(id: params[:id])
      if (quiz_answers)
          render json: QuizAnswerSerializer.new(quiz_answers)
      else
          render json: { message: 'Quiz not found.'}
      end
  end

  def create
      quiz_answer = QuizAnswer.new(quiz_answer_params)
      if quiz_answer.save
          render json: QuizAnswerSerializer.new(quiz_answer)
      else
          render json: { message: "Something went wrong." }
      end
  end

  private
  def quiz_answer_params
      params.permit(:answer, :question_id)
  end
end
