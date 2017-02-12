class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :item_type, null: false
      t.string :item_description

      t.timestamps
    end
  end
end
