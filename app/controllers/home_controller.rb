class HomeController < ApplicationController

  def index
    @questions = Question.order(created_at: :desc).all
  end

  def about
  end  

  def question
  end

end
