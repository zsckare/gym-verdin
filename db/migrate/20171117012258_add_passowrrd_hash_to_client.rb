class AddPassowrrdHashToClient < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :password_hash, :string
    add_column :coaches, :password_hash, :string
  end
end
