class CreateFeedings < ActiveRecord::Migration
  def change
    enum kind: [ :breast, :formular ]
    create_table :feedings do |t|
      t.integer :kind
      t.integer :volumn

      t.timestamps
    end
  end
end
