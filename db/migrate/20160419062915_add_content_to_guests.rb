class AddContentToGuests < ActiveRecord::Migration
  def change
    add_column :guests, :question_num, :integer
    add_column :guests, :experience, :integer
    add_column :guests, :level, :integer
    add_column :guests, :wealth, :integer
    add_column :guests, :timestamps, :string
  end
end
