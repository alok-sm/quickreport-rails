class AddTpicurlToPost < ActiveRecord::Migration
  def change
    add_column :posts, :tpicurl, :string
  end
end
