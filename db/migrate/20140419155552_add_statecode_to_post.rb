class AddStatecodeToPost < ActiveRecord::Migration
  def change
    add_column :posts, :statecode, :string
  end
end
