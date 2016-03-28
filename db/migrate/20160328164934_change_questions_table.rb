class ChangeQuestionsTable < ActiveRecord::Migration
  def change
    remove_column :questions, :questionOne
    remove_column :questions, :questionTwo

    add_column :questions, :optionOne, :string
    add_column :questions, :optionTwo, :string
    add_column :questions, :question, :string
  end
end
