class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
    	t.integer :user_id
    	t.integer :year
    	t.integer :month
    	t.integer :date
    	t.integer :approved_id
    	t.boolean :approved

      t.timestamps
    end
  end
end
