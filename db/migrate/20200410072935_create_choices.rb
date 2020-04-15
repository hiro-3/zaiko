class CreateChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :choices do |t|
      t.integer :user_id
      t.integer :check
      
      t.timestamps
    end
  end
end
