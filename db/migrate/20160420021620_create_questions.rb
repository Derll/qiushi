class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :title
      t.text :content
      t.string :username
      t.integer :comment_id
      t.string :timestamps

      t.timestamps
    end
  end
end
