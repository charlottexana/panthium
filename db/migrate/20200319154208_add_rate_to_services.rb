class AddRateToServices < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :rate, :integer
  end
end
