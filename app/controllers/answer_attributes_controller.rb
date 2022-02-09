class AnswerAttributesController < ApplicationController
  def index
      answer_attributes = AnswerAttribute.all
      render json: answer_attributes
  end

  def show
      answer_attributes = AnswerAttribute.find_by(id: params[:id])
      if (answer_attributes)
          render json: answer_attributes
      else
          render json: { message: 'Quiz not found.'}
      end
  end

  def create
      answer_attribute = AnswerAttribute.new(answer_attribute_params)
      if answer_attribute.save
          render json: answer_attribute
      else
          render json: { message: "Something went wrong." }
      end
  end

  private
  def answer_attribute_params
      params.permit(:answer_attribute, :question_id)
  end
end
