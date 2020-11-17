class CreateAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :admins do |t|
      t.string :email_address
      t.password_digest :password

      t.timestamps
    end
  end
end
