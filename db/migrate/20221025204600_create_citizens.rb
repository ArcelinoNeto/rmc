class CreateCitizens < ActiveRecord::Migration[6.1]
  def change
    create_table :citizens do |t|
      t.string :full_name
      t.string :cpf
      t.string :cns
      t.string :email
      t.string :birthdate
      t.string :phone
      t.integer :status
      t.string :photograph
      t.references :county, null: false, foreign_key: true

      t.timestamps
    end
  end
end
