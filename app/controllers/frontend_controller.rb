class FrontendController < ApplicationController
  define_method :index do
    @questions = Question.all
  end
end
