class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    unless @question.nil?
      if @question == "I am going to work"
        @answer = "Great, but you're still fat though!"
      elsif @question.end_with?("?")
       @answer = "Silly question, get up and workout, you're still fat!"
     else @answer = "You're a great person ... just kidding you're fat and lazy!"
     end
   end
 end
end
