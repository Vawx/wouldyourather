class QuestionsController < ApplicationController
  define_method :new do
    @question = Question.new
  end

  define_method :create do
    @question = Question.new(question_params)
    if @question.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  define_method :question_params do
    params.require(:question).permit(:questionOne, :questionTwo, :postedBy)
  end
end
