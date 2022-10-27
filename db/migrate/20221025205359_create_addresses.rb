class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :postal_code
      t.string :street
      t.string :district
      t.string :city
      t.string :state
      t.string :ibge_code
      t.references :citizen, null: false, foreign_key: true

      t.timestamps
    end
  end
end
