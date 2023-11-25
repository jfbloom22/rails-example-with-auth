class CreateTempUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :temp_users do |t|
      t.string :email
      t.timestamps
    end
  end
end
