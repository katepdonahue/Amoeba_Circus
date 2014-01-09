class Amoebas < ActiveRecord::Migration
  def change
    create_table :amoebas do |t|
      t.text :name
      t.integer :generation
      t.integer :talent_id
      t.integer :act_id

      t.timestamps
    end
  end
end
