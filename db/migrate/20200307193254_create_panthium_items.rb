class CreatePanthiumItems < ActiveRecord::Migration[5.2]
  def change
    create_table :panthium_items do |t|
      t.string :name
      t.text :description
      t.text :privacy_policy
      t.text :cookie_notice

      t.timestamps
    end
  end
end
