class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:ask]
    if @ask.blank?
      @answer = "Try Again !"
    elsif @ask.ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
