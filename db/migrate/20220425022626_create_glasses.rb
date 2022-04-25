class CreateGlasses < ActiveRecord::Migration[6.1]
  def change
    create_table :glasses do |t|
      t.references :frame_currency
      t.references :lense_currency
      t.float :price
      t.timestamps
    end
  end
end
