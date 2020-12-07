## subjects data table

class Subjects < ActiveRecord::Migration[6.0]
  def change

    def self.up
      create_table :subjects do |t|
        ## fields for subjects table
        t.column :name, :string
      end
      ## premade entries for subjects table
      Subject.create :name => "Chemistry"
      Subject.create :name => "Math"
      Subject.create :name => "Compsci"
    end

    def self.down
      drop_table :subjects
    end

  end
end
