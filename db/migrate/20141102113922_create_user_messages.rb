class CreateUserMessages < ActiveRecord::Migration
  def change
    create_table :user_messages do |t|
      t.text :text
      t.string :user_name
      

      t.timestamps
    end
  end
end
