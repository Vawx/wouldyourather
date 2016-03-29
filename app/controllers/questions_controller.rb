class QuestionsController < ApplicationController
  define_method :index do
      @questions = Question.all.order(id: :desc)
  end

  define_method :new do
    @question = Question.new
  end

  define_method :create do
    @question = Question.new(question_params)
    @question.questionOneVotes = 0
    @question.questionTwoVotes = 0
    if @question.save
      redirect_to root_path
    else
      render :new
    end
  end

  define_method :edit do
    @question = Question.find( params[:id] )
    currentVotes = 0
    if params[:format] == "1"
      currentVotes = ( @question.questionOneVotes.class == NilClass ) ? 1 : @question.questionOneVotes
      if @question.update(:questionOneVotes => currentVotes + 1 )

      end
    elsif params[:format] == "2"
      currentVotes = ( @question.questionTwoVotes.class == NilClass ) ? 1 : @question.questionTwoVotes
      if @question.update(:questionTwoVotes => currentVotes + 1 )

      end
    end
    redirect_to questions_path
  end

  private
  define_method :question_params do
    params.require(:question).permit(:optionOne, :optionTwo, :question, :postedBy)
  end
end
