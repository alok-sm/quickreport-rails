class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :description
      t.float :lattitude
      t.float :longitude

      t.timestamps
    end
  end
end
