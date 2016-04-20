class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :title
      t.text :content
      t.string :username
      t.integer :guest_id
      t.integer :bonus
      t.string :timestamps

      t.timestamps
    end
  end
end
