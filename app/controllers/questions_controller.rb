class QuestionsController < ApplicationController

  def ask

  end

  def answer
    @question = params[:question]
    @answer = generate_answer(@question)
  end

  private

  def generate_answer(question)
    if question.downcase == 'i am going to work'
      'Great!'
    elsif question.include?('?')
      'Silly questions, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
