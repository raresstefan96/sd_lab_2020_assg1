class AddCaregiverToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :caregiver
  end
end
