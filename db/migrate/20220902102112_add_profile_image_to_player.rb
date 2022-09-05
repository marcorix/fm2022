class AddProfileImageToPlayer < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :profile_image, :string
  end
end
