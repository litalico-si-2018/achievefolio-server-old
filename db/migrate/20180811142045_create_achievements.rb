class CreateAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :achievements do |t|
    	t.integer :type
    	t.integer :value
    	t.string :description
    	t.string :icon
    	t.boolean :secret

      t.timestamps
    end
  end
end
