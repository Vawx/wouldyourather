class QuestionsController < ApplicationController
  define_method :index do
      @questions = Question.all
  end

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

  define_method :edit do
    
  end

  private
  define_method :question_params do
    params.require(:question).permit(:optionOne, :optionTwo, :question, :postedBy)
  end
end
