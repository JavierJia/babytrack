class CreateOuts < ActiveRecord::Migration
  def change
    enum kind: [ :poop, :pee]
    create_table :outs do |t|
      t.integer :kind
      t.string :descrp

      t.timestamps
    end
  end
end
