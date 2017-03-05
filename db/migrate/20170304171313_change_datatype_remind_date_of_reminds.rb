class ChangeDatatypeRemindDateOfReminds < ActiveRecord::Migration[5.0]
  def change
    change_column :reminds, :remind_date, :datetime
  end
end
