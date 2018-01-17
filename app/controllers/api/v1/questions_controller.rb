require 'rest-client'
require 'JSON'
class Api::V1::QuestionsController < ApplicationController



  def get_questions
    @difficulty = params[:difficulty]
    @category = params[:category]
    x = RestClient.get("https://opentdb.com/api.php?amount=10&category=#{@category}&difficulty=#{@difficulty}&type=multiple")
    @questions = JSON.parse(x)
    render json: @questions
  end

  private
  def questions_params
    params.permit(:difficulty, :content)
  end

end
