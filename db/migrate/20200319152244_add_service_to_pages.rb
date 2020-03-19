class AddServiceToPages < ActiveRecord::Migration[5.2]
  def change
    add_reference :pages, :service, foreign_key: true
  end
end
