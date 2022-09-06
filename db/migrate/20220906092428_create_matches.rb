class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.references :home_player, foreign_key: { to_table: :users }
      t.references :away_player, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
