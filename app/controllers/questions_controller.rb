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
    if !@question.save
      render :new
      return
    end
    redirect_to root_path
  end

  define_method :edit do
    if current_user.class == NilClass
      redirect_to new_user_registration_path
      return
    end
    @question = Question.find( params[:id] )
    userQuestions = current_user.questions
    foundQuestion = false
    userQuestions.each do |q|
      if q == @question
        foundQuestion = true
      end
    end

    if !foundQuestion
      current_user.questions << @question
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
    end
    redirect_to root_path
  end

  private
  define_method :question_params do
    params.require(:question).permit(:optionOne, :optionTwo, :question, :postedBy)
  end
end
