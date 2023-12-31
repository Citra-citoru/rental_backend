class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :kind
      t.string :location
      t.string :image
      t.decimal :number_of_bedroom
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
