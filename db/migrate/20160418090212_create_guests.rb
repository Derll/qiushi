class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
    	t.string :name
    	t.string :title
    end
  end
end
