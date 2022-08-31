class CreateClubs < ActiveRecord::Migration[7.0]
  def change
    create_table :clubs do |t|
      t.string :name
      t.integer :year
      t.string :country

      t.timestamps
    end
  end
end
