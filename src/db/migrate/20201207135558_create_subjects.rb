## create subjects table

class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|

      t.timestamps
    end
  end
end
