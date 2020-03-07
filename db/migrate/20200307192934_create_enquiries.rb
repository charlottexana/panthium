class CreateEnquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :enquiries do |t|
      t.date :date
      t.string :name
      t.string :company_name
      t.string :phone_number
      t.string :email_address

      t.timestamps
    end
  end
end
