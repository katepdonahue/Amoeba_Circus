class Talents < ActiveRecord::Migration
  def change
    create_table :talents do |t|
      t.text :name

      t.timestamps
    end
  end
end
