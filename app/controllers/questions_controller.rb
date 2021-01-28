class QuestionsController < ApplicationController

def create
    Question.create(question_params)
    session[:current_user_email] = question_params[:email]
    redirect_to root_path
end

def show
    # variable starting with @ is known as instance variable and available to view
    @question = Question.find(params[:id])
    @answers = @question.answers.order(created_at: :desc)
end

private 

# This is a private method for setting params with specific parameter
def question_params
    params.require(:question).permit(:email, :body)
end

end
