class QuestionsController < ApplicationController
  define_method :new do
    @question = Question.new
  end
end
