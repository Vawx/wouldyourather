class CreateQuestion < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.column :questionOne, :string
      t.column :questionTwo, :string
      t.column :questionOneVotes, :integer
      t.column :questionTwoVotes, :integer
      t.column :postedBy, :string

      t.timestamps null: false
    end
  end
end
