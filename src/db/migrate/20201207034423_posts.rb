## posts data table

class Posts < ActiveRecord::Migration[6.0]
  def change

    def self.up
      create_table :posts do |t|
        ## fields for posts table
        t.column :title, :string, :limit => 32, :null => false
        t.column :entry, :text
        t.column :subject, :string
        t.column :post_id, :timestamp
      end
   end

   def self.down
      drop_table :posts
   end

  end
end
