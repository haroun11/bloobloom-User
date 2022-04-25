class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.references :currency
      t.string :country
      t.timestamps
    end
  end
end
