class CreateFeedings < ActiveRecord::Migration
  def change
    create_table :feedings do |t|
      t.string :kind
      t.integer :volumn

      t.timestamps
    end
  end
end
