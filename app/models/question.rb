class Question < ActiveRecord::Base
  validates :optionOne, presence: true
  validates :optionTwo, presence: true
  validates :question, presence: true

  has_many :users
end
