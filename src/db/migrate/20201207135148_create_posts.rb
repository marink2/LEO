## create posts table

class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.column :title, :string, :limit => 32, :null => false
      t.column :entry, :text
      t.column :subject, :string
      t.column :post_id, :timestamp
      t.timestamps
    end
  end
end
