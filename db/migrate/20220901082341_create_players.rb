class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :club
      t.string :nationality
      t.string :role
      t.integer :age
      t.integer :value

      t.timestamps
    end
  end
end
