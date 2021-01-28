class AnswersController < ApplicationController

def create
   # Here question is local variable
   question = Question.find(params[:answer][:question_id])
   question.answers.create(answer_params())

   session[:current_user_email] = answer_params[:email];
   
   redirect_to question
end

private 

def answer_params
   params.require(:answer).permit(:question_id, :email, :body)
end

end
