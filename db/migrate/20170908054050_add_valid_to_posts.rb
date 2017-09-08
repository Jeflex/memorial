class AddValidToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :val, :boolean
  end
end
