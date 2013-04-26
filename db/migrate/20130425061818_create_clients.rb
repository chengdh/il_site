class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :company_name
      t.string :email
      t.string :password
      t.string :subdomain
      t.boolean :is_active

      t.timestamps
    end
  end
end
