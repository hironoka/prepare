class CreateReminds < ActiveRecord::Migration[5.0]
  def change
    create_table :reminds do |t|
      t.references :user, foreign_key: true
      t.integer :birthday_user_id
      t.time :remind_date
      t.timestamps
    end
  end
end
