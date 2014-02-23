class CreateOuts < ActiveRecord::Migration
  def change
    create_table :outs do |t|
      t.string :kind
      t.string :descrp

      t.timestamps
    end
  end
end
