class Question < ActiveRecord::Base
  validates :questionOne, presence: true
  validates :questionTwo, presence: true
end
